ancient_bones.config = {}

local function setting(name, tp, default)
	local full_name = "ancient_bones." .. name
	local value
	
	value = tonumber(core.settings:get(full_name))
	local v, other = default:match("^(%S+) (.+)")
	default = value == nil and tonumber(other and v or default)

	if value == nil then
		value = default
		assert(default ~= nil, "Cannot parse default for " .. full_name)
	end
	
	ancient_bones.config[name] = value
end

local file = io.open(ancient_bones.modpath .. "/settingtypes.txt", "r")
for line in file:lines() do
	local name, tp, value = line:match("^ancient_bones%.(%S+) %(.*%) (%S+) (.*)")
	if value then
		setting(name, tp, value)
	end
end
file:close()
