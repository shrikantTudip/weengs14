<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8" content="IE=edge,chrome=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="description" content="Weengs 2014: TPCT'S COE,Osmanabad presents Maharashtras Largest A National Technical Symposium"/>
    <meta name="keywords" content="facebook, google, fb, gmail, yahoo, ymail, technical symposium,Weengs, weengs, wings, wings2014, Weengs 2014, weengs14, Weengs14, weengs 2014, Weengs2k14, weengs2k14, wings14, Wings2014, wings2k14, national, technical, events, a natinal technational symposium, simposium, facebook/weengs14, 2014, 2k14, 14, 2014 events, twitter, google+, pragyaa, witchar, tultechfest, live score, modi, aap,we engineers,witchar,witech,gate,Gate2014 "/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="cache-control" content="public"/>
    <title>Home</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47934514-1', 'weengs14.in');
  ga('send', 'pageview');

</script>
<meta property="og:title" content="Weengs 2014 | A National Level Technical Symposium"/>
    <meta property="og:type" content="non_profit"/>
    <meta property="og:url" content="http://www.weengs14.in"/>
    <meta property="og:site_name" content="Weengs 2014">
    <meta property="og:description" content="Weengs 2014: A National Level Technical Symposium"/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
        <div class="header" style="height:210px;">
        <img alt="banner" src="img/weengs-banner.gif" height="200px" width="100%" />
        </div>
        <div class="content" style="height:560px;">
     <br /><br /><br />
        <div id="pixel">

<canvas id="canv" onmousemove="canv_mousemove(event);" onmouseout="mx=-1;my=-1;" style="position:absolute;left:0%;top:10%;right:10%;" width="1024" height="720">
You need a canvas-enabled browser, such as Google Chrome,Mozilla Firefox or Apple Safari.
</canvas>
<canvas id="wordCanv" width="1024" height="720" style="border:1px solid;display:none;"></canvas>
<canvas id="wordsTxt"></canvas>
  
  <script type="text/javascript">var pixels=new Array();var canv=$('canv');var ctx=canv.getContext('2d');var wordCanv=$('wordCanv');var wordCtx=wordCanv.getContext('2d');var mx=-1;var my=-1;var words="";var txt=new Array();var cw=0;var ch=0;var resolution=1;var n=0;var timerRunning=false;var resHalfFloor=0;var resHalfCeil=0;function canv_mousemove(evt)
{mx=evt.clientX-canv.offsetLeft;my=evt.clientY-canv.offsetTop;}
function Pixel(homeX,homeY)
{this.homeX=homeX;this.homeY=homeY;this.x=Math.random()*cw;this.y=Math.random()*ch;this.xVelocity=Math.random()*10-5;this.yVelocity=Math.random()*10-5;}
Pixel.prototype.move=function()
{var homeDX=this.homeX-this.x;var homeDY=this.homeY-this.y;var homeDistance=Math.sqrt(Math.pow(homeDX,2)+Math.pow(homeDY,2));var homeForce=homeDistance*0.01;var homeAngle=Math.atan2(homeDY,homeDX);var cursorForce=0;var cursorAngle=0;if(mx>=0)
{var cursorDX=this.x-mx;var cursorDY=this.y-my;var cursorDistanceSquared=Math.pow(cursorDX,2)+Math.pow(cursorDY,2);cursorForce=Math.min(10000/cursorDistanceSquared,10000);cursorAngle=Math.atan2(cursorDY,cursorDX);}
else
{cursorForce=0;cursorAngle=0;}
this.xVelocity+=homeForce*Math.cos(homeAngle)+cursorForce*Math.cos(cursorAngle);this.yVelocity+=homeForce*Math.sin(homeAngle)+cursorForce*Math.sin(cursorAngle);this.xVelocity*=0.92;this.yVelocity*=0.92;this.x+=this.xVelocity;this.y+=this.yVelocity;}
function $(id)
{return document.getElementById(id);}
function timer()
{if(!timerRunning)
{timerRunning=true;setTimeout(timer,50);for(var i=0;i<pixels.length;i++)
{pixels[i].move();}
drawPixels();wordsTxt.focus();n++;if(n%10==0&&(cw!=document.body.clientWidth||ch!=document.body.clientHeight))body_resize();timerRunning=false;}
else
{setTimeout(timer,10);}}
function drawPixels()
{var imageData=ctx.createImageData(cw,ch);var actualData=imageData.data;var index;var goodX;var goodY;var realX;var realY;for(var i=0;i<pixels.length;i++)
{goodX=Math.floor(pixels[i].x);goodY=Math.floor(pixels[i].y);for(realX=goodX-resHalfFloor;realX<=goodX+resHalfCeil&&realX>=0&&realX<cw;realX++)
{for(realY=goodY-resHalfFloor;realY<=goodY+resHalfCeil&&realY>=0&&realY<ch;realY++)
{index=(realY*imageData.width+realX)*4;actualData[index+0]=255;actualData[index+1]=255;actualData[index+2]=255;actualData[index+3]=255;}}}
imageData.data=actualData;ctx.putImageData(imageData,0,0);}
function readWords()
{words=("Weengs -14 \n  ");txt=words.split('\n');}
function init()
{readWords();var fontSize=200;var wordWidth=0;do
{wordWidth=0;fontSize-=5;wordCtx.font=fontSize+"px 'bat'";for(var i=0;i<txt.length;i++)
{var w=wordCtx.measureText(txt[i]).width;if(w>wordWidth)wordWidth=w;}}while(wordWidth>cw-50||fontSize*txt.length>ch-50)
wordCtx.clearRect(0,0,cw,ch);wordCtx.textAlign="center";wordCtx.textBaseline="middle";for(var i=0;i<txt.length;i++)
{wordCtx.fillText(txt[i],cw/2,ch/2-fontSize*(txt.length/2-(i+0.5)));}
var index=0;var imageData=wordCtx.getImageData(0,0,cw,ch);for(var x=0;x<imageData.width;x+=resolution)
{for(var y=0;y<imageData.height;y+=resolution)
{i=(y*imageData.width+x)*4;if(imageData.data[i+3]>128)
{if(index>=pixels.length)
{pixels[index]=new Pixel(x,y);}
else
{pixels[index].homeX=x;pixels[index].homeY=y;}
index++;}}}
pixels.splice(index,pixels.length-index);}
function body_resize()
{cw=document.body.clientWidth;ch=document.body.clientHeight;canv.width=cw;canv.height=ch;wordCanv.width=cw;wordCanv.height=ch;init();}
resHalfFloor=Math.floor(resolution/2);resHalfCeil=Math.ceil(resolution/2);body_resize();timer();</script><br/><br/><br/><br />
<span style="padding-left:65%; font-size:38px; color:Orange; position:relative;">WE ENGINEERS.........</span>
</div>
<br /><br />
<div>
<table width="100%">
<tr>
<td style="padding-left:7%; padding-right:0%;">
Event Date<br />
<img src="img/eventdate.png" width="200" height="150" alt="13th and 14th march 2014" />
</td><td style="padding-left:34%">
Our Sponcer's<br />
<img src="sponcering/allspons.gif" width="375" height="150" alt="sponcer" />
</td>
</tr>
</table>
<div style="width:40px" title="Explore The Site"><a href="./events/Default.aspx" title="Explore The Site">
	<div id="backgr"><img src="./img/cpy.png" alt="Enter" /></div>
	
	</a></div>
