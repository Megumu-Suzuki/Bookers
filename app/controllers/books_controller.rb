class BooksController < ApplicationController
  def top
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id)
    else
      render ("/books")
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    redirect_to book_path(book.id), notice: 'Book was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    if redirect_to books_path, notice: 'Book was successfully destroyed.' #notice: `投稿されました`がサクセスメッセージ
    else
      render :new
    end
  end

  private
  def book_params
    params.permit(:title, :body)
  end


end
