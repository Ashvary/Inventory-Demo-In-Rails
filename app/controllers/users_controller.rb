class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token

  def index
  @users = User.all 

  respond_to do |format|
    format.html
    format.xlsx
    end

  end

  def new

  	@user = User.new
  end

  def create

  	@user = User.new(user_params)
    
  	if @user.save
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def edit

  	@user = User.find(params[:id])
  end

  def update
	@user = User.find(params[:id])
    if @user.update_attributes(user_params)
     	redirect_to root_path
   	else
   		render 'edit'
   	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to root_path
  end

  def drop  
      @state = State.where(country_id: params[:selected_id])
      render json: @state
  end

  def dropy
    @city = City.where(state_id: params[:city_selected])
     render json: @city
  end

  private

  def user_params
  	params.require(:user).permit(:name , :phone , :email , :address , :avatar , :country_id , :state_id , :city_id)
  end
end
