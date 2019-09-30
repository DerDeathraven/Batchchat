		window.resizeTo(374, 100);

		function closeHTA(reply) {
		    var fso = new ActiveXObject("Scripting.FileSystemObject");
		    fso.GetStandardStream(1).WriteLine(reply);
		    window.close();
		}
		function key(event) {
		var	x = event.keyCode;
		if (x == 13){
			closeHTA(document.getElementById("nach").value)
		
		}
		
		}
		function red() {
			var content = document.getElementById('close');
			content.style.cssText ="background: red;";
			
	}
		function white() {
			var content = document.getElementById('close');
			content.style.cssText ="background: inherit;";
			
	}