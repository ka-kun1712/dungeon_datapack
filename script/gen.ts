import path from "node:path";

import { gen_equipment_loot_tables, gen_item_loot_tables } from "./functions";

export const ROOT_DIR = "../";
export const LOOT_TABLE_PATH = "gen";
export const NAMESPACE = "dun";

export const LOOT_TABLE_DIR = path.join(
  ROOT_DIR,
  `data/${NAMESPACE}/loot_table`,
  LOOT_TABLE_PATH,
);

export const ITEMS_FILE_PATH = "items.json";

export const PICKUP_DIR = "pickup";
export const NORMAL_FILENAME = "normal.json";
export const RARE_FILENAME = "rare.json";

export const EQUIPMENTS_FILE_PATH = "equipments.json";

export const DEFAULT_NAME = "?????";

(async function () {
  gen_item_loot_tables();
  gen_equipment_loot_tables();
})();
