$(function(){

	var DogFilter = function() {
		this.allDogs = $(".dogs-list").data("dogs");
	}

	DogFilter.prototype.setListeners = function(){
		var self = this;
		$('select').on('change', function(event){
			var filter_by = event.currentTarget.id;
	    	var filter_value = event.currentTarget.value;
	    	self.getFilteredList(filter_by, filter_value);
		});
	}

	DogFilter.prototype.getFilteredList = function(filter, value) {
		var newValue = value.charAt(0).toUpperCase() + value.slice(1);
		var data = { filter: filter, value: newValue}
		
		$.ajax({
			url: '/filter',
			data: data,
			dataType: 'json',
			success: function(response) {
				console.log(response);
			},
			error: function(error) {
				console.log(error);
			}
		});
	};

	var dogFilter = new DogFilter();
	dogFilter.setListeners();

    
})