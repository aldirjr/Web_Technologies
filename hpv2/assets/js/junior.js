function triggerHireMessage(){
	document.getElementById("hoverMe").addEventListener("mouseover",popup);
	function popup(){
		alert("This is my best picture! Hire me! You can find a link to my CV at the bottom.");
	}
}