class Board(...)










function x(theCObj)
{
	new LuaWidget(theCObj) -- ???




    -- ...



	return anObj
}



function Board:MouseDown(x, y, theBtnNum, theClickCount)
{
	mMouseX, mMouseY = x, y
	
	if (gbe ~= nil){
		gBattleEngine:MouseDown(x, y, theBtnNum, theClickCount)
	}
	
}

function Board:MouseUp(x, y, theBtnNum, theClickCount)
{
	gbe = gBattleEngine
	
	mOrgMouseX = -1
	mOrgMouseY = -1

	-- ???

	if (gbe == nil)
		return

	gbe:MouseUp(x, y, theBtnNum, theClickCount)
	gBoard:RehupMouse()
}


















































































function Board:Destructor(){

}

RegisterLinkedConstructor( "Board", Board:NewCObject() )
setprot(Board)