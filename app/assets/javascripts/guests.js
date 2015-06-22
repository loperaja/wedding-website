(function() {
var ready;
	ready = function() {
  		var $input = $(".guests-autocomplete");

  		$input.typeahead(
				{//Abre argumentos de typehead
					autoSelect: true,
					afterSelect: function(item){
						$.getScript($input.data("source")+"/"+item.id+"/edit");
						$input.fadeOut(2000);
					},
					source: 
						function(query, process) {
							return $.getJSON(
									$input.data("source"), 
									{query: query},
									function(data) {
										return process(data);
									}
							);
						}
				}
					
      		);
   	};


$(document).ready(ready);
$(document).on('page:load', ready);
}).call(this);
