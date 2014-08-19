ENT:AddHook("Initialize", "Playsound", function(self)

        self:EmitSound("newtardis/tardis_powerup.mp3")
        self.intidlesound=CreateSound(self,"newtardis/tardis_idle1_loop.wav")
			timer.Create("inttardisidle",2,1,function()
                if IsValid(self) then
						self.intidlesound:Play()
                end	    
        end)			
end)					
	

ENT:AddHook("OnRemove", "Playsound", function(self)
        if timer.Exists("inttardisidle") then
                timer.Remove("inttardisidle")
		end
	self.intidlesound:Stop()
	self.intidlesound = nil
end)
