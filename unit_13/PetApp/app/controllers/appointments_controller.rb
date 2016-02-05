class AppointmentsController < ApplicationController

    def show
        # this is just a first, initial show method to get everything working...
		@appointment = Appointment.find( params[ :id ] )
    end
	
	def index
        @appointments = Appointment.all
    end
	
	def create
        Appointment.create( params.require( :appointment ).permit( :PetName, :Owner, :PetWalker, :ApptDate, :ApptLength ))
        redirect_to "/appointments"
    end
	
	def destroy
        Appointment.find( params[ :id ] ).destroy
        redirect_to "/appointments"
    end
	
	def edit
        @appointment = Appointment.find( params[ :id ] )
    end

    def update
        @appointment = Appointment.find( params[ :id ] )
        @appointment.update_attributes( params.require( :appointment ).permit( :PetName, :Owner, :PetWalker, :ApptDate, :ApptLength ) )
        redirect_to "/appointments/#{@appointment.id}"
  end
	
	
end
