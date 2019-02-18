class BuyBooksController < ApplicationController

 def new
 	@buy = BuyBook.new
 	debugger
 	@book = Book.find(params[:book])
 	@quant = @book.quantity
 	@buy.book = params[:book]
 	@auth_user = User.find(params[:id])
 	@auth_name = User.select(:name , :id ).where("name !=?" ,  @auth_user.name)
 end

 def create
	@buy = BuyBook.new(buy_params)
	@book = Book.find(params[:buy_book][:book_id])
	if @buy.save
		@book.quantity = @book.quantity - @buy.quantity
		Book.find(params[:buy_book][:book_id]).update_attribute(:quantity , @book.quantity)
		redirect_to books_index_path
	else
		render 'new'
	end
 end

  def index
  	@book = params[:book_id]
  	@buybook = BuyBook.where( book_id: @book)
  	@all_user = []
  	@buybook.each do |bb|
  		@user = bb.user.name
  		@all_user.push(@user)
  	end
  	respond_to do |format|
	 		format.json {render json: { :book => @buybook ,
	 									:user => @all_user}
	 					}
	end
  end

  private
  def buy_params
  	params.require(:buy_book).permit(:quantity , :user_id , :book_id);  	
  end
end
