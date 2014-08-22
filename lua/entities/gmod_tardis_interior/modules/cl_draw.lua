
surface.CreateFont( "Console", 
                    {
                    font    = "Tahoma",
                    size    = ScreenScale(27),
                    weight  = 500,
                    antialias = true,
                    shadow = false
            })
			
surface.CreateFont( "Exterior", 
                    {
                    font    = "Tahoma",
                    size    = ScreenScale(14),
                    weight  = 600,
                    antialias = true,
                    shadow = false
            })

function ENT:Draw()                                             
	cam.Start3D2D( self:LocalToWorld(Vector(7,-90,140)), self:LocalToWorldAngles(Angle(0,60,90)), 0.1 )
	
		surface.SetDrawColor( 0, 0, 0, 255) 
		surface.DrawRect(891, -244, -4 - 322, 168 )
		surface.SetTextColor( 0, 255, 0, 255 )
		surface.SetTextPos( 650, -185 )
		surface.SetFont("Console")
		surface.DrawText("Console")
		surface.SetTextPos(582, -120 )
		surface.SetTextColor(0,255,0)
		surface.SetFont("Exterior")
		surface.DrawText("Exterior")
		surface.SetDrawColor(0,255,0,255)
		surface.DrawLine( 655, -150, 585, -150 )
		surface.DrawLine( 585, -115, 585, -150 )	
	cam.End3D2D()
end
