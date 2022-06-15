class  SessionsController < ApplicationController
    def create
        user = Admin.find_by(email: params[:session][:email].downcase)
        puts user
        # if user && user.authenticate(params[:session][:password])
        if user
          session[:user_id] = user.id
          flash[:notice] = "Logged in as Admin."
          redirect_to home_link_path
        else
          flash.now[:alert] = "There was something wrong with your login details."
          render 'new'
        end
      end
       
      def destroy
        session[:user_id] = nil
        flash[:notice] = "You have been logged out."
        redirect_to root_path
      end
end