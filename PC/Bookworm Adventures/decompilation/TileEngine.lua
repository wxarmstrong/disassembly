











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
1.,
1.5,
2.,
2.75,
3.5,
4.5,
5.5,
6.75,
8.,
9.5,
11.,

13.}






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





function TileEngine:GetPtrFromTable(t)
{



		return ptr
	}

	return nil
}









function TileEngine:GetWordValue(ttTable)
{
	lValue = 0;

	for k,v in ttTable
	{

		lTileValue = LETTER_BONUSES[v.mLetter] + 1;


		lTileValue = v.ModifyValue(lTileValue);

		if (0 < lTileValue)
			lValue += lTileValue;
	}

	return lValue;
}

function TileEngine:GetLexWordIndicatorIndex(ttTable)
{
	lValue = 0;

	for k,v in ttTable
	{

		lTileValue =  LETTER_BONUSES[v.mLetter] + 1;


		lTileValue = v.ModifyValue(lTileValue);

		if (0 < lTileValue)
			lValue += lTileValue; 
	}


	lAdditive = 0;
	for k,v in ttable
		lAdditive += v.ApplyBonus(lValue);

	lValue += lAdditive;
	
	return int(lValue);
}







function TileEngine:GetFullWordValue(ttTable)
{
	if (gBattleEngine == nil)
		return
	
	lLength = gBattleEngine.GetWordValue(ttTable)


	lLength = (int)math.round(lLength);
	if (16 < lLength) lLength = 16;


	lBaseDamage = nil
	if (lLength == 0)
		lBaseDamage = 0.
	else
		lBaseDamage = gDamageByWordLength[lLength - 1]


	lAdditive = 0
	for k,v in tt
	
		lAdditive += v.ApplyBonus(lBaseDamage)



	if (lAdditive == 0)
		lAdditive = common.DecimalCeil(lAdditive, 0.25)


	lBaseDamage = gBattleEngine.mPlayerPtr.mOffenseBonusPct * (lBaseDamage + lAdditive);     

	if (lBaseDamage < 0) lBaseDamage = 0;

	return lBaseDamage, lLength
}







function TileEngine:ChangeLetter(t, c)
{
	ttable = gTileTable[t];

	ttable.mLetter = c;
	ttable.mLetterWidth = ttable.StringWidth(c)
	ttable.mLetterAscent = ttable.GetAscent(c)
	

	if (LETTER_BONUSES[c] <= 0)
		ttable.mPipCel = 0
	elseif (LETTER_BONUSES[c] < 0.75)
		ttable.mPipCel = 1
	else
		ttable.mPipCel = 2
}






function TileEngine:CanSelect()
{








































}





function TileEngine:IsBonus(t)
{
	return gTileTable[t].IsBonus();
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