function init()

  self.tickDamagePercentage = 0.01
  self.tickTime = 3.0
  self.tickTimer = self.tickTime
  effect.duration()
end

function update(dt)
  self.tickTimer = self.tickTimer - dt
  if self.tickTimer <= 0 then
    self.tickTimer = self.tickTime
    status.applySelfDamageRequest({
        damageType = "IgnoresDef",
        damage = math.floor(status.resourceMax("health") * self.tickDamagePercentage) + 1,
        damageSourceKind = "poison",
        sourceEntityId = entity.id()
      })
	  end
	end

function uninit()
  
end