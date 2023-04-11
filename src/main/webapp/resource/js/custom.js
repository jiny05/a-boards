/**
 * 
 */

//nav
$(".ad").mouseover(function(){
    $(this).find(".submenu").stop().slideDown(200);
});
$(".ad").mouseout(function(){
    $(this).find(".submenu").stop().slideUp(200);
});

//popup

$(".submenu").click(function(){
	console.log("1");
    $(".layer_bg").css("display","block");
});
$(".layer_close").click(function(){
    $(".layer_bg").css("display","none");
});