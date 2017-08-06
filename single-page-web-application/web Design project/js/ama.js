val= 1;
next= 2;

$(document).ready(function(){
	$(".container1 > img").fadeOut(0);
	$(".container1 > #1").fadeIn(30);
	start();
});



function start(){
count=5;

loop= setInterval(function(){
	if(next >count){
		next=1;
		val=1;
	}
	
	$(".container1> .img").fadeOut(0);
	$(".container1 > .img#" + next).fadeIn(100);
	
	val = next;
	next = next +1;
	
},4000)
}

function myFunction(id){
	breakloop(); 
	$(".container1> .img").fadeOut(0);
	$(".container1 > .img#" + id).fadeIn(100);
	
	val = id;
	next= id+ 1;
	start();
}

function breakloop(){
	
	window.clearInterval(loop);
} 

