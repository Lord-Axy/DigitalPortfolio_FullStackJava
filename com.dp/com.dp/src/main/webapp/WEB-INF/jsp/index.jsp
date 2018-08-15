<html>
<head>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/zavoloklom/pen/siKdh?limit=all&page=31&q=form" />
<script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style class="cp-pen-styles">/* -- import Bootstrap v3 and Open Sans Font ------------------------------------- */
@import "//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css";
@import "//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700";
/* -- box model ------------------------------------- */
*,
*:after,
*:before {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
/* -- main styles ------------------------------------- */
body {
  font-family: 'Open Sans', sans-serif;
  background: #495a68 url("") no-repeat;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  background-position: center;
  /* Internet Explorer 7/8 */
}
#enter {
  max-width: 370px;
  margin: 20px auto;
  padding: 30px;
  border-radius: 5px;
  background-color: #e9ecee;
  -webkit-box-shadow: 0px 0px 15px 0px rgba(50, 50, 50, 0.5);
  -moz-box-shadow: 0px 0px 15px 0px rgba(50, 50, 50, 0.5);
  box-shadow: 0px 0px 15px 0px rgba(50, 50, 50, 0.5);
}
#enter .logo-image {
  text-align: center;
}
#enter img {
  max-width: 100%;
  max-height: 150px;
}
#enter h1,
#enter p {
  text-align: center;
}
#enter h1 {
  font-size: 24px;
  line-height: 24px;
}
/* -- form styles ----------------------------------- */
label {
  display: inline;
  font-size: 1.3em;
  font-weight: 300;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
  margin-bottom: 15px;
  width: 100%;
}
.input-field {
  height: 60px;
  width: 100%;
  border: none;
  border-radius: 5px;
  text-align: center;
  font-size: 1.5em;
  font-weight: 300;
}
/* -- input styles ----------------------------------- */
#enter form input[type="text"],
#enter form input[type="password"] {
  background-color: #d9dde0;
  color: black;
}
#enter form input[type="text"]:hover,
#enter form input[type="password"]:hover {
  background-color: #ced2d5;
  color: black;
  outline-color: #495a68;
}
#enter form input[type="text"]:focus,
#enter form input[type="password"]:focus {
  background-color: #ecf0f1;
  color: black;
  outline-color: #495a68;
}
#enter form input[type="text"]:valid,
#enter form input[type="password"]:valid {
  background-color: #1abc9c;
  color: black;
  outline-color: #495a68;
}
#enter form input[type="text"]:invalid,
#enter form input[type="password"]:invalid {
  outline-color: #495a68;
}
/* -- checkbox styles ----------------------------------- */
#enter input[type="checkbox"] {
  -webkit-appearance: none;
  width: 30px;
  height: 30px;
  position: relative;
  outline: medium none;
  margin-right: 10px;
  border-radius: 50%;
}
#enter input[type="checkbox"]::before {
  width: 28px;
  height: 28px;
  content: "";
  display: block;
  border: 2px solid #495a68;
  border-radius: 50%;
  position: absolute;
}
#enter input[type="checkbox"]:checked::before {
  border-color: #495a68;
}
#enter input[type="checkbox"]:checked::after {
  width: 14px;
  height: 14px;
  content: "";
  display: block;
  background: #495a68;
  border-radius: 50%;
  position: absolute;
  left: 7px;
  top: 7px;
}
#form-login-remember label {
  vertical-align: top;
  line-height: 36px;
  margin-bottom: 0;
}
/* -- button styles ----------------------------------- */
.btn-ok {
  color: #e9ecee;
  background-color: #495a68;
  border-color: #495a68;
}
.btn-ok:hover,
.btn-ok:focus,
.btn-ok:active,
.btn-ok.active {
  color: #e9ecee;
  background-color: #3e4d59;
  border-color: #3e4d59;
}
.btn-ok:active,
.btn-ok.active {
  background-image: none;
}
.btn-ok.disabled,
.btn-ok[disabled],
fieldset[disabled] .btn-ok,
.btn-ok.disabled:hover,
.btn-ok[disabled]:hover,
fieldset[disabled] .btn-ok:hover,
.btn-ok.disabled:focus,
.btn-ok[disabled]:focus,
fieldset[disabled] .btn-ok:focus,
.btn-ok.disabled:active,
.btn-ok[disabled]:active,
fieldset[disabled] .btn-ok:active,
.btn-ok.disabled.active,
.btn-ok[disabled].active,
fieldset[disabled] .btn-ok.active {
  background-color: #428bca;
  border-color: #357ebd;
}
/* -- placeholder styles ----------------------------------- */
#enter form ::-webkit-input-placeholder {
  /* for webkit browsers */
  text-align: center;
  color: #555555;
}
#enter form :-moz-placeholder {
  /* for mozilla browsers */
  text-align: center;
  color: #555555;
}
#enter form .placeholder {
  text-align: center;
  color: #555555;
}
</style>
<style>
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
*{
  margin:0;
  padding:0;
}

