const letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                 "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
const freq = [557,116,79,187,667,89,130,86,460,35,23,186,111,
              264,351,123,26,304,269,281,286,81,75,23,144,23];

var value = [];
value["A"]=1;
value["B"]=1.25;
value["C"]=1.25;
value["D"]=1;
value["E"]=1;
value["F"]=1.25;
value["G"]=1;
value["H"]=1.25;
value["I"]=1;
value["J"]=1.75;
value["K"]=1.75;
value["L"]=1;
value["M"]=1.25;
value["N"]=1;
value["O"]=1;
value["P"]=1.25;
value["Q"]=2.75;
value["R"]=2;
value["S"]=1;
value["T"]=1;
value["U"]=1;
value["V"]=1.5;
value["W"]=1.5;
value["X"]=3;
value["Y"]=3;
value["Z"]=3;		

var custom = false;
var roundWords = [];
var roundWordTable = document.getElementById("roundWords");
var totalWords = [];
var totalWordTable = document.getElementById("totalWords");
var keepAlert = false;
var topDiv = document.getElementById("topDiv");
var boardLetters = "";
var alert = document.getElementById("alert");
var wordEntry = document.getElementById("wordEntry");

wordEntry.addEventListener("keyup", function(event) {
	// Number 13 is the "Enter" key on the keyboard
	if (event.keyCode === 13) {
	// Cancel the default action, if needed
	event.preventDefault();
	// Trigger the button element with a click
	document.getElementById("entryButton").click();
	}
});	  		

