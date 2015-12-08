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
    params.require(:book).permit(:title, :author, :book_cover, :list_num)
  end
end