body{
  background:#18233e;
}
.container{
  position:relative;
  width:100%;
  height:300px;
  padding-top:0px;
  margin: 121px auto;
  
}
.loro{
  position:relative;
  width:231px;
  height:300px;
  margin:0 auto;
  
    
}
.circ{
  position:absolute;
  width:121px;
  height:212px;
  border-radius: 300px 0  0 300px;
  background:#25b1b0;
  margin:30px 50%;
  transform-origin:50% 50%;
  -webkit-transform-origin:50% 50%;
  -moz-transform-origin:50% 50%;
   animation:gira 3s linear infinite;
    -moz-animation: gira 3s alternate infinite;
    -webkit-animation: gira 3s linear infinite;
    -o-animation: gira 3s alternate infinite;
  
  
}
.circ3{
  position:absolute;
  display:block;
  width:80px;
  height:45px;
  border-radius:0 0 90px 90px;
 background:#f7a500;
  margin:121px 192px;
  transform-origin:-21% 53%;
   -webkit-transform-origin:-21% 53%;
  -moz-transform-origin:-21% 53%;
   animation:gira5 3s linear infinite;
    -moz-animation: gira5 3s linear infinite;
    -webkit-animation: gira5 3s linear infinite;
    -o-animation: gira5 3s linear infinite;
  
}
.circ5{
  position:absolute;
  
  width:75px;
  height:121px;
  border-radius:90px 0 0 90px ;
  background:white;
  margin:70px 161px;
   transform-origin:19% 50%;
  -webkit-transform-origin:19% 50%;
  -moz-transform-origin:19% 50%;
   animation:gira3 3s linear infinite;
    -moz-animation: gira3 3s linear infinite;
    -webkit-animation: gira3 3s linear infinite;
    -o-animation: gira3 3s linear infinite;
	
}
.ojo{
  position:absolute;
  width:30px;
  height:30px;
  border-radius:100%;
  background:#333;
  border:3px solid #ff6666;
  margin:90px 192px;
   animation:va 3s linear infinite;
    -moz-animation: va 3s linear infinite;
    -webkit-animation:va 3s linear infinite;
    -o-animation: va 3s linear infinite;
  z-index:33;
  
}
.circ7{
  position:absolute;
  width:55px;
  height:60px;
  border-radius:0 192px 0 0;
  background:#f7ce43;
  margin:70px 235px;
    transform-origin:102% 207%;
  -webkit-transform-origin:-102% 207%;
  -moz-transform-origin:-102% 207%;
 
   animation:gira7 3s linear infinite;
    -moz-animation: gira7 3s linear infinite;
    -webkit-animation: gira7 3s linear infinite;
    -o-animation: gira7 3s linear infinite;
}

@-webkit-keyframes gira {
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  55% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  60% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  65% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  75% {transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  80% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 85% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 90% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  95% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  100% {  transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);   }
}


@keyframes gira {
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  55% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  60% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  65% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  75% {transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  80% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 85% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 90% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  95% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  100% {  transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);   }
}
@-moz-keyframes gira {
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  55% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  60% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  65% { transform: rotate(180deg);
	-moz-transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
	-o-transform: rotate(180deg);
	-ms-transform: rotate(180deg); }
  75% {transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  80% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 85% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
 90% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  95% { transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);  }
  100% {  transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-webkit-transform: rotate(360deg);
	-o-transform: rotate(360deg);
	-ms-transform: rotate(360deg);   }
}

