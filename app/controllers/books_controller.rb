class BooksController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    @featured_book = Book.featured_book
    @future_books = Book.future_books
    @past_books = Book.past_books
  end

  def show
    @book = Book.find(params[:id])
    @topics = Topic.where(book_id: params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path, :notice => "Book created successfully"
    else
      render :new
    end
  end

  def edit
      @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)

    if @book.update_attributes(book_params)
      redirect_to root_path, notice: "Book information updated successfully"
    else
      render :edit, notice: "Book information did not update"
    end
  end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy

      if @book.destroy
        redirect_to root_path, notice: "Book was successfully deleted"
      else
        render :edit, notice: "Book was not deleted"
      end
    end

  private
  def book_params
    params.require(:book).permit(:title, :author, :book_cover, :list_num, :status)
  end
end
