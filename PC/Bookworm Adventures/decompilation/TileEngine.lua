











gTileTable = {}

class TileEngine(...){

























}

VOWELS     = {"A", "E", "I", "O", "U", "Y"}
CONSONANTS = {"B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"}

WORDPOWER_TEXT = {
"",
"",
"",
"",
"",
"GOOD!",
"WOW!",
"NICE!",
"VERY GOOD!",
"AWESOME!",
"EXCELLENT!",
"FANTASTIC!",

"ASTONISHING!"}

setprot(_G, "")
WORDPOWER_SOUNDS = {
nil,
nil,
nil,
nil,
nil,
"SOUND_LEX_GOOD",
"SOUND_LEX_WOW",
"SOUND_LEX_NICE",
"SOUND_LEX_VERYGOOD",
"SOUND_LEX_AWESOME",
"SOUND_LEX_EXCELLENT",
"SOUND_LEX_FANTASTIC",

"SOUND_LEX_ASTONISHING"}
setprot(_G)

gDamageByWordLength = {
0.25,
0.25,
0.5,
0.75,
1.0,
1.5,
2.0,
2.75,
3.5,
4.5,
5.5,
6.75,
8.0,
9.5,
11.0,

13.0}






function TileEngine:RegisterTile(t, c)
{
	lTile = gLinkedObjectTable[t]
	lTile.setLetter(c)

	lTile.mBaseAnim.SetImage("IMAGE_TILE_BASIC")
	lTile.mBaseAnim.mDrawFuncPtr = Tile:BaseAnimDraw
	lTile.mBaseAnim.mUpdateFuncPtr = Tile:BaseAnimUpdate
	lTile.mBaseAnim.mDraw = true
	lTile.mBaseAnim.mUpdate = true


	lTile.mBaseAnim.mOldBaseAnim = "IMAGE_TILE_BASIC"

	gTileTable[t] = lTile
	table.setn(gTileTable, table.getn(gTileTable) + 1)
}





function TileEngine:UnregisterTile(t){
	gTileTable[t] = nil
	table.setn(gTileTable, table.getn(gTileTable) - 1)
}






function TileEngine:GetPtrFromTable()
{







}









function TileEngine:GetWordValue()
{















}

function TileEngine:GetLexWordIndicatorIndex()
{






















}







function TileEngine:GetFullWordValue()
{

































}








function TileEngine:ChangeLetter()
{












}







function TileEngine:CanSelect()
{








































}






function TileEngine:IsBonus()
{
}





function TileEngine:RemoveBonusAttributes()
{











}









function TileEngine:TileXChanged()
{











}

function TileEngine:TileYChanged()
{











}

function TileEngine:TileXYChanged()
{

}





function TileEngine:StartRound()
{







}





function TileEngine:EndRound()
{


}





function TileEngine:Update()
{

































}











function TileEngine:Draw()
{









































































}







function TileEngine:GridNeedsPurification()
{





}






function TileEngine:PurifyTileGrid()
{


}








function TileEngine:WPParticleSetup()
{











}




function TileEngine:TileStartedMoving()
{







}






function TileEngine:TileStoppedMoving()
{























}





function TileEngine:AddOscillators()
{


























































}




function TileEngine:AddOscillator()
{





























}

function TileEngine:SubmitPressed()
{






}




function TileEngine:ValidWordSpelled()
{



























































































































































































}




function TileEngine:DeselectedAllTiles()
{







}






function TileEngine:SaveGridState()
{
















}




function TileEngine:RestoreGridState()
{







































}




function TileEngine:AwardMiniGameGems()
{


























































}





function TileEngine:Setup()
{

}



function TileEngine:DoWordPowerBubble()
{





























}

function TileEngine:SetShowTilePips()
{

}

function TileEngine:Destructor()
{
}

function TileEngine:HideTooltips()
{





}

function TileEngine:EnableTooltips()
{











}

function TileEngine:ComputePipCels()
{







}

function TileEngine:GetExtraLetterFreq (letter)
{
	


		val =



	}






}

RegisterLinkedClass("TileEngine",TileEngine)
