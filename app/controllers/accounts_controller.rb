class AccountsController < ApplicationController
  
 
  def index
  accounts = current_user.accounts

            render json: accounts 
  end

  
end