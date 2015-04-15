function init()
  if self.waterLevel == nil then
		self.waterLevel = 0
		else end
	pos = entity.position()
	self.tickTimer = 30
end

function update()
	self.tickTimer = self.tickTimer - dt
	if self.tickTimer <= 0 then
		self.tickTimer = 30
		if self.waterLevel < 500 then
			consumeLiq(pos)
		else end
	world.logInfo(tostring(self.waterLevel))
	end
end



function consumeLiq(pos)
	world.destroyLiquid({pos[1], pos[2]-2})
	self.waterLevel = self.waterLevel + 100
end