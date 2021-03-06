class PersonsController < ApplicationController
    def show
        # this is just a first, initial show method to get everything working...
		@person = Person.find( params[ :id ] )
    end
	
	def index
        @persons = Person.all
    end
	
	def create
        Person.create( params.require( :person ).permit( :name, :alive, :age ))
        redirect_to "/persons"
    end
	
	def destroy
        Person.find( params[ :id ] ).destroy
        redirect_to "/persons"
    end
	
	def edit
        @person = Person.find( params[ :id ] )
    end

    def update
        @person = Person.find( params[ :id ] )
        @person.update_attributes( params.require(:person).permit( :name, :alive, :age) )
        redirect_to "/persons/#{@person.id}"
    end
	
end
