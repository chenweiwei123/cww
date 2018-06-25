function animate(obj,json,fn) 
{  
    clearInterval(obj.timer);//清除定时器，这一步是有影响的！
    // 给对象设置一个定时器！
    obj.timer = setInterval(function() 
    {
        var flag = true; //用来判断定时器什么时候停止！

        //for in 循环，遍历json对象！ 
        for(var attr in json){   
            
            var current = 0;
            // 当前的状态，这一步很重要！
            if(attr == "opacity")
            {
                current = parseInt(getStyle(obj,attr)*100);
            }
            else
            {
                current = parseInt(getStyle(obj,attr));
            }
            // 步长！
            var step = ( json[attr] - current) / 10;  
            step = step > 0 ? Math.ceil(step) : Math.floor(step);

           // 判断透明度！
            if(attr == "opacity")  
            {   //in是一个二元的运算符，意思是第一个操作数的值是第二个操作数的属性名，会返回true！
                // 这样就可以判断这个对象的样式上中是否有opacity的属性了！
                if("opacity" in obj.style) 
                {
                    // 如果条件成立，设置透明度值
                    obj.style.opacity = (current + step) /100;
                }
                else
                {  
                    // 如果不成立，则使用滤镜功能！
                    
                    obj.style.filter = "alpha(opacity = "+(current + step)+")";
                    
                }
            }
            
            // 层叠！
            else if(attr == "zIndex")
            {
                obj.style.zIndex = json[attr];
            }
            else
            {
                obj.style[attr] = current  + step + "px" ;
            }
            // 截止值!
            if(current != json[attr])  
            {
                flag =  false;
            }
        }
        if(flag)  
        {
            clearInterval(obj.timer);
            // 如果有回调就使用回调！
            if(fn)   
            {
                fn(); 
            }
        }
    },5)
}
// 考虑兼容性问题！
function getStyle(obj,attr) {  
    if(obj.currentStyle)  
    {
        return obj.currentStyle[attr]; 
    }
    else
    {
        return window.getComputedStyle(obj,null)[attr]; 
    }
}