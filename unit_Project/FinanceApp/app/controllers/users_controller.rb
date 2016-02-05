class UsersController < ApplicationController
	
	def index
    end
	
    def new
        @user = User.new
    end
	
	def show
        @user = User.find(params[:id])
    end
	
	def create
        @user = User.new(user_params)    # Not the final implementation!
		if @user.save
            # Handle a successful save.
			login @user
            #flash[:success] = "Welcome to the Sample App!"
            redirect_to @user
	    elsif @user.errors.any?
		    render template: 'shared/error_messages.html', :locals => {:error_message => @user.errors.full_messages.first}
        else
            render 'new'
        end
    end
	
	private

        def user_params
            params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
        end
	
end
