function init()
local pos = entity.position()
end

function update()
	local pos = entity.position()
	if world.liquidAt({pos[1], pos[2]+2}) == nil then
	entity.smash()
	end
end