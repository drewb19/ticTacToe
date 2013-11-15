/*
Test/Layout of the Game logic. 

Basic things here:

Board structure. 

Legal move testing.

Win-Loss-Tie checking.


I realize that this code is far from implemented. Going to do my best.
*/

var board = [[0,0,0],[0,0,0],[0,0,0]];

var X = 1; //static variables?
var O = 2; //static variables?

//The canvas has an id of "GameBoard"

/*
Input: e is an event. Used to get the mouse coordinates.
Output: True if the mouse is on the canvas, false if it is not.

Note: This function may not be necessary in the final build, but is here as insurance.
*/
function mouseOnBoard(e) {
	var x = e.clientX - document.getElementById("GameBoard").offsetLeft;
	var y = e.clientY - document.getElementById("GameBoard").offsetTop + window.scrollY;
	if(((x > 0) && (x < 600)) && ((y > 0)&&(y < 600))){
		return true;
	}else{
		return false;
	}
}

/*
Prereq: A true value from mouseOnBoard(e)
Input: e is an event. Used to get the mouse coordiantes.
Output: The coordinates of the selected square. (x,y)
*/
function squareSelected(e){
	var coor = [0,0];
	var x = e.clientX - document.getElementById("GameBoard").offsetLeft;
	var y = e.clientY - document.getElementById("GameBoard").offsetTop + window.scrollY;
	if(x > 400){
		coor[0] = 2;
	}else if(x > 200){
		coor[0] = 1;
	}else{
		coor[0] = 0;
	}
	if(y > 400){
		coor[1] = 2;
	}else if(y > 200){
		coor[1] = 1;
	}else{
		coor[1] = 0;
	}
	return coor;
}

/*
Input: square--coordinates of the move being attempted
Output: True if the move is legal, False if it is not.

*/
function legalMove(square){
	if(board[coor[0]][coor[1]] == 0){
		return true;
	}else{
		return false;
	}
}

/*
Input: e--event, used for acquiring mouse coordinates. 
	   piece--the piece used by the current player
Output: None.
Side Effect: The move is made, play passing to next player, or an alert is made.
*/
function makeMove(e,piece){
	if(mouseOnBoard(e)){
		square = squareSelected(e);
		if(legalMove(square)){
			board[square[0]][square[1]] = piece;
			var result = checkVictory();
			if(result == 0){
				alert("The Game continues");
			}else if(result == X){
				alert("X wins!");
			}else if(result == O){
				alert("O wins!");
			}else{
				alert("It's a tie!");
			}
		}else{
			alert("Not a legal move.");
		}
	}
}

/*
Input: None explicitly, though uses board and piece
Output: 0 for false, 1 or 2 for victory of that piece, 3 for tie.
*/
function checkVictory(){
	//vertical wins
	for(var i = 0; i < 3; i ++){
		if(board[i][0] == board[i][1]){
			if(board[i][0] == board[i][2]){
				return board[i][0];
			}
	}
	i = 0;
	//horizontal wins
	for(; i < 3; i ++){
		if(board[0][i] == board[1][i]){
			if(board[0][i] == board[2][i]){
				return board[0][i];
			}
	}
	//diagonal wins
	if(board[0][0] == board[1][1]){
		if(board[0][0] == board[2][2]){
			return board[1][1];
		}
	}
	if(board[0][2] == board[1][1]){
		if(board[1][1] == board[2][0]){
			return board[1][1];
		}
	}
	i = 0;
	//check for open squares(no resolution)
	for(; i < 3; i ++){
		for(var j = 0; j < 3; j ++){
			if(board[i][j] == 0){
				return false;
			}
		}
	}
	return 3; //tie
}
