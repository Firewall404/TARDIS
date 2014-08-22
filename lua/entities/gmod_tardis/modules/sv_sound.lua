ENT:AddHook("Initialize", "Playsound", function(self)

     self.idlesound=CreateSound(self,"newtardis/tardis_idle1_loop.wav")
        if IsValid(self) then
			self.idlesound:Play()
		self.idlesound:ChangeVolume(0.2,0)
	end	    		
end)					
	
ENT:AddHook("Use", "Doorsounds", function(self,a,c)
		if a:KeyDown(IN_WALK) then
			if self:GetNetVar("doorstate",false) then
		self.interior.portals[2]:EmitSound("newtardis/door_open.mp3")
		self:EmitSound("newtardis/door_open.mp3")
			else
		self.interior.portals[2]:EmitSound("newtardis/door_close.mp3")
		self:EmitSound("newtardis/door_close.mp3")
		end
	end
end)

ENT:AddHook("OnRemove", "Playsound", function(self)
	self.idlesound:Stop()
	self.idlesound = nil
end)
