$(function(){

	var DogFilter = function() {
		this.allDogs = $(".dogs-list").data("dogs");
	}

	DogFilter.prototype.setListeners = function(){
		var self = this;
		$('select').on('change', function(event){
			var filter_by = event.currentTarget.id;
	    	var filter_value = event.currentTarget.value;
	    	switch (filter_by) {
	    		case "gender":
		    		self.filterGender(filter_value)
		    		break;
	    		case "age":
	    			console.log("age");
	    			break;
	    		case "size":
	    			console.log("size");
	    			break;
	    	}
		});
	}

	DogFilter.prototype.filterGender = function(value) {
		var results = []
		var newValue = value.charAt(0).toUpperCase() + value.slice(1);
		$(this.allDogs).each(function(index){
			debugger;
			if (this.gender == newValue) {
				results.push(this);
			}
		})
		console.log(results);
	}

	DogFilter.prototype.renderDog = function(dog) {
		
	}

	var dogFilter = new DogFilter();
	dogFilter.setListeners();

    
})