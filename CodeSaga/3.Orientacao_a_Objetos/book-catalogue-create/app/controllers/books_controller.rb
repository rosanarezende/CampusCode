class BooksController < ApplicationController  
  def show
    @book = Book.find(params[:id])
  end

  def new
  end
  
  def create
    @book = Book.new(params.require(:book).permit(:title, :author, :publication_year, :abstract, :genre))
    if 
      @book.save
      redirect_to book_path(Book.last)
    else
      flash.now[:error] = "Todos campos devem ser preenchidos."
      render action: "new"
    end
  end
end
