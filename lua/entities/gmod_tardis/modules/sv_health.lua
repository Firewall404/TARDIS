ENT.TardisHealth = 100 
 
function ENT:OnTakeDamage(dmg)
    self:TakePhysicsDamage(dmg)
		if(self.TardisHealth <= 0) then return end 
			self.TardisHealth = self.TardisHealth - dmg:GetDamage()
			
		if(self.TardisHealth <= 75) then
			self.interior:EmitSound("newtardis/Emergency.wav")
			
		end
end
      