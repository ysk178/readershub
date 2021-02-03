class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :show, :destroy]
  
  def index
    @books = Book.order('created_at DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end 
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def show
  end

  private

  def book_params
    params.require(:book).permit(
      :title, :author, :genre_id, :summary, :impressions, :image
    ).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end