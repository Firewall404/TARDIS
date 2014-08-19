ENT:AddHook("Initialize", "Playsound", function(self)

        self:EmitSound("newtardis/tardis_powerup.mp3")
        self.idlesound=CreateSound(self,"newtardis/tardis_idle1_loop.wav")
			timer.Create("tardisidle",2,1,function()
                if IsValid(self) then
						self.idlesound:Play()
                end	    
        end)			
end)					
	

ENT:AddHook("OnRemove", "Playsound", function(self)
        if timer.Exists("tardisidle") then
                timer.Remove("tardisidle")
		end
		
	self.idlesound:Stop()
	self.idlesound = nil
end)
