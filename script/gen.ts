import fs from "node:fs/promises";
import path from "node:path";

const ROOT_DIR = "../";

const LOOT_TABLE_DIR = path.join(ROOT_DIR, "data/dun/loot_table");
const ITEMS_FILE_PATH = "items.json";
const ALL_ITEMS_FILENAME = "all_items.json";
const DEFAULT_NAME = "?????";

interface Item {
  id: string;
  tier: number;
  price: number;
  name: string;
  lore?: string | object;
}

interface ItemsTable {
  items: Item[];
}

interface LootTable<T> {
  pools: {
    rolls: number;
    entries: [T];
  }[];
}

interface ItemEntry {
  type: string;
  name: string;
  functions: [any];
}

interface LootTableEntry {
  type: string;
  value: string;
}

async function main() {
  try {
    const table: ItemsTable = JSON.parse(
      await fs.readFile(ITEMS_FILE_PATH, "utf-8"),
    );

    const all_loot_table_data: LootTable<LootTableEntry> = { pools: [] };

    for (const v of table.items) {
      const loot_table = genLt(v.id, v.tier, v.price, v.name, v.lore);
      if (!loot_table) continue;

      const formatted_id = v.id.replace("minecraft:", "");
      const file_path = path.join(
        LOOT_TABLE_DIR,
        "items",
        `${formatted_id}.json`,
      );

      await fs.mkdir(path.dirname(file_path), { recursive: true });

      await fs.writeFile(
        file_path,
        JSON.stringify(loot_table, null, 2),
        "utf-8",
      );

      all_loot_table_data.pools.push({
        rolls: 1,
        entries: [{ type: "loot_table", value: `dun:items/${formatted_id}` }],
      });
    }

    await fs.writeFile(
      path.join(LOOT_TABLE_DIR, ALL_ITEMS_FILENAME),
      JSON.stringify(all_loot_table_data, null, 2),
      "utf-8",
    );

    console.log("Done");
  } catch (err) {
    console.error("Error:", err);
  }
}

function genLt(
  id: string,
  tier: number,
  price: number,
  name: string,
  lore: any,
) {
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
            name: id,
            functions: [
              {
                function: "minecraft:set_components",
                components: {
                  "minecraft:custom_data": {
                    looting: {
                      tier: tier ?? 1,
                      price,
                      name: { text: name, italic: false, color: "white" },
                    },
                  },
                  "minecraft:custom_name": JSON.stringify({
                    text: DEFAULT_NAME,
                    italic: false,
                  }),
                },
              },
            ],
          },
        ],
      },
    ],
  };

  if (lore) {
    data.pools[0].entries[0].functions[0].components[
      "minecraft:custom_data"
    ].looting.lore = [lore];
  }

  return data;
}

main();
