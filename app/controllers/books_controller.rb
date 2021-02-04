class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :show, :destroy]
  before_action :move_to_index, except: [:index, :show, :search]
  
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

  def destroy
    if user_signed_in? && current_user.id == @book.user.id
      @book.destroy
      redirect_to root_path
    else
      redirect_to book_path(@book.id)
    end
  end

  def search
    @books = Book.search(params[:keyword])
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

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end