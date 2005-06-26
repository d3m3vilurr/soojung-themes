function fold_menu(objid) {
	objs = document.getElementById('menu').getElementsByTagName('UL');
	for(i=0; i<objs.length; i++) {
		obj = objs[i];
		if(obj.className == 'div_hide' 
                || obj.id == objid) continue;
        obj.className = 'div_hide';
	}
    cal = document.getElementById('div_calendar');
    if(cal.id != objid) {
        cal.className = 'div_hide';
    }
	document.getElementById(objid).className =
		(document.getElementById(objid).className ? '' : 'div_hide');
	return false;    
}

function copy_clip(copyText){
	if(window.clipboardData){ // IE
		window.clipboardData.setData('Text',copyText);
	}
	else if (window.netscape){ // Mozilla
		netscape.security.PrivilegeManager.enablePrivilege('UniversalXPConnect');
          
		// Store support string in an object.
		var str = 
			Components.classes["@mozilla.org/supports-string;1"]
			.createInstance(Components.interfaces.nsISupportsString);
		if (!str) return false;
		str.data=copyText;
          
		// Make transferable.
		var trans = 
			Components.classes["@mozilla.org/widget/transferable;1"]
			.createInstance(Components.interfaces.nsITransferable);
		if (!trans) return false;
          
		// Specify what datatypes we want to obtain, which is text in this case.
		trans.addDataFlavor("text/unicode");
		trans.setTransferData("text/unicode",str,copyText.length*2);
          
		var clipid=Components.interfaces.nsIClipboard;
		var clip =
			Components.classes["@mozilla.org/widget/clipboard;1"]
			.getService(clipid);
		if (!clip) return false;
          
		clip.setData(trans,null,clipid.kGlobalClipboard);
	}
	alert("Copied into a ClipBoard");
	return false;
}

