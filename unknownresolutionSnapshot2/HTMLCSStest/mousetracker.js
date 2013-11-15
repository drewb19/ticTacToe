/*
TasmanianDevils-Project-1-Snapshot-2
Unknown resolution test code
Taken from previous CS411 Assignments
*/

function myFunction(e){
  x=e.clientX;
  y=e.clientY;

  coor="Coordinates: (" + x + "," + y + ")";
  document.getElementById("demo").innerHTML=coor
  }

function clearCoor(){
  document.getElementById("demo").innerHTML="";
  }

