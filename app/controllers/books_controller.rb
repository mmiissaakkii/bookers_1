class BooksController < ApplicationController

  #投稿作成機能
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to 'show'
  end

  #投稿編集ページ
  def edit
    @book =Book.find(params[:id])
  end

  #投稿編集機能
  def update
    @book =Book.find(params[:id])
  end

  #投稿削除機能
  def destroy
    @book =Book.find(params[:id])
    @book.detroy
  end

  #投稿一覧・作成ページ
  def index
    @book = Book.new
    @books = Book.all
  end

  #投稿詳細ページ
  def show
    @book = Book.find(params[:id])
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
