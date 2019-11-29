local Funcs = script.Parent:WaitForChild("funcs")

local function GetLib()
	local Table = {}
	for i, v in pairs(table) do
		Table[i] = v
	end
	for i, v in pairs(Funcs:GetChildren()) do
		Table[v.Name] = require(v)
	end
	return Table
end

return GetLib()