@-webkit-keyframes gira3{
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  75% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  80% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 85% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 90% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  95% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  100%{transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
}


@keyframes gira3{
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  75% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  80% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 85% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 90% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  95% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  100%{transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
}

@-moz-keyframes gira3{
  0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg); }
  75% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  80% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 85% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
 90% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  95% {transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
  100%{transform: rotate(-360deg);
	-moz-transform: rotate(-360deg);
	-webkit-transform: rotate(-360deg);
	-o-transform: rotate(-360deg);
	-ms-transform: rotate(-360deg);  }
}
@-webkit-keyframes gira5 {
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   border-radius:0 0 90px 90px;}
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);border-radius:0 0 90px 90px; }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
  }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
   border-radius:90px 90px 0 0;}
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); 
   border-radius:0 0 90px 90px;}
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px; }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
}
@keyframes gira5 {
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   border-radius:0 0 90px 90px;}
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);border-radius:0 0 90px 90px; }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
  }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
   border-radius:90px 90px 0 0;}
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); 
   border-radius:0 0 90px 90px;}
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px; }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
}

@-moz-keyframes gira5 {
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   border-radius:0 0 90px 90px;}
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);border-radius:0 0 90px 90px; }
  50% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
  }
  55% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  60% { transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
     border-radius:90px 90px 0 0;
   }
  65% {  transform: rotate(-180deg);
	-moz-transform: rotate(-180deg);
	-webkit-transform: rotate(-180deg);
	-o-transform: rotate(-180deg);
	-ms-transform: rotate(-180deg);
   border-radius:90px 90px 0 0;}
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); 
   border-radius:0 0 90px 90px;}
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); border-radius:0 0 90px 90px;   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px; }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  border-radius:0 0 90px 90px;  }
}
@-webkit-keyframes gira7{
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
  }
  55% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
   }
  60% {transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
     
   }
  65% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);;
  }
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
    -ms-transform: rotate(0deg); }
 
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
    -o-transform: rotate(0deg);}}
  

@keyframes gira7{
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
  }
  55% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
   }
  60% {transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
     
   }
  65% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);;
  }
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
    -ms-transform: rotate(0deg); }
 
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
    -o-transform: rotate(0deg);}}

