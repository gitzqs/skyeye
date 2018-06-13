    $(function () {
    	
    	function replaceAll(str,s1,s2) {
		    return str.replace(new RegExp(s1,"gm"),s2);
		}
    	
    	function setTitle(){				
				$.ajax({
		            type: "POST",
		            url: "/platform/getPlatform",
		            async:false,		            
		            dataType: "text",
		            success: function(data){
		            	//console.log('platform name='+data);
		            	//$(document).attr('title',data);
		            	document.title = replaceAll(data,"\"","");
		            }
		        });				
    	}
		setTitle();
    });