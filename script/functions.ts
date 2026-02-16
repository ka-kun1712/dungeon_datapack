import fs from "node:fs/promises";
import path from "node:path";

import {
  DEFAULT_NAME,
  EQUIPMENTS_FILE_PATH,
  ITEMS_FILE_PATH,
  LOOT_TABLE_DIR,
  LOOT_TABLE_PATH,
  NAMESPACE,
  NORMAL_FILENAME,
  PICKUP_DIR,
  RARE_FILENAME,
} from "./gen";

import {
  Item,
  ItemEntry,
  ItemsTable,
  LootTable,
  LootTableEntry,
  LootTableFunction,
} from "./types";

export async function gen_item_loot_tables() {
  try {
    const table: ItemsTable = JSON.parse(
      await fs.readFile(ITEMS_FILE_PATH, "utf-8"),
    );

    const normal_pickup_loot_table: LootTable<LootTableEntry> = {
      pools: [{ rolls: 1, entries: [] }],
    };
    const rare_pickup_loot_table: LootTable<LootTableEntry> = {
      pools: [{ rolls: 1, entries: [] }],
    };

    for (const v of table.items) {
      const loot_table = gen_item_loot_table(v);
      if (!loot_table) continue;

      const file_path = path.join(
        LOOT_TABLE_DIR,
        "items",
        `${v.file_name}.json`,
      );

      await fs.mkdir(path.dirname(file_path), { recursive: true });

      await fs.writeFile(
        file_path,
        JSON.stringify(loot_table, null, 2),
        "utf-8",
      );

      normal_pickup_loot_table.pools[0].entries.push({
        type: "loot_table",
        value: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${v.file_name}`,
        weight: v.weight,
        quality: 1,
      });

      if (v.rare_weight && 1 <= v.rare_weight) {
        rare_pickup_loot_table.pools[0].entries.push({
          type: "loot_table",
          value: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${v.file_name}`,
          weight: v.rare_weight,
          quality: 1,
        });
      }
    }

    await fs.mkdir(
      path.dirname(path.join(LOOT_TABLE_DIR, PICKUP_DIR, NORMAL_FILENAME)),
      {
        recursive: true,
      },
    );

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, PICKUP_DIR, NORMAL_FILENAME),
      JSON.stringify(normal_pickup_loot_table, null, 2),
      "utf-8",
    );

    await fs.mkdir(
      path.dirname(path.join(LOOT_TABLE_DIR, PICKUP_DIR, RARE_FILENAME)),
      {
        recursive: true,
      },
    );

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, PICKUP_DIR, RARE_FILENAME),
      JSON.stringify(rare_pickup_loot_table, null, 2),
      "utf-8",
    );

    console.log("Done");
  } catch (err) {
    console.error("Error:", err);
  }
}

function gen_item_loot_table(v: Item) {
  const { file_name, id, tier, price, name, lore, fn } = v;

  if (!tier || !price || !name) {
    console.log("Missing required fields at:", id);
    return;
  }

  const fmt_name =
    typeof name === "string" ? { text: name, color: "white" } : name;

  let data: LootTable<ItemEntry> = {
    pools: [
      {
        rolls: 1,
        entries: [
          {
            type: "minecraft:item",
            name: "minecraft:" + id,
            functions: [
              {
                function: "minecraft:set_components",
                components: {
                  "minecraft:custom_name": {
                    text: DEFAULT_NAME,
                    italic: false,
                  },
                  "minecraft:item_name": "",
                  "minecraft:rarity": "common",
                },
              },
              {
                function: "minecraft:set_custom_data",
                tag: {
                  looting: {
                    tier: tier,
                    name: fmt_name,
                  },
                  money: {
                    price,
                  },
                  loot_table: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${file_name}`,
                },
              },
            ],
          },
        ],
      },
    ],
  };

  if (lore && lore.length != 0 && lore[0] != "") {
    data.pools[0].entries[0].functions[1].tag.looting.lore = lore;
  }

  if (fn.length != 0) {
    data.pools[0].entries[0].functions =
      data.pools[0].entries[0].functions.concat(fn);
  }

  data = merge_functions(data);

  console.log("generate", id, "\n");

  return data;
}

export async function gen_equipment_loot_tables() {
  try {
    const table: ItemsTable = JSON.parse(
      await fs.readFile(EQUIPMENTS_FILE_PATH, "utf-8"),
    );

    const normal_pickup_loot_table: LootTable<LootTableEntry> = {
      pools: [{ rolls: 1, entries: [] }],
    };

    for (const v of table.items) {
      const loot_table = gen_item_loot_table(v);
      if (!loot_table) continue;

      const file_path = path.join(
        LOOT_TABLE_DIR,
        "equipments",
        `${v.file_name}.json`,
      );

      await fs.mkdir(path.dirname(file_path), { recursive: true });

      await fs.writeFile(
        file_path,
        JSON.stringify(loot_table, null, 2),
        "utf-8",
      );

      normal_pickup_loot_table.pools[0].entries.push({
        type: "loot_table",
        value: `${NAMESPACE}:${LOOT_TABLE_PATH}/equipments/${v.file_name}`,
        weight: v.weight,
        quality: 1,
      });
    }

    await fs.mkdir(
      path.dirname(path.join(LOOT_TABLE_DIR, "gacha", NORMAL_FILENAME)),
      {
        recursive: true,
      },
    );

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, "gacha", NORMAL_FILENAME),
      JSON.stringify(normal_pickup_loot_table, null, 2),
      "utf-8",
    );

    console.log("Done");
  } catch (err) {
    console.error("Error:", err);
  }
}

function merge_functions(data: LootTable<ItemEntry>) {
  const map: Map<string, LootTableFunction> = new Map();

  for (const [i, entry] of data.pools[0].entries[0].functions.entries()) {
    if (
      entry.function === "minecraft:set_components" ||
      entry.function === "set_components"
    ) {
      map.set(entry.function, {
        function: "minecraft:set_components",
        components: {
          ...map.get(entry.function)?.components,
          ...entry.components,
        },
      });
    } else if (
      entry.function === "minecraft:set_custom_data" ||
      entry.function === "set_custom_data"
    ) {
      map.set(entry.function, {
        function: "minecraft:set_custom_data",
        tag: {
          ...map.get(entry.function)?.tag,
          ...entry.tag,
        },
      });
    } else {
      map.set(entry.function, {
        ...map.get(entry.function),
        ...entry,
        function: entry.function,
      });
    }
  }

  let out = data;
  out.pools[0].entries[0].functions = map.values().toArray();

  return out;
}
