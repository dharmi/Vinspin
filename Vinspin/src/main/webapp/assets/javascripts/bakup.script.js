$(document).ready(function(){

	$("a.switcher").bind("click", function(e){
		e.preventDefault();
		
		var theid = $(this).attr("id");
		var theproducts = $("ul#products");
		var classNames = $(this).attr('class').split(' ');
		
		var gridthumb = "/assets/grid-default-thumb.png";
		
	
		if($(this).hasClass("active")) {
			// if currently clicked button has the active class
			// then we do nothing!
			return false;
		} else {
			// otherwise we are clicking on the inactive button
			// and in the process of switching views!

  			if(theid == "gridview") {
				$(this).addClass("active");
				$("#gridview").removeClass("active");	
			
				$("#gridview").children("img").attr("src","/assets/grid-view.png");
			
				var theimg = $(this).children("img");
				theimg.attr("src","/assets/grid-view-active.png");
			
				// remove the list class and change to grid
				theproducts.removeClass("list");
				theproducts.addClass("grid");
			
				// update all thumbnails to larger size
				$("img.thumb").attr("src",gridthumb);
			}
			
			else if(theid == "listview") {
				$(this).addClass("active");
				$("#gridview").removeClass("active");
					
				$("#gridview").children("img").attr("src","/assets/account_menu.png");
					
				var theimg = $(this).children("img");
				theimg.attr("src","/assets/grid-view-active.png");
					
				// remove the grid view and change to list
				theproducts.removeClass("list")
				theproducts.addClass("grid");
				// update all thumbnails to smaller size
				$("img.thumb").attr("src",listthumb);
			} 
		}

	});
});