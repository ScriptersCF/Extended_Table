-- | slice | 

local insert = table.insert

---@param tbl table "table to slice"
---@param start number "start position of the slice"
---@param stop number "stop position of the slice"
---@param step number "step of the slice"
---@return table "sliced table"
return function(tbl, start, stop, step)
  local ret = {}
  for i = start or 1, stop or #tbl, step or 1 do
    insert(ret, tbl[i])
  end
  return ret
end
