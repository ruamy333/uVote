var element_count = 3;

function add_element(obj)
{
	var div = document.createElement("div");
	div.className  = "radio";
	
	var label = document.createElement("label");
	var radio = document.createElement("input");
	radio.type = "radio";
	radio.disabled  = true;
	
	var text = document.createElement("input");
	text.type = "text";
	text.className  = "form-control";
	text.name = "option[]";
	text.placeholder = "選項";

	label.appendChild(radio);
	label.appendChild(text);
	div.appendChild(label);
	obj.parentNode.appendChild(div);
	
	element_count++;
}