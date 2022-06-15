class HomeController < ApplicationController
  def index
  end
  def about
  end
  def history
    
  end
  def login

    session_params = params.permit(:email, :password)
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Login is invalid!"
      redirect_to root_path
    end
  end
  def link
    
  end
  def orderhistory
    @giftcards = Giftcard.all
    @total_amt = Giftcard.sum(:gift_card_value)
    @total_com = Giftcard.sum(:commission)
  end
end