@-moz-keyframes gira7{
    0% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);
   }
    25% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
  50% { transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
  }
  55% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
    
   }
  60% {transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);
     
   }
  65% {  transform: rotate(-90deg);
	-moz-transform: rotate(-90deg);
	-webkit-transform: rotate(-90deg);
	-o-transform: rotate(-90deg);
	-ms-transform: rotate(-90deg);;
  }
  75% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
    -ms-transform: rotate(0deg); }
 
  80% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg); }
 85% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
 90% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  95% {transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);  
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
	-o-transform: rotate(0deg);
	-ms-transform: rotate(0deg);   }
  100%{transform: rotate(0deg);
	-moz-transform: rotate(0deg);
	-webkit-transform: rotate(0deg);
    -o-transform: rotate(0deg);}}


  @keyframes va{
    0% {margin-left:192px;}
    25% {margin-left:192px;}
  50% { margin-left:121px; }
  55% {  margin-left:121px;}
  60% {margin-left:121px;}
  65% {  margin-left:121px;}
    75% {margin-left:192px;}
 
  80% {margin-left:192px; }
 85% {margin-left:192px;  }
 90% {margin-left:192px;   }
  95% {margin-left:192px;  }
    100%{margin-left:192px;}}
  
  
  
  
  @-moz-keyframes va{
     0% {margin-left:192px;}
    25% {margin-left:192px;}
  50% { margin-left:121px; }
  55% {  margin-left:121px;}
  60% {margin-left:121px;}
  65% {  margin-left:121px;}
    75% {margin-left:192px;}
 
  80% {margin-left:192px; }
 85% {margin-left:192px;  }
 90% {margin-left:192px;   }
  95% {margin-left:192px;  }
    100%{margin-left:192px;}}
  
  
  
  @-webkit-keyframes va {
    0% {margin-left:192px;}
    25% {margin-left:192px;}
  50% { margin-left:121px; }
  55% {  margin-left:121px;}
  60% {margin-left:121px;}
  65% {  margin-left:121px;}
    75% {margin-left:192px;}
 
  80% {margin-left:192px; }
 85% {margin-left:192px;  }
 90% {margin-left:192px;   }
  95% {margin-left:192px;  }
    100%{margin-left:192px;}}
	
	
	
	
	body{background-color:#2C1510;}
.login-btn{
    background-color:#4e3e84;
    position:absolute;
    left:-55px;
    top:40%;
    padding:10px;
    border-radius:4px;
    transform:rotate(90deg);
    width:150px;
    text-align:center;
    color:#fff;
    cursor:pointer;
}

.login-bar{
    background-color:#4e3e84;
    position:absolute;
    left:0;
    top:26%;
    height:155px;
    width:0%;
    z-index:99;
}
.login-bar-close{
    position:absolute;
    top:-30px;
    right:10px;
    font-size:32px;
    cursor:pointer;
}
.login-box{
    width:500px;
    height:300px;
    background-color:#fff;
    padding:5px 15px;
    margin:0 auto;
    z-index:999;
    position:relative;
    display:none;
}
.btn-primary {
    color: #fff;
    background-color: #4e3e84;
    border-color: #4e3e84;
}
  
  
  
  html,body {
    height:100%;
    width:100%;
	position:relative;
}
#background-carousel{

  display: none;
  text-align: center;

	position:fixed;
	width:100%;
	height:100%;
	z-index:-1;
}
.carousel,
.carousel-inner {
	width:100%;
	height:100%;
	z-index:0;
	overflow:hidden;
}
.item {
	width:100%;
	height:100%;
	background-position:center center;
	background-size:cover;
	z-index:0;
}
 
#content-wrapper {
	position:absolute;
	z-index:1 !important;
	min-width:100%;
	min-height:100%;
}
.well {
    opacity:0.85
}

.title{ color:white; font-size:40px; }

 @import url(https://fonts.googleapis.com/css?family=Open+Sans);
 * {
   box-sizing: border-box;
 }
 
 body {
   font-family: "Open Sans", sans-serif;
   font-size: 15px;
   line-height: 1.5;
   margin: 0;
 }
 
 ul,
 li {
   margin: 0;
   padding: 0;
   list-style: none;
 }
 
 ul {
   float: right;
   line-height: 90px;
 }
 
 li {
   float: left;
   margin-right: 15px;
 }
 
 li:last-of-type {
   margin-right: 0;
 }
 
 li a {
   color: white;
   text-decoration: none;
 }
 
 li a:hover {
   color: #6fb98f;
 }
 
 header {
   background: #021c1e;
   height: 90px;
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   overflow: hidden;
   transition: all .2s ease;
 }
 
 .logo {
   color: #6fb98f;
   font-size: 30px;
   float: left;
   line-height: 90px;
 }
 
 .container {
   max-width: 1170px;
   margin: 0 auto;
   padding: 0 10px;
 }
 
 .container:after {
   content: "";
   clear: both;
   display: block;
 }
 
 article {
   margin-top: 110px;
 }
 
 .detay {
   background: #f5f7fa;
   border: 1px solid #aaa;
   padding: 10px;
   margin-bottom: 25px;
   display: inline-block;
 }
 
 .detay span {
   margin-right: 20px;
 }
 
 .fa-facebook {
   color: #222222;
 }
 
 .fa-twitter {
   color: #1aa9e1;
 }
 
 .fa-whatsapp {
   color: #25d366;
 }
 
 .fa-user {
   color: #021c1e;
 }
 
 img {
   display: block;
   width: 100%;
   max-width: 600px;
 }
 
 footer {
   background: #021c1e;
   color: white;
   text-align: center;
   padding: 10px 0;
 }
</style>
<script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
  document.getElementById("background-carousel").style.display = "block"
}
$(document).ready(function(){
    $('.login-btn').click(function(){
        $('.login-bar').animate({width: '100%'},'slow',function(){
            $('.login-box').show();
        });
    });
    
    $('.login-bar-close').click(function(){
        $('.login-box').hide();
        $('.login-bar').animate({width: '0%'},'slow');
    });
});
 $('#myCarousel').carousel({
    	pause: 'none'
	})
