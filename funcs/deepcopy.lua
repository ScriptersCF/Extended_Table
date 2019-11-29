-- | deepcopy | completely copies a table

---@param tbl table "the table to be deep copied"
---@return table "the new deep copy of the provided table"
local function deepcopy(tbl)
  local ret = {}
  for k, v in pairs(tbl) do
    ret[k] = type(v) == 'table' and deepcopy(v) or v
  end
  return ret
end
return deepcopy
