// JS config file

// Zebra Stripes on table rows
 $(document).ready(function(){
   $("tbody tr").mouseover(function(){$(this).addClass("over");}).mouseout(function(){$(this).removeClass("over");});
   $("tr:even").addClass("alt");

   // Cufon
    Cufon.now(); 
   		Cufon.replace('h1', {
				fontFamily: 'ChunkFive',
				textShadow: '#df8713 2px 2px'
		});

		Cufon.replace('h2', {
				fontFamily: 'PT Sans',		
				textShadow: '#a15c00 1px 1px'
		});
 });