</script>
</head>
<body onload="myFunction()" style="margin:0;" >

<div id="loader">
<div class="container" id="">
<div class="loro">
<div class="circ">
 
</div>
<div class="circ3"></div>
<div class="circ5"></div>

  <div class="circ7"></div>
  <div class="ojo"></div>
  <br>
  <br>
  <br>
  </div>
  
  </div>
  </div>
  </div>
  
 
<div id="content-wrapper">
<div id="background-carousel" class="animate-bottom">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image:url(https://www.mediabistro.com/wp-content/uploads/2016/02/tips-on-getting-your-copywriter-portfolio-started.jpg)"></div>
        <div class="item" style="background-image:url(http://www.eljas.net/file/2016/01/portfolio.jpg)"></div>
        <div class="item" style="background-image:url(http://www.socialmediaexplorer.com/wp-content/uploads/2013/07/your-digital-portfolio.jpg)"></div>  
      </div>
    </div>
</div>
<div style="display:none;" id="myDiv" class="animate-bottom">

  
  <div class="container">
  <header>
  <div class="container">

    <div class="logo">
     Digital Portfolio
    </div>

    <ul>
      <li><a href="#">About us</a></li>
      <li><a href="#">Contact us</a></li>
      <li><a href="#"></a></li>
      <li></li>

    </ul>
  </div>
</header>
  

	<div class="container">
<div id="enter">
  <div class="logo-image">
  <img src="http://www.deannapalmadesigns.com/wp-content/uploads/2016/07/DPDesigns_LogoV2-1.png" alt="Logo" title="Logo">
  </div>
  <h1>Digital Portfolio</h1>	
  <p>Log in</p>
  <form action="login" method="post"  class="" role="form">
    <div id="form-login-username" class="input-group">
      <input id="username" class="input-field" name="name" placeholder="name" type="text" size="18" alt="login" required />
    </div>
    <div id="form-login-password" class="input-group">
      <input id="passwd" class="input-field" name="password" placeholder="password" type="password" size="18" alt="password"  required>
    </div>
    <div id="form-login-remember" class="input-group">
      ${message}
      
    </div>
    
    <div id="submit-buton" class="input-group">
			      <input class="btn btn-ok input-field" type="submit" name="Submit" alt="sign in" value="Log in">
		    </div>
		    </form>
		    <div class="alert alert-info">
		    <form action="hai">
       <input type="submit" class="btn btn-primary" value="Create new Account"/>
    </div>
      </form>
  
</div>
</div>
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script src="https://i-assa.nichost.ru/placeholder/jquery.placeholder.min.js"></script>
<script >jQuery('#username[placeholder], #password[placeholder]').placeholder();

//# sourceURL=pen.js
</script>
</div>


</div>
</div>
<script type="text/javascript">
$(document).ready(function() {

	  $(window).scroll(function() {

	    var scroll = $(this).scrollTop(),
	      header = $("header"),
	      detay = $(".detay");

	    if (scroll > 90) {
	      header.css({
	        "height": "60px",
	        "background": "#f5f7fa"
	      });

	      $(".logo").css({
	        "line-height": "60px",
	        "color": "black"
	      });

	      detay.css({
	        "position": "fixed",
	        "top": "8px",
	        "left": "calc(100vw - (850px)/2)",
	        "background": "none",
	        "border": "none"
	      });

	      $("ul").slideUp();
	    } else {
	      header.css({
	        "height": "90px",
	        "background": "#021c1e"
	      });

	      $(".logo").css({
	        "line-height": "90px",
	        "color": "#6fb98f"
	      });

	      detay.css({
	        "position": "inherit",
	        "background": "#f5f7fa",
	        "border": "1px solid #aaa"
	      });

	      $("ul").slideDown();
	    }
	  });

	});
	</script>
  </body>
  </html>