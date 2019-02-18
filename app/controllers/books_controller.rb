class BooksController < ApplicationController
  def new
  @book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	if @book.save
  		redirect_to books_index_path
  	else
  		render 'new'
  	end
  end

  	def index
  		@books = Book.all
		@buy = BuyBook.new
	end
	def drop
		@book = Book.find(params[:my_id])
	 	@auth_id = @book.user_id
	 	@auth_user = User.find(@auth_id)
	 	@auth_name = User.select(:name , :id ).where("name !=?" ,  @auth_user.name)
	 	respond_to do |format|
	 		format.json {render json: { :auth => @auth_name ,
	 									:quant => @book.quantity}
	 					}
	 	end
	end
	
  private
	def book_params
		params.require(:book).permit(:name , :isbncode , :quantity , :user_id)
	end
end
