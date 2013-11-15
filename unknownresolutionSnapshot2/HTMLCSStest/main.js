/*
TasmanianDevils-Project-1-Snapshot-2
Unknown resolution test code
Taken from previous CS411 Assignments
*/

function drawPic(){
  var theSky = new sky(0,0);
  var aTree = new tree(60,180);
  var theSun = new sun(530,200);
  var theGround =  new ground(0,0);
  var theLake = new lake(0,0);

  drawSky(0,0);
  drawSun(theSun.a,theSun.b);
  drawGround(theGround.a,theGround.b);
  drawTree(60,180);
  drawLake(theLake.a,theLake.b)
  }
  drawPic();
}


