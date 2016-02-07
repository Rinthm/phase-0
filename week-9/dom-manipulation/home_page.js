
// DOM Manipulation Challenge


// I worked on this challenge with Ryan Salerno.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";



// Release 1:
document.getElementById("release-1").style.display = "none";



// Release 2:
//document.getElementsByTagName("h1").innerHTML = "I completed release 2.";
// We tried targeting it by the tag, but realized we needed to add the "release-2" ID to the market and select it that way. 

document.getElementById("release-2").innerHTML = "I completed release 2.";


// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var release4 = document.getElementsByClassName("release-4")
for(var i=0; i<release4.length; i++) { 
  release4[i].style.fontSize='2em';
}

// Release 5:

var release5 = document.getElementById("hidden");
document.body.appendChild(release5.content);

