from typing import Optional

import json
import os

OUTDIR = "data/dun/loot_table/items"


def main():
    with open("items.json") as f:
        table = json.load(f)

    if not os.path.exists(OUTDIR) and not os.path.isdir(OUTDIR):
        os.makedirs(OUTDIR)

    for v in table["items"]:
        # gen lt
        loot_table_str = gen_lt(v["id"], v["tier"], v["name"], v["lore"])
        formatted_id = str(v["id"]).removeprefix("minecraft:")
        with open(f"{OUTDIR}/{formatted_id}.json", mode="w") as f:
            json.dump(loot_table_str, f, indent=2)


def gen_lt(id, tier: int, name: str, lore: object) -> Optional[dict[str]]:
    if id is None:
        return None

    if tier is None:
        print("tier is None")
        tier = 1

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
                                "components": {"minecraft:custom_data": {"dun": {"tier": tier}}},
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
        data["pools"][0]["entries"][0]["functions"].append({"function": "minecraft:set_name", "name": name})

    if lore is None or lore == "":
        print("lore is None")
    else:
        data["pools"][0]["entries"][0]["functions"][0]["components"]["minecraft:lore"] = [lore]

    return data


main()
