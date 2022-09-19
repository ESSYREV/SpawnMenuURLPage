local URL = "https://www.google.com/"
local name = "browser" 

hook.Add( name, "AddPostProcess", function( pnlContent, tree, node )


	local node = tree:AddNode( "test", "icon16/picture.png" )
	local parent1 = node:GetParent()
	local parent2 = parent1:GetParent()
	local parent3 = parent2:GetParent()
	local parent4 = parent3:GetParent()
	local parent5 = parent4:GetParent()
	local parent6 = parent5:GetParent()
	parent4:Remove()


local html = vgui.Create("DHTML", parent6)
html:Dock(FILL)
html:OpenURL(URL)

	local FirstNode = tree:Root():GetChildNode( 0 )
	if ( IsValid( FirstNode ) ) then
		FirstNode:InternalDoClick()
	end

end )

spawnmenu.AddCreationTab(name, function()

	local ctrl = vgui.Create( "SpawnmenuContentPanel" )
	ctrl:CallPopulateHook( name )
	return ctrl

end, "icon16/picture.png", 100 )

