
$(document).ready(function ()
	{

		$("#content").keypress(function (event)
			{

				if (event.keyCode == 13)
				{

					$("#saveMessageBtn").trigger("click");

				}

			});
	});