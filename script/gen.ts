import fs from "node:fs/promises";
import path from "node:path";

const ROOT_DIR = "../";
const LOOT_TABLE_PATH = "gen";
const NAMESPACE = "dun";

const LOOT_TABLE_DIR = path.join(
  ROOT_DIR,
  `data/${NAMESPACE}/loot_table`,
  LOOT_TABLE_PATH,
);
const ITEMS_FILE_PATH = "items.json";

const PICKUP_DIR = "pickup";
const NORMAL_FILENAME = "normal.json";
const RARE_FILENAME = "rare.json";

const DEFAULT_NAME = "?????";

interface Item {
  file_name: string;
  id: string;
  tier: number;
  price: number;
  normal_weight: number;
  rare_weight: number;
  name: string;
  lore?: (string | object)[];
  fn: object[];
}

interface ItemsTable {
  items: Item[];
}

interface LootTable<T> {
  pools: {
    rolls: number;
    entries: T[];
  }[];
}

interface ItemEntry {
  type: string;
  name: string;
  functions: any[];
  weight?: number;
  quality?: number;
}

interface LootTableEntry {
  type: string;
  value: string;
  weight?: number;
  quality?: number;
}

async function main() {
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
      const loot_table = genLt(v);
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
        weight: v.normal_weight,
        quality: 1,
      });

      if (1 <= v.rare_weight) {
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

function genLt(v: Item) {
  const { file_name, id, tier, price, name, lore, fn } = v;
  console.log(id);

  if (!id || !tier || !price || !name) {
    console.log("Missing required fields");
    return;
  }

  const data: LootTable<ItemEntry> = {
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
                  "minecraft:custom_data": {
                    looting: {
                      tier: tier,
                      name: { text: name, color: "white" },
                    },
                    money: {
                      price,
                    },
                    loot_table: `${NAMESPACE}:${LOOT_TABLE_PATH}/items/${file_name}`,
                  },
                  "minecraft:custom_name": {
                    text: DEFAULT_NAME,
                    italic: false,
                  },
                  "minecraft:item_name": "",
                  "minecraft:rarity": "common",
                },
              },
            ],
          },
        ],
      },
    ],
  };

  if (lore.length != 0 && lore[0] != "") {
    data.pools[0].entries[0].functions[0].components[
      "minecraft:custom_data"
    ].looting.lore = lore;
  }

  if (fn.length != 0) {
    data.pools[0].entries[0].functions =
      data.pools[0].entries[0].functions.concat(fn);
    console.log(fn);
  }

  return data;
}

main();
