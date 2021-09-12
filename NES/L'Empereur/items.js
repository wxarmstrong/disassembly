var gameData = [
	{
		title: "Function summaries",
		url: "Function summaries.txt"
	},
	{
		title: "RAM map",
		url: "https://docs.google.com/spreadsheets/d/1LUEiZuZ8DJM0pSq_sfAY0d8AIatBQwbaY74PAdy7Avw"
	},
	{
		title: "Page E0",
		url: "Page E0 (AB).txt"
	},	
	{
		title: "Page E1",
		url: "Page E1 (89).txt"
	},	
	{
		title: "Page E2",
		url: "Page E2 (AB).txt"
	},	
	{
		title: "Page E3",
		url: "Page E3 (AB).txt"
	},	
	{
		title: "Page E4",
		url: "Page E4 (AB).txt"
	},	
	{
		title: "Page E4",
		url: "Page E4 (AB).txt"
	},
	{
		title: "Page E5",
		url: "Page E5 (AB).txt"
	},
	{
		title: "Page E6",
		url: "Page E6 (AB).txt"
	},
	{
		title: "Page E7",
		url: "Page E7 (AB).txt"
	},
	{
		title: "Page E8",
		url: "Page E8 (AB).txt"
	},
	{
		title: "Page E9",
		url: "Page E9 (AB).txt"
	},
	{
		title: "Page EA",
		url: "Page EA (89).txt"
	},
	{
		title: "Page EB",
		url: "Page EB (AB).txt"
	},
	{
		title: "Page EC",
		url: "Page EC (AB).txt"
	},
	{
		title: "Page ED",
		url: "Page ED (89).txt"
	},
	{
		title: "Page EE",
		url: "Page EE (AB).txt"
	},
	{
		title: "Page EF",
		url: "Page EF (89).txt"
	},
	
]

var games = [];

for (var i=0; i<gameData.length; i++){
	curGame = gameData[i];
	games[games.length] = curGame.title;
}