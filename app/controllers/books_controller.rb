class BooksController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    @books = Book.all
    @books_list = Book.all.order(list_num: :asc)
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, :notice => "Book was successfully created"
    else
      render :new
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :book_cover, :list_num)
  end
end
