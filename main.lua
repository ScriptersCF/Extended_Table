local Funcs = script.Parent:WaitForChild("funcs")

local function GetLib()
	local String = {}
	for i, v in pairs(string) do
		String[i] = v
	end
	for i, v in pairs(Funcs:GetChildren()) do
		String[v.Name] = require(v)
	end
	return String
end

return GetLib()
