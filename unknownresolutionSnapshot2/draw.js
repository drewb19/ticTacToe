/*
TasmanianDevils-Project-1-Snapshot-2
Unknown resolution test code
Taken from previous CS411 Assignments
*/

function draw(){
  var canvas = document.getElementById("canvas");
  var g = canvas.getContext("2d");

  function sky(a,b) {
    sky1={ay:a,be:b}
    sky.prototype.render = function(g){
      a = sky1.ay;
      b = sky1.be;
      drawSky(a,b);
    }
  }

  function ground(a,b){
    ground1={ay:a,be:b}
    ground.prototype.render = function(g){
    a = ground1.ay;
    b = ground1.be;
    drawGround(a,b);
    }
  }

  function sun(a,b){
    sun1={ay:a,be:b}
    sun.prototype.render = function(g){
    a = sun1.ay;
    b = sun1.be;
    drawSun(a,b);
    }
  }

  function tree(a,b){
    tree1={ay:a,be:b}
    tree.prototype.render = function(g){
    a = tree1.ay;
    b = tree1.be;
    drawTree(a,b);
    }
  }

  function lake(a,b){
    lake1={ay:a,be:b}
    lake.prototype.render = function(g){
    a = lake1.ay;
    b = lake1.be;
    drawLake(a,b);
    }
  }

  function drawSky(x, y){
    g.fillStyle = "rgb(182,164,212)";
    g.fillRect(x,y,900,300);
    g.closePath();
  }

  function drawGround(x,y){
    g.fillStyle = "black";
    g.fillRect(0,300,800,600);
    g.closePath();
  }

  function drawSun(x,y){
    g.fillStyle = "rgb(255,126,0)";
    g.beginPath();
    g.arc(630,330,125,50,2*Math.PI);
    g.fill();
    g.closePath();

    var a = new Array(450,170,530,250,450,170,530,250,540,100,580,200,630,50,630,190,710,220,770,120,740,260,780,240);
    for (var i=0; i <= 20; i = i + 4){
      g.beginPath();
      g.strokeStyle = "rgb(255,126,0)";
      g.moveTo(a[i],a[i+1]);
      g.lineTo(a[i+2],a[i+3]);
      g.closePath();
      g.stroke();
      g.closePath();
    }
  }

  function drawTree(x,y,z){
    g.fillStyle = 'rgb(228,170,122'
    g.fillRect(x+45 + z, y+30, 50,120);
    g.beginPath();
    g.fillStyle = 'rgb(35,177,77'
    g.arc(x+z,y,x-30,y-180,Math.PI*2,true);
    g.fill();
    g.beginPath();
    g.fillStyle = 'rgb(35,177,77'
    g.arc(x+50 + z,y-20,35,0,Math.PI*2,true);
    g.fill();
    g.beginPath();
    g.fillStyle = 'rgb(35,177,77'
    g.arc(x+100 + z,y-20,30,0,Math.PI*2,true);
    g.fill();
    g.beginPath();
    g.fillStyle = 'rgb(35,177,77'
    g.arc(x+140 + z,y,30,0,Math.PI*2,true);
    g.fill();
  }

  function drawLake(x,y){
    g.beginPath();
    g.fillStyle = "rgb(77,110,243)";
    g.moveTo(410,450);
    g.bezierCurveTo(410,410,640,410,640,450);
    g.bezierCurveTo(640,490,410,490,410,450);
    g.fill();
    g.closePath();
  }

function drawSunset(){
  var theSky = new sky(0,0);
  var aTree = new tree(60,180);
  var theSun = new sun(530,200);
  var theGround =  new ground(0,0);
  var theLake = new lake(0,0);

  drawSky(0,0);
  drawSun(theSun.a,theSun.b);
  drawGround(theGround.a,theGround.b);
  drawTree(60,180,0);
  drawTree(60,180,200);
  drawLake(theLake.a,theLake.b)
  }
  drawSunset();
}