function newBoard(){
	
	if (keepAlert==false){
				alert.innerHTML = "&nbsp;";
			}
			keepAlert=false;
			var count = [];
			for (var i=0;i<letters.length; i++){
				count[letters[i]] = 0;
			}
			boardLetters = "";
			for (var i=1;i<=16;i++){
				var curCell = document.getElementById(i.toString());
				var passed = false;
				while (passed == false){
					var curLetter = getLetter();
					if (count[curLetter]!=4){
						passed = true;
						count[curLetter]++;
					}
				}
				boardLetters += curLetter;
				if (curLetter=="Q"){
					curLetter="Qu";
				}
				curCell.innerHTML = curLetter;
			}
			curMissedWords = [];
		}      
		
		function scramble() {
			custom = false;
			newBoard();
		}
	  
	function customBoard() {
		entry = "";
		while (entry.length != 16)
		{
			entry = prompt("Please enter 16 tiles (enter Qu as Q): ");
			if (entry==null)
			{
				return;
			}
		}
		
		custom = true;
		boardLetters = entry.toUpperCase();
	
		for (var i=1;i<=16;i++){
			var curCell = document.getElementById(i.toString());
			curCell.innerHTML = boardLetters[i-1];
		}
	}
		

      function getLetter(){
        var randNum = Math.floor(Math.random()*4976);
        var total = 0;
        for (var i=0;i<=25;i++){
          total += freq[i];
          if (randNum<total){
            return letters[i];
          }
        }
		return null;
      }	

		

	  function submitWord(){
		
		var wordString = wordEntry.value;
		wordString = pruneQ(wordString.toUpperCase());
		wordEntry.value = "";
		if (!wordValid(wordString)){
			alert.innerHTML = "Not a valid word!";
		}
		else if (!subanagram(wordString,boardLetters)){
			alert.innerHTML = "Those letters are not on the board!";
		}
		else{

			var curDamage = getDamage(wordString);

			

			findBetter(curDamage);

			

			wordString = addUtoQ(wordString);

			

			alert.innerHTML = "<b>" + wordString + "</b>: " + curDamage + " damage";

			

			if (isAdjective(pruneQ(wordString))){

				alert.innerHTML += " <b>(Adjective Bonus)<b>";

			}


			if (isVerb(pruneQ(wordString))){

				alert.innerHTML += " <b>(Verb Bonus)<b>";

			}


			if (roundWords.length==0){

				alert.innerHTML += " <b>(TOP WORD!)</b>";

			}

			keepAlert = true;

			if (custom) customBoard();
			else newBoard();

		}

	  }

	  

		function findBetter(damage){
			roundWords = [];
			for (var i=0;i<words.length;i++){
				curWord = words[i];
				if (subanagram(curWord,boardLetters)){
					curWordDamage = getDamage(curWord);
					if (curWordDamage > damage){
						var newEntry = {};
						newEntry.name = curWord;
						newEntry.damage = curWordDamage;
						roundWords[roundWords.length]=newEntry;
						var pos = posInList(curWord)
						if (pos!=-1){
							totalWords[pos].freq++;
						}
						else
						{
							newEntry.freq = 1;
							totalWords[totalWords.length]=newEntry;
						}
					}				
				}
			}

        while (roundWordTable.firstChild){
          roundWordTable.removeChild(roundWordTable.firstChild);
        }

		while (totalWordTable.firstChild){
          totalWordTable.removeChild(totalWordTable.firstChild);
        }

		sortByName(totalWords);

		sortByDamage(totalWords);

		sortByFreq(totalWords);

		

		sortByName(roundWords);

		sortByDamage(roundWords);

		

		console.log(roundWords);

		console.log(roundWords.length);

		

		for (var i=0;i<roundWords.length&&i<9;i++){
			var curWord = roundWords[i];
			var newRow = document.createElement("tr");
			var newWord = document.createElement("td");
			var newDmg = document.createElement("td");
			newWord.innerHTML = "<a href=\"http://en.wiktionary.org/wiki/" + addUtoQ(curWord.name).toLowerCase() + "\" target=\"_blank\">" + addUtoQ(curWord.name) + "</a>";
			newDmg.innerHTML = curWord.damage;
			if (isAdjective(curWord.name) || isVerb(curWord.name)){
				newWord.style.backgroundColor = "black";
				newWord.style.color = "yellow";
				newWord.style.border = "2px solid grey";
				newWord.innerHTML = "<a style=\"color: yellow\" href=\"http://en.wiktionary.org/wiki/" + addUtoQ(curWord.name).toLowerCase() + "\" target=\"_blank\">" + addUtoQ(curWord.name) + "</a>";
				newDmg.style.backgroundColor = "black";
				newDmg.style.color = "yellow";
				newDmg.style.border = "2px solid grey";
			}
			newRow.appendChild(newWord);
			newRow.appendChild(newDmg);
			roundWordTable.appendChild(newRow);
		}

		for (var i=0;i<totalWords.length&&i<12&&totalWords[i].freq>1;i++){

			var curWord = totalWords[i];

			var newRow = document.createElement("tr");

			var newFreq = document.createElement("td");

			var newWord = document.createElement("td");

			var newDmg = document.createElement("td");

			

			newFreq.innerHTML = curWord.freq;

			newWord.innerHTML = "<a href=\"http://en.wiktionary.org/wiki/" + addUtoQ(curWord.name).toLowerCase() + "\" target=\"_blank\">" + addUtoQ(curWord.name) + "</a>";

			newDmg.innerHTML = curWord.damage;

			

			if (isAdjective(curWord.name) || isVerb(curWord.name) ){

				newFreq.style.backgroundColor = "black";

				newFreq.style.color = "yellow";

				newFreq.style.border = "2px solid grey";

				newWord.style.backgroundColor = "black";

				newWord.style.color = "yellow";

				newWord.style.border = "2px solid grey";

				newWord.innerHTML = "<a style=\"color: yellow\" href=\"http://en.wiktionary.org/wiki/" + addUtoQ(curWord.name).toLowerCase() + "\" target=\"_blank\">" + addUtoQ(curWord.name) + "</a>";

				newDmg.style.backgroundColor = "black";

				newDmg.style.color = "yellow";

				newDmg.style.border = "2px solid grey";

			}

			

			

			newRow.appendChild(newWord);

			newRow.appendChild(newDmg);

			newRow.appendChild(newFreq);

			

			totalWordTable.appendChild(newRow);

		}

		}

			

	  function posInList(word){

		for (var i=0;i<totalWords.length;i++){

			if (totalWords[i].name==word){

				return i;

			}

		}

		return -1;

	  }			

	  

	  function getDamage(word){

		var length = 0;

		var damage;

		for (var i=0;i<word.length;i++){

			var curLetter = word.charAt(i);

			length += value[curLetter];

		}

		

		if (length>=16){

			damage = 13;

		}

		else if (length>=15){

			damage = 11;

		}

		else if (length>=14){

			damage = 9.5;

		}

		else if (length >=13){

			damage = 8;

		}

		else if (length >=12){

			damage = 6.75;

		}

		else if (length >=11){

			damage = 5.5;

		}

		else if (length >=10){

			damage = 4.5;

		}

		else if (length >=9){

			damage = 3.5;

		}

		else if (length >=8){

			damage = 2.75;

		}

		else if (length >= 7){

			damage = 2;

		}

		else if (length >= 6){

			damage = 1.5;

		}

		else if (length >= 5){

			damage = 1;

		}

		else if (length >= 4){

			damage = 0.75;

		}

		else {

			damage = 0.5;

		}

		if (isAdjective(word)){

			damage = Math.ceil(6.5 * damage)/4;

		}

		if (isVerb(word)){

			damage = Math.ceil(6.5 * damage)/4;
		}

		return damage;

	  }

	  

	  function pruneQ(word){

		var temp = word;

		for (var i=0;i<word.length;i++){

			temp = temp.replace(/QU/g, 'Q');

		}

		return temp;

	  }		

	  