</div>
<script type="text/javascript">$(document).ready(function(e){$('#aboutushoverbg').fadeOut();$('#aboutushoverbox').hover(function(){$('#aboutushoverbg').fadeIn(500);},function(){$('#aboutushoverbg').fadeOut(500);});$('#aboutushoverbox').click(function(e){console.log("here");$('#aboutushoverbox').css('z-index',-10);$('#contactushoverbox').css('z-index',-10);$('#aboutus').addClass('active');$('#aboutushoverbox').css('z-index',-10);$('#aboutushoverbox').css('z-index',5);var i=0;var arr=[];$("#slideshow").children().each(function(){var name=$(this).attr("id");console.log("1:"+name);arr.push(name);$('#'+name).fadeOut();});i=0;setInterval(function(){$('#'+arr[i]).fadeIn(1000);$('#'+arr[i]).fadeOut(1000);console.log("interval:"+arr[i]);i=(i+1)%arr.length;},2000);});</script></div>

      
        <div class="footer">
       <div id="bottomMenu">
     <ul>
     <li> 
    <a href="Default.aspx">
      Home
    </a>
       |
    </li><li><a href="./events/Default.aspx">
      Events
    </a>
       |
    </li><li><a href="./login.aspx">
      Login
    </a>
       |
    </li><li><a href="./inspiration.aspx">
      Our Inspiration
    </a>
       |
    </li><li><a href="./motivation.aspx">
      Our Motivation
    </a>
       |   
    </li><li><a href="./oursponcers.aspx">
      Our Sponsores
    </a>
       |
    </li><li><a href="./contactus.aspx">
      Contact Us
    </a>
       |
    </li><li><a href="./aboutus.aspx">
      About Us
    </a>
       |      
    </li><li><a href="./photogalary.aspx">
      Photo Galary
    </a>
       |
    </li>
    </ul>
    <p id="copyright">
    CopyRight @Weengs14 Web Devloper team 
    </p>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
