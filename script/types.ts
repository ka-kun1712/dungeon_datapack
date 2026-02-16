export interface Item {
  file_name: string;
  id: string;
  tier: number;
  price: number;
  weight: number;
  rare_weight?: number;
  name: string | object;
  lore?: (string | object)[];
  fn: LootTableFunction[];
}

export interface ItemsTable {
  items: Item[];
}

export interface LootTable<T> {
  pools: {
    rolls: number;
    entries: T[];
  }[];
}

export interface ItemEntry {
  type: string;
  name: string;
  functions: LootTableFunction[];
  weight?: number;
  quality?: number;
}

export interface LootTableEntry {
  type: string;
  value: string;
  weight?: number;
  quality?: number;
}

export interface LootTableFunction {
  function: string;
  [key: string]: any;
}