function addUtoQ(word){
	var temp = "";
	for (var i=0;i<word.length;i++){
		var curLetter = word.charAt(i)
		temp = temp + curLetter;
		if (curLetter == "Q"){
			temp = temp + "u";
		}
	}
	return temp;
}	  

function wordValid(word){
	for (var i=0;i<words.length;i++){
		if (word==words[i]){
			return true;
		}
	}
	return false;
}	  

function subanagram(sub,full){
	var temp = full;
	for (var i=0;i<sub.length;i++){
		var curLetter = sub.charAt(i);
		if (letterIn(curLetter,temp)){
			temp = temp.replace(curLetter," ");
		}
		else{
			return false;
		}
	}
	return true;
}	   

	  

function letterIn(letter,full){
	for (var i=0;i<full.length;i++){
		if (full.charAt(i)==letter){
			return true;
		}
	}
	return false;
}	  

let binarySearch = function (arr, x) { 
    let start=0, end=arr.length-1; 
          
    // Iterate while start not meets end 
    while (start<=end){ 
  
        // Find the mid index 
        let mid=Math.floor((start + end)/2); 
   
        // If element is present at mid, return True 
        if (arr[mid]==x) return true; 
  
        // Else look in left or right half accordingly 
        else if (arr[mid] < x)  
             start = mid + 1; 
        else
             end = mid - 1; 
    } 
   
    return false; 
} 	  

function isAdjective(word){
	var adjOn = document.getElementById("t1");
	if (!adjOn.checked)
	{
		return false;
	}
	return binarySearch(adjectives, word);
}

function isVerb(word){
	var verbOn = document.getElementById("t2");
	if (!verbOn.checked)
	{
		return false;
	}
	return binarySearch(verbs, word);
}


const sortByName = (missedWords) => {
  return missedWords.sort(function(a, b){
    return b.name - a.name;
  });
}

const sortByDamage = (missedWords) => {
  return missedWords.sort(function(a, b){
    return b.damage - a.damage;
  });
}

const sortByFreq = (missedWords) => {
  return missedWords.sort(function(a, b){
    return b.freq - a.freq;
  });
}

// RUN WHEN PAGE LOADS
newBoard();