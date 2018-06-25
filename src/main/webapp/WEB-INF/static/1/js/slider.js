function $(id){return document.getElementById(id);}
var js_box = $("js_box");
var slider_main_block = $("slider_main_block");
var imgs = slider_main_block.children;
var slider_ctrl=$("slider_ctrl");

for(var i=0;i<imgs.length;i++){
	var span = document.createElement("span");
	span.className = "slider-ctrl-con";
	span.innerHTML = imgs.length-i;
	slider_ctrl.inserBefore(span,slider_ctrl_children[1]);	
}

var iNow = 0;
for(var k in spans){
	spans[k].onclick = function(){
		if(this.className == "slider-ctrl-prev"){
			animate(imgs[iNow],{left:scrollWidth});
			--iNow<0 ? iNow= imgs.length - 1 :iNow;
			imgs[iNow].style.left = -scrollWidth + "px";
			animate(imgs[iNow],{left:0});
			setSquare();
		}else if(this.className == "slider-ctrl-next"){
			autoplay();
		}
		else{
			var that = this.innerHTML - 1;
			if( that > iNow){
				animate(imgs[iNow],{left:-scrollWidth});
				imgs[that].style.left = scrollWidth + "px";
				
			}else if(that < iNow){
				animate(imgs[iNow],{left:scrollWidth});
				imgs[that].style.left = -scrollWidth + "px";
			}
			iNow = that;
			animate(imgs[iNow],{left:0});
			setSquare();
		}
	}
}
function setSquare(){
	for(var i = 1;i<spans.length-1;i++){
		spans[i].className = "slider-ctrl-con";
	}
	spans[iNow+1].className = "slider-ctrl-con current";
}
var timer = null;
timer = selInterval(autoplay,2000);

function autoplay(){
	animate(imgs[iNow],{left:-scrollWidth});
	++iNow > imgs.length - 1 ? iNow = 0 : iNow;
	imgs[iNow].style.left = scrollWidth + "px";
	animate(imgs[iNow],{left:0});
	setSquare();
}

js_box.onmouseover = function(){
	clearInterval(timer);
}
js_box.onmouseout = function(){
	clearInterval(timer);
	timer = setInterval(autoplay,2000);
}








