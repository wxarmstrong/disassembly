

function VowelToConsonantEffect:Init(arg)
{






}



function VowelToConsonantEffect:Copy(effect)
{





}





function VowelToConsonantEffect:Apply(creature)
{
	lBoardTiles = gBoard.getRandomizedTiles();



	lCounter = mNumToChange;
	for idx, tile in lBoardTiles
	{
		lTileTable = gTileTable[tile];
		if ( common.ValInTable(lTileTable.mLetter, VOWELS) )
		{
			lNewLetter = CONSONANTS[math.mod(sexy.NextRand(CONSONANTS.n))];

			gTileEngine.ChangeLetter(tile, lNewLetter);

			lTileTable.SetOverlayPAM(gTileOverlayPAMs["voweltoconsonant"]);

			lCounter -= 1;

			if (lCounter <= 0) break;

			if (TIMED MODE)
			{
				gBoard.CheckIfWordStillValid()
	
			return}
		}
	}






}

function VowelToConsonantEffect:LoadResources()
{
	gTileOverlayPAMS["voweltoconsonant"] = PAMAnimator.new("images/pam/fx_confuse.pam")
}