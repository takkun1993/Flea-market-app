class UsersController < ApplicationController
  def index
    @parents = Category.where(ancestry: nil)
  end
  def new_users_info
  end
  def new_users_address
  end
  def sign_in
  end
end
