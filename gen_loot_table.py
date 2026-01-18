from typing import Optional

import json

LT_DIR = "data/dun/loot_table"
ALL_LT_FILE = "all_items.json"


def main():
    with open("items.json") as f:
        table = json.load(f)

    all_lt_data = {"pools": []}

    for v in table["items"]:
        # gen lt
        loot_table_str = gen_lt(v["id"], v["tier"], v["price"], v["name"], v["lore"])
        formatted_id = str(v["id"]).removeprefix("minecraft:")
        with open(f"{LT_DIR}/items/{formatted_id}.json", mode="w") as f:
            json.dump(loot_table_str, f, indent=2, ensure_ascii=False)

        all_lt_data["pools"].append({"rolls": 1, "entries": [{"type": "loot_table", "value": f"dun:items/{formatted_id}"}]})

    with open(f"{LT_DIR}/{ALL_LT_FILE}", mode="w") as f:
        json.dump(all_lt_data, f, indent=2, ensure_ascii=False)


def gen_lt(id, tier: int, price: int, name: str, lore: object) -> Optional[dict[str]]:
    if id is None:
        print("id is None")
        return None

    if tier is None:
        print("tier is None")
        tier = 1

    if price is None:
        print("price is None")
        return None

    data = {
        "pools": [
            {
                "rolls": 1,
                "entries": [
                    {
                        "type": "minecraft:item",
                        "name": id,
                        "functions": [
                            {
                                "function": "minecraft:set_components",
                                "components": {"minecraft:custom_data": {"looting": {"tier": tier, "price": price}}},
                            }
                        ],
                    }
                ],
            }
        ]
    }

    if name is None or name == "":
        print("name is None")
    else:
        data["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:custom_name"] = name

    if lore is None or lore == "":
        print("lore is None")
    else:
        data["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:lore"] = [lore]

    return data


main()
