ENT:AddHook("Initialize", "Playsound", function(self)
 self.intidlesound=CreateSound(self,"newtardis/tardis_idle1_loop.wav")
        if IsValid(self) then
			self.intidlesound:Play()
	end	    		
end)					
	
ENT:AddHook("Use", "Doorsounds", function(self,a,c)
		if a:KeyDown(IN_WALK) then
			if self.exterior:GetNetVar("doorstate",false) then
		self.portals[2]:EmitSound("newtardis/door_open.mp3")
		self.exterior:EmitSound("newtardis/door_open.mp3")
			else
		self.portals[2]:EmitSound("newtardis/door_close.mp3")
		self.exterior:EmitSound("newtardis/door_close.mp3")

		end
	end
end)

ENT:AddHook("OnRemove", "Playsound", function(self)
	self.intidlesound:Stop()
	self.intidlesound = nil
end)

