function createTextbox(sid, x, y, w, h, texto, style, numeral)
{
	
	var f = document.createElement('IFRAME');

	f.setAttribute('id', sid);
	f.setAttribute('style', 'overflow:hidden;margin:0px; padding:0px; border:none; position:absolute; left:'+x.toString()+'px; top:'+y.toString()+'px; width:'+w.toString()+'px; height:'+h.toString()+'px;');
	
	
	f.onload = function()
	{
		var d = f.contentDocument || f.contentWindow.document;

		var x = d.createElement('INPUT');

		if(numeral)
		{
			x.setAttribute('type', 'number');
		}
		else
		{
			x.setAttribute('type', 'text');
		}

		x.setAttribute('value', texto);
		x.setAttribute('style', style);
		d.body.setAttribute('style','margin:0px; border:0px; padding:0px;');
		d.body.appendChild(x);
		
		x.focus();
		x.setAttribute('id', 'textbox');
		x.sid = sid;
		x.done = 0;

		x.addEventListener("blur",function()
		{
			x.done = 1;
		});
		
		x.addEventListener("keypress", function(e)
		{
			if (e.keyCode == 13)
			{
				this.blur();
			}
		});
	}

	document.body.appendChild(f);

	return 1;
}

function destroyTextbox(sid)
{
	var x = document.getElementById(sid);

	document.body.removeChild(x);	

	return 1;
}

function pollTextbox(sid)
{
	var f = document.getElementById(sid);
	var d = f.contentDocument || f.contentWindow.document;	

	var x = d.getElementById("textbox");

	if (x.done)
	{
		x.done = 0;

		return 1;
	}

	return 0;
}

function textTextbox(sid)
{
	var f = document.getElementById(sid);
	var d = f.contentDocument || f.contentWindow.document;	

	var x = d.getElementById("textbox");

	return x.value;	
}