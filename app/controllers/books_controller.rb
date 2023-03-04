class BooksController < ApplicationController
  
  #投稿作成機能
  def create
    @book = Book.new(book_params)
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
  end
  
  #投稿一覧・作成ページ
  def index
    @book_new = Book.new
    @books = Book.all
  end
  
  #投稿詳細ページ
  def show
    @book = Book.find(params[:id])
  end
  
  private
  
  def book_params
    params.require(:book).parmit(:title, :body)
  end
  
end
