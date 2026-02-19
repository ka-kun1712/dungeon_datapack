import { gen_equipment_loot_tables, gen_item_loot_tables } from "./functions";

(async function () {
  await gen_item_loot_tables();
  await gen_equipment_loot_tables();
})();
