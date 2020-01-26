-- | deepcopy | completely copies a table

---@param tbl table "the table to be deep copied"
---@param seen table "the set of tables previously processed, optional"
---@return table "the new deep copy of the provided table"
local function deepcopy(tbl, seen)
  local ret = {}
  seen = seen or {}
  seen[tbl] = ret

  for k, v in pairs(tbl) do
    if type(v) == 'table' then
      if not seen[v] then
        seen[v] = deepcopy(v, seen)
      end
      ret[k] = seen[v]
    else
      ret[k] = v
    end
  end
  return ret
end
return deepcopy
