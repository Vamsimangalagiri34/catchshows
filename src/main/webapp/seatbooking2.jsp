<!DOCTYPE html>
<html lang="en" xmlns:jsp="http://www.w3.org/1999/XSL/Transform">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles2.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

  <style>
    *{
    margin:0;
    }

    body{
    background:linear-gradient(to right,black,#3D405B);

    }
   .dates{
    display:flex;

     }
    .d{
       display:inline-block;
      padding:5px;
      border:.3px solid gray;
      margin:3px;
      border-radius:5px ;
      font-weight:500;
      font-size:20px;
      color:#ecc18e;
      font-style:inter,sens-serif;
    }
     .selected{
    background-color:#00B8F5;
    color:white;
    }
    .daysInfo ol li{
    list-style:none;
    color:#ecc18e;
    margin-top:30px;
    }
    .daysInfo ol li:hover{
    background:linear-gradient(to left,black,yellow);
    }
    .daysInfo{
    margin-bottom:10px;
    }
    .daysInfo .dlo{
    display:flex;
    }
    .daysInfo .dlo .dli{
    margin-left:20px;
    font-size:15px;
    border:1px solid gray;
    padding:7px;
    border-radius:5px;
    cursor:pointer;
    }
    .timeInfo{
      color:#ecc18e;
      display: flex;
      margin-bottom:29px;
    }
    .timeInfo ol{
      display: flex;
      font-size: 14px;
      margin-left:27px;
    }
    .timeInfo ol li{
    cursor:pointer;
      list-style: none;
      display: flex;
      margin-left: 9px;
      border-radius: 5px;
      border: 1px solid gray;
      padding: 5px;
    }
    .seats{
   color:#ecc18e;
    }
    .seats p{
    margin-top:30px;
    display:flex;
    justify-content:center;
    }
    .mDtls{
    width:29rem;
    height:36.5rem;
    color:white;
    background:black;
    margin-right:5rem;

    }
    .mDtls img{
    height:69%;
    width:100%;
    }
    .vam{
    padding:20px;
    border-radius:5px;
        background:linear-gradient(to right,black,#3D405B);
        }
    .head{
      display:flex;
      justify-content:center;
      align-item:center;

    }
   .navb {
  height: 110px;
  border-bottom: 1px solid gray;
  margin-bottom: 10px;
  display: flex;
  justify-content: space-around;
  align-items: center;  /* Fix the typo here */

  margin: 0;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}

    .tDtls{
    margin-top:15px;

    color:#ecc18e;
<!--    display:flex;-->
<!--    flex-flow:wrap;-->
<!--    justify-content:space-around;-->
    }
    .tDtls p{
         display:flex;
    justify-content:space-around;
    margin-right:6px;
    align-item:center;

    }

    .codt p{
    margin-right:15px;
    }
    .movieInfo{
    color:white;
    display:flex;
    flex-direction:column;
    text-align:center;
     color:#ecc18e;
    }
    .mve{
    font-size:18px;
    font-weight:700;
    }
    .lok{
    font-size:14px;
    font-weight:500;
    }
    .fa-solid{
    font-size:15px;
    }
    .log a{
    text-decoration:none;
    font-size:34px;
    font-weight:700;
     color:#ecc18e;
    }
    .dtn{
    width:100%;
    height:7%;
    margin:0;
     border-radius:5px;
      background-color:red;
        border-style:none;
        font-size:18px;
        font-weight:500;
    }
    .codts{
    text-align:center;
    }
    .codts .selc{
    height:14px;
    border:5px;
    width:14px;
    border:.9px solid #00B8F5;
    border-radius:4px;
    }

    .codts span{
    margin-right:10px;
    margin-left:3px;
    font-size:14px;
    text-align:center;
    }

    .codts .d1{
     background:#00B8F5;
    }
    .codts .d3{
    background:gray;
    }
  footer{
        border-top:1px solid black;
        height:100px;
        margin: auto;
             position: relative;
             top: 0; bottom: 0; left: 0; right: 0;
             display: flex;
             align-items: center;
             justify-content: center;
              color:#ecc18e;
        }

     .cop a{
     color:#ecc18e;
     text-decoration:none;
     }

     dialog {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      border-style:none;
    border-radius:10px;
    border-top:7px solid red;

    }

    .r1{
    display:flex;
    color:green;
     border-style:none;
    }

    .r2{
    display:flex;
    text-align:center;
    }

 .r1{
     display:flex;
   flex-direction:column;
    }
    .pt{
    color:gray;
    font-size:15px;
    font-weight:500;
    }


.dc p,.da p{
    font-size:15px;
    font-weight:500;
    }
    .wm{
    margin-top:13px;
    font-size:16px;
    font-weight:500;
    margin-left:20px;
    }
    .wmd{
    font-size:14px;
    }
    .detl{
    margin-top:9px;
    width:100%;
    height:100%;
    border:2px solid black;
    }
 .r2 img {
    position: relative;
    margin-top: -10px;
    z-index: 1;
}
  .tamt1 ,.tamt2 ,.tamt3{
    display:flex;
    justify-content:space-between;
    margin:2px;
    }
    .tamc{
    margin-top:4px;
    }
    .klos{
    background:black;
    font-size:9px;
    padding:3px;
    color:red;
    border-radius:6px;
    }
    .klos a{
    text-decoration:none;
    color:red;
    }
    .tol li a{
    text-decoration:none;

    }
    .mve{
      text-transform: uppercase; /* Make card titles uppercase */
              text-align:center;
              font-size:17px;
    }
    .seat:hover{
    transition: 1s;
    //background:red;
    transform:scale(1.15);
    }
    .seat{
    background:transparent;
    }
  </style>
  <title class="tit"></title>
</head>
<body>

<dialog class="ria">
  <span class="klos" style="float:right;margin-top:-15px"> <i class="fa-solid fa-x"></i></span>
  <div class="r2" >
    <div class="r1" style="margin-left:10px">

      <div>hey you Successfully Catched your Tickets !</div>

      <div class="dm" style="display:flex;flex-direction:column; margin-top:60px;color:black;font-weight:650;font-size:18px;justify-content:center;align-item:center;">

      </div>
    </div>

    </div>
  <div class="men" style="display:flex;justify-content:space-around;margin-top:20px;text-align:center;font-size:18px;font-weight:550">
  <div class="dc">Ticket Count</div>
  <div class="da">Selected Seats</div>
  </div>
  <div class="wm">
  <div class="mn1">
    <div><span><i class="fa-solid fa-location-dot"></i>  </span>Venu and Time</div>
    <div class="wmd" style="margin-top:5px;margin-left:5px"></div>
  </div>
    <hr style="margin-top:13px;">
<div class="tamc">
    <div class="tamt1" >
      <div class="tap"></div>
      <div class="tap2"></div>
    </div>
    <div class="tamt2">
      <div class="tap3" style="color:red">GST+Others</div>
      <div class="tap4"></div>
    </div>
  <hr>
    <div class="tamt3">
      <div class="tap5">Total Amount</div>
      <div class="tap6"></div>
    </div>
</div>
  </div>
</dialog>
<!--<div id="locationInfo" style="display:flex;align-items:center;justify-content:center;font-size:25px;font-weight:790;font-style:25 inter,sans-serif'">-->
<!--  &lt;!&ndash; The selected location will be displayed here &ndash;&gt;-->
<!--</div>-->



<div class="navb margin-bottom:10px;" >

  <div class="log"><a href="index.jsp" >Catch my show</a>  </div>
  <div class="movieInfo">
    <div class="mve"></div>

    <div class="lok"></div>
  </div>

</div>

<div class="selectedData"></div>
</div>
<div class="daysInfo">

</div>
<div class="timeInfo">

</div>

<div class="vam" style="display:flex;align-items:center;justify-content:center">

  <div class="theater" style="border-radius:6px;">
    <div class="codts" style="display:flex;justify-content:center;color:white;margin-top:1px;margin-bottom:13px">
      <p class="selc d1"></p><span>Selected</span>
      <p class="selc d2"></p><span>Available</span>
      <p class="selc d3"></p><span>Catched</span>
    </div>
    <h2 style="background:linear-gradient(to right, #8AAAE5, #8AAAE5, #603F83FF);padding-left:30px;border-radius:40px;border:1px solid #00B8F5">Screen This Way</h2>
    <div class="room">

      <div class="seats" id="seats-container" style="margin-top:20px;">
        <!-- Generate 60 seats in a 6x10 grid -->
      </div>
    </div>
    <div class="codt" style="display:flex; justify-content:center;color:white; ">
      <p>Normal-150</p>
      <p>Exclusive-175</p>
      <p>Gold-275</p>
    </div>

  </div>
</div>

<footer>

  <div class="w d-flex justify-content-center align-item-center bg-#48416b">
    <div class="cop">&copy; 2023 <a href="index.jsp">Catch My Show.</a> All rights reserved.</div>
  </div>
</footer>
<dialog class="diao">
  hey please select timings
</dialog>

<script>
var ismloc=false;
  var tmloc='';
  var sd='';
  var sx=0;
  var finalS=[];
  var finalS2=[];
  var dayloc='';
  var tim=false;
const tak=localStorage.getItem('count');

  var sId='';
  // Retrieve the location from localStorage
  var storeImgSrc=localStorage.getItem('img-src');
  var storedLocation = localStorage.getItem('location2');
  var locap=localStorage.getItem('location2');
  console.log(locap);
  var moviep=localStorage.getItem('movieName');
  console.log(moviep);

const tit=document.querySelector('.tit');
tit.textContent=moviep+' Movie Tickets Booking';

  const fre=document.querySelector('.mve');
  const dayIs=localStorage.getItem('dayis');
  fre.innerHTML=moviep;
  const fre2=document.querySelector('.lok');
  fre2.innerHTML='<i class="fa-solid fa-location-dot"></i>'+locap;

  window.addEventListener('load', function() {
localStorage.setItem('istimed',false);
localStorage.setItem('dayis',' ');
localStorage.setItem('dateis',' ');
checkUrlParameter();
localStorage.setItem('ismloc',false);
});

const tamm=localStorage.getItem('tamount');

var tap=document.querySelector('.tap');
if(tak<=1){
tap.innerHTML='Ticket Price:';
}
else{
tap.innerHTML='Tickets Price:';
}

var tap3=document.querySelector('.tap3');
tap3.innerHTML='GST+Others:';
var tap4=document.querySelector('.tap4');
var gst=11;
tap4.innerHTML='+'+gst+'&#8377 ';
tap4.style.color='green';
var tap5=document.querySelector('.tap5');
tap5.innerHTML='Total Amount:';



const seatContainer = document.getElementById('seats-container');
const numRows = 10; // Number of rows
const numCols = 14; // Number of columns
const numSeats = numRows * numCols;

// Generate seats and row labels
for (let i = 0; i < numRows; i++) {
  const rowLabel = String.fromCharCode('A'.charCodeAt(0) + i); // Get the character for each row

  // Create a row container for each row
  const row = document.createElement('div');
  row.className = 'row';

  // Create a div for the row label
  const label = document.createElement('div');
  label.className = 'row-label';
  label.innerText = rowLabel + '-';
  // Append the label to the row container
  row.appendChild(label);

  // Generate seats for the row
  for (let j = 1; j <= numCols; j++) {
      const seat = document.createElement('button');
      seat.className = 'seat';

      // Set seat ID and text with row label and column number
      seat.id =  rowLabel + '-' + j ;
      seat.innerText = j;

 istimd=localStorage.getItem('istimed');
      seat.addEventListener('click', () => {
                  toggleSeat(seat);

    });

      // Add margin after every seat except the last one in the row
      if (j !== numCols) {
          seat.style.marginRight = '5px';
      }

      // Append each seat to the row container
      row.appendChild(seat);

      // Check for the 9th row and the 6th column to add the "Gold" label horizontally
      for(let i=1;i<=14;i++){
           if(i==1 && j==4 || (i==5 && j==10) || (i==11 && j==14)){
          const goldLabel = document.createElement('div');
          goldLabel.className = 'str1-horizontal';
          goldLabel.innerHTML = "__";
          row.appendChild(goldLabel);

  }
}
}
if (i === 8) {
const goldLabel = document.createElement('div');
goldLabel.className = 'str1';
goldLabel.innerHTML = "--- Gold ---";
goldLabel.style.color='#ecc18e';
seatContainer.appendChild(goldLabel);
}

if(i==4){
const normal=document.createElement('div');
normal.className="str2";
normal.innerHTML='--- Exclusive ---';
normal.style.color='#ecc18e';
seatContainer.appendChild(normal);
}
  // Append the row container (with row label and seats) to the seat container
  seatContainer.appendChild(row);
}


function dayR(t){

return t;
}

var maxSeats = 7; // Maximum number of seats allowed


function toggleSeat(seat) {
let istimd = localStorage.getItem('istimed');
    istimd = JSON.parse(istimd);
    let kop=localStorage.getItem('dateis');
    let idmloc=localStorage.getItem('ismloc2');
    let mlocs=JSON.parse(idmloc);
    let dby=localStorage.getItem('isdirb');
    let isbol=JSON.parse(dby);
    if ((istimd === true && kop!=' ' ) || isbol===true ){
    if (s.size < maxSeats || seat.classList.contains('selected')) {
        seat.classList.toggle('selected');
        sId = seat.id;
        finalS = booking(sId); //root line for booking seats
        sd1(finalS);
        sids = fun2(sId);
        console.log(sids.length);
        console.log(sids);
        var msg = document.createElement('p');

        if (sids.length <= 1) {
            const d2 = document.createElement('div');
            msg.innerHTML = sids;
            d2.append(msg);
            dhee.append(d2);
            console.log(d2.previousSibling);
        } else {
            if (sids.length < 7) {
                const d2 = document.createElement('div');
                msg.innerHTML = sids;
                d2.append(msg);
                dhee.append(d2);

                // Check if there is a previous sibling before removing it
                if (d2.previousSibling) {
                    console.log(d2.previousSibling.remove());
                }
            } else {
                // Remove the 'selected' class from the most recently selected seat
                seat.classList.remove('selected');
                alert('Hey, you can select only 6 seats at a time!');
            }
        }

        mDtls.append(dhee);
    } else {
        alert('You can select a maximum of ' + 6 + ' seats.');
    }
}
else {
  alert('please select Timigs');
}
}

function seatCountT(o) {
    console.log('Ticket counting begins');
    p1.innerHTML = 'Ticket Count: ' + o;
}

// Rest of your code...

function sd1(finalS){
for(let x of finalS){
sd=sd+x;
}
}
 var tc=finalS;

<!--               ticket Details                  -->

  var mDtls=document.createElement('div');
  mDtls.classList.add('mDtls');
  const tDtls=document.createElement('div');
  tDtls.classList.add('tDtls');
  const p1=document.createElement('p');
    p1.classList.add('p1');
    p1.innerHTML='Ticket Count:'+`${sx}`;
  const p2=document.createElement('p');
  p2.innerHTML='Normal:'+0;
  p2.classList.add('p2');

   const po=document.createElement('p');
 ;
  po.innerHTML='Exclusive:'+0;
  po.classList.add('po');

   const pt=document.createElement('p');
  pt.innerHTML='Gold:'+0;
  pt.style.color='#ecc18e';
  pt.classList.add('pt');

  const pk=document.createElement('p');
  const p3=document.createElement('p');
  console.log(finalS);
<!--  p3.innerHTML='Selected Seats:'+sd;-->

const dtn = document.createElement('button');
dtn.innerHTML = 'Catch Tickets';
dtn.classList.add('dtn');

mDtls.prepend(dtn);
  tDtls.append(p1,p2,p3,po,pt,pk);
  mDtls.append(tDtls);
dtn.style.cursor='pointer';

const ria=document.querySelector('.ria');
ria.style.height='435px';
ria.style.width='500px';


document.body.appendChild(ria);

var getcount = localStorage.getItem('count');

// Log the retrieved count for debugging
console.log("Retrieved count:", getcount);

// Convert the string to an integer
getcount = parseInt(getcount, 10); // Assuming base 10

// Assuming "dtn" is a reference to a button or element
dtn.addEventListener('click', function() {
var getcount = localStorage.getItem('count');

// Log the retrieved count for debugging
console.log("Retrieved count:", getcount);

// Convert the string to an integer
getcount = parseInt(getcount, 10);
    if (getcount <= 0) {
        // Log a message for debugging
        console.log("Disabling button because count is less than 0."+typeof getcount);

        // Disable the button if count is less than 0

    } else {
        // Log a message for debugging
        console.log("Enabling button and proceeding with actions.");

        displayMovieDetails();
        displayCount();
        displaySelectedSeats();
        displayModal();
    }
});
function displayMovieDetails() {
    const v2 = document.querySelector('.r2');
    const srcimg2 = document.createElement('img');
    srcimg2.classList.add('srci2');
    srcimg2.style.height = '250px';
    srcimg2.src = "movies-imgs/" + storeImgSrc;
    v2.prepend(srcimg2);

    const dm = document.querySelector('.dm');
    const dmd = localStorage.getItem('movieName');
    dm.innerHTML = 'Movie:' + `${dmd}`;
    const pt = document.createElement('p');
    pt.classList.add('pt');
    pt.innerHTML = 'English / 2D';
    dm.append(pt);
}

function displayCount() {
    const dc = document.querySelector('.dc');
    const dmc = localStorage.getItem('count');
    const mn1 = document.createElement('p');
    mn1.innerHTML = `${dmc}`;
    dc.append(mn1);
}

function displaySelectedSeats() {
    const da = document.querySelector('.da');
    const dma = localStorage.getItem('selectedseats');
    const mn2 = document.createElement('p');
    mn2.innerHTML = `${dma}`;
    da.append(mn2);
}

function displayModal() {
    const wm = document.querySelector('.wmd');
    const dys = localStorage.getItem('bloc');
    const tmz = localStorage.getItem('mloc');
    wm.innerHTML = dys + ' 2024 | ' + tmz + ' | ' + locap;

    ria.showModal();

    const fx = document.querySelector('.fa-x');
    fx.style.cursor = 'pointer';
    fx.addEventListener('click', () => {
     var mixd=tmz[0]+tmz[1];
     var mov=localStorage.getItem('movieName');
      var count=localStorage.getItem('count');
      var loc1=localStorage.getItem('location2');

      var loc2=localStorage.getItem('mloc');
      var loc3=localStorage.getItem('bloc');
      var location=loc3+" "+loc2+" "+loc1;
        var seatz=localStorage.getItem("selectedseats");
        const url = `isTexist.jsp?dataToSend=${encodeURIComponent(seatz)}&dayis=${encodeURIComponent(dys)}&timeis=${encodeURIComponent(mixd)}&mov=${encodeURIComponent(mov)}&count=${encodeURIComponent(count)}&location=${encodeURIComponent(location)}`;

        window.location.href=url;
           ria.close();
    });

}

console.log(p2.innerHTML+7);
var dhee = document.createElement('div');
dhee.classList.add('dhee');


const sad=document.createElement('div');
sad.classList.add('sad');
var toAr=[];

function addSeats2(finalS) {
    const qa = document.createElement('p');
    qa.classList.add('qa');
    qa.innerHTML = 'finals' + Array.from(finalS);

    // Assuming `sad` is a container where you want to append the `qa` element
    sad.append(qa);

    // Assuming `tDtls` is another container
    tDtls.append(sad);

    // Assuming `mDtls` is the main container
    mDtls.append(tDtls);

    if (qa.previousElementSibling) {
        // Remove the previous element if it exists
        qa.previousElementSibling.remove();
    }

    // Update the content of the element
    toAr=Array.from(finalS);
     if(Array.from(finalS).length-1<=1){
     localStorage.setItem('selectedseats',toAr.filter((d)=>d!=''));
    qa.innerHTML = 'Selected Seat:' + toAr.filter((d)=>d!='');

    }
    else{
    localStorage.setItem('selectedseats',toAr.filter((d)=>d!=''));
    qa.innerHTML = 'Selected Seats:' +toAr.filter((d)=>d!='');
    console.log(toAr.filter((d)=>d!=''))
    }

    // Return the size of the `finalS` set
    return finalS.size;
}

sx = addSeats2(finalS);

console.log(sx);

function seatAmount(t1,t2,t3){
return t1+t2+t3;
}
var fr=0;
var sids = [];
var selectSeat;
var room = document.querySelector('.vam');
const srcimg = document.createElement('img');
srcimg.src = "movies-imgs/" + storeImgSrc;
mDtls.prepend(srcimg);

room.prepend(mDtls);

function toggleDates(element) {
    // Remove 'selected' class from all divs
    const allDivs = document.querySelectorAll('.d');
    allDivs.forEach(div => {
        div.classList.remove('selected');
        console.log(div.classList.remove('selected'));
    });

    // Add 'selected' class to the clicked div
    element.classList.add('selected');
    timings();
}

function timings() {
    var t1 = document.createElement('div');
    t1.className = 'timings';
    t1.innerText = 'ti im';
}

function days() {
    const dayz = document.querySelector('.daysInfo ');
    daylist = ['Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun'];
    const datel = ['13', '14', '15', '16', '17', '18', '19'];
    var dlo = document.createElement('ol');
    dlo.classList.add('dlo');
    for (let i = 0; i < daylist.length && i < datel.length; i++) {
        var dli = document.createElement('li');
        dli.innerHTML = daylist[i] + datel[i];
        dli.addEventListener('click', function () {
          dayloc = this.innerHTML;
          localStorage.setItem('isdirb',false);
fre2.innerHTML='<i class="fa-solid fa-location-dot"></i>'+' '+dayloc+' '+locap;
            console.log(this.innerHTML);
            localStorage.setItem('dayis',dayloc);

             retrieveData2();
            fun1(dayloc);

        });
        dli.classList.add('dli');
        dlo.append(dli);
    }
    dayz.append(dlo);
    console.log(dli);
}
function retrieveData2() {
    let bloc2 = localStorage.getItem('dayis');
    let mloc2 = localStorage.getItem('dateis');
    localStorage.setItem('bloc', bloc2);
    localStorage.setItem('mloc', mloc2);
}

days();
const timez = {
    Mon13: [  '12:25PM', '03:11PM', '08:15PM'],
    Tue14: ['06:35AM', '09:55AM' ],
    Wed15: ['06:40AM',  '12:40PM', '11:35PM'],
    Thur16: ['06:50AM',  '08:15PM', '11:55PM'],
    Fri17: ['06:20AM', '09:25AM',   '05:20PM', '08:55PM'],
    Sat18: ['06:30AM',   '05:40PM' ],
    Sun19: [ '09:35AM','12:40PM',  '05:10PM',  '11:15PM'],
}

function fun1(dayloc) {
    const tInfo = document.querySelector('.timeInfo');
    const tol = document.createElement('ol');
    tol.classList.add('tol');

    let previousClickedItem = null;

    for (let i = 0; i < timez[dayloc].length; i++) {
        var tli = document.createElement('li');
        var anchor = document.createElement('a');
         let lm1 = timez[dayloc][i][0];
         let lm2=timez[dayloc][i][1];
         var dloc = dayloc;
         var mov2=localStorage.getItem('movieName');
         anchor.href = 'isTexist2.jsp?dloc=' + encodeURIComponent(dloc) + '&lm1=' + encodeURIComponent(lm1)+ '&lm2=' + encodeURIComponent(lm2)+'&mov2='+encodeURIComponent(mov2);
        anchor.innerHTML = timez[dayloc][i];

        tli.appendChild(anchor);

        tli.addEventListener('click', function () {
            localStorage.setItem('istimed', true);

            tmloc = anchor.innerHTML;

            // Reset color of the previous clicked item
            if (previousClickedItem) {
                previousClickedItem.style.color = '';
            }

            previousClickedItem = anchor;
            tmloc=this.textContent;
            console.log(tmloc);
            localStorage.setItem('dateis', tmloc);
            const gh = localStorage.getItem('dateis');
            localStorage.setItem('mloc',gh);


            if (gh) {
            localStorage.setItem('ismloc2',);
            var far=localStorage.getItem('mloc');
                fre2.innerHTML = '<i class="fa-solid fa-location-dot"></i>' + ' ' + dayloc + ' ' + far + ', ' + locap;
                retrieveData();
            } else {
                alert('select time');
            }

            this.style.color = 'red';
        });

        tol.append(tli);
    }

    tInfo.append(tol);

    // Remove the previous sibling
    const previousElement = tol.previousElementSibling;
    if (previousElement) {
        console.log('previous element' + previousElement.remove());
    }

    console.log(dateis);
}
//----------------------parameter passing through url
var setar=[];
function checkUrlParameter() {
    const urlParams = new URLSearchParams(window.location.search); // Parse URL parameters
    const isdirParam = urlParams.get("isdir"); // Get the value of the "isdir" parameter
    const seatsD=urlParams.get("seatsD");
 const isdirBoolean = isdirParam === "true";
// localStorage.setItem('isdirb',isdirBoolean);
    if (isdirBoolean) {
    let bloc=localStorage.getItem('bloc');
         let mloc=localStorage.getItem('mloc');
          localStorage.setItem('ismloc',true);
          localStorage.setItem('isdirb',true);
              fre2.innerHTML = '<i class="fa-solid fa-location-dot"></i>' + ' ' + bloc+ ' ' + mloc+ ', ' + locap;
              seatsD.split(',').forEach(function (s) {
                          setar.push(s);
                      });
sessionStorage.setItem('seatsD',setar);
disabling();
              console.log(setar);
        console.log("The value of 'isdir' is true "+typeof isdirBoolean);
    } else {
        console.log("The value of 'isdir' is not true or the parameter is not present");
    }
}

function retrieveData() {

    let bloc = localStorage.getItem('dayis');
    let mloc =localStorage.getItem('dateis') ;
    localStorage.setItem('bloc', bloc);
    localStorage.setItem('mloc', mloc);
}


var s= new Set();
var dataL=[];
var st=booking(sId)

//-----------------booking seats

var isTrue = false;
var setl = [];
var v = 0, l1 = 0, l2 = 0, l3 = 0;

function booking(sId) {
    if (!s.has(sId) && s.size<=6 && sId!==null && sId!=' ' ) {
        s.add(sId);
    } else {
        s.delete(sId);

    }

    addSeats2(s);
    sbt = [...s];
    console.log('Selected Seats: ' + sbt);

    // Update seat and ticket counts
    updateCounts();

    isTrue = true;
    seatCostR(s, sbt);

    return sbt;
}
//----------------disabling
function disabling() {
    var seatsD = sessionStorage.getItem('seatsD');
    if (seatsD) {
        var disabledSeats = seatsD.split(',');

        var selectedSeats = document.querySelectorAll(".seat");
        selectedSeats.forEach(element => {
            if (disabledSeats.includes(element.id)) {
                element.style.backgroundColor = 'black';
                element.style.color = 'green';
                element.disabled = true;
                element.style.cursor = 'not-allowed';

                // Assuming you added the event listener like this
                element.removeEventListener('click', toggleSeat);
            }
        });

        console.log('Disabled seats:', disabledSeats);
    } else {
        console.log('No seats to disable.');
    }
}



disabling();

function updateCounts() {

    let normalCount = 0;
    let exclusiveCount = 0;
    let goldCount = 0;

    s.forEach(item => {
        const c = item.charAt(0);

        if (['A', 'B', 'C', 'D'].includes(c)) {
            normalCount += 1;
        } else if (['E', 'F', 'G', 'H'].includes(c)) {
            exclusiveCount += 1;
        } else if (['I', 'J'].includes(c)) {
            goldCount += 1;
        }
    });

    p2.innerHTML = 'Normal: ' + normalCount;
    po.innerHTML = 'Exclusive: ' + exclusiveCount;
    pt.innerHTML = 'Gold: ' + goldCount;

    // Update ticket count
    var t1=normalCount*150;
    var t2=exclusiveCount*175;
    var t3=goldCount*275;
    let frw=seatAmount(t1,t2,t3);
    const tap2=document.querySelector('.tap2');
tap2.innerHTML=frw+'&#8377 ';
    localStorage.setItem('count',normalCount + exclusiveCount + goldCount);
     var tap6=document.querySelector('.tap6');
     tap6.innerHTML=frw+11+'&#8377 ';
    localStorage.setItem('tamount',frw);
    seatCountT(normalCount + exclusiveCount + goldCount,frw);
}

function seatCountT(o,frw) {
    console.log('Ticket counting begins');
    if(o>1){
    p1.innerHTML = 'Tickets Count: ' + o ;
    pk.innerHTML="Total Amount :"+frw;
    }
    else{
    p1.innerHTML = 'Ticket Count: ' + o;
     pk.innerHTML="Total Amount :"+frw;

    }
   if (o >= 6) {
        const seats = document.querySelectorAll('.seat');
        seats.forEach(seat => {
            seat.removeEventListener('click', toggleSeat);
            seat.title='max 6 only';
        });
        alert("You can select a maximum of 6 seats.");
    }
}

</script>
</body>
</html>
