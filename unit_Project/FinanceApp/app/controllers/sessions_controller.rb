class SessionsController < ApplicationController

    def new
    end
	
	def create
        #user = User.find_by(email: params[:session][:email].downcase)
		user = User.find_by(name: params[:session][:name].downcase)
        if user && user.authenticate(params[:session][:password])
            # Log the user in and redirect to the user's show page.
			login user
            redirect_to user
        else
            # Create an error message.
			#flash[:danger] = 'Invalid email/password combination' # Not quite right!
			render template: 'shared/error_messages.html', :locals => {:error_message => "Invalid username and/or password."}
            #render 'new'
        end
    end

    def destroy
	    logout
        redirect_to root_url
    end
end
