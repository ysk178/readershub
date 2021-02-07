require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @book = FactoryBot.build(:book, user_id: @user.id)
  end

  it '全ての項目が存在すれば登録できること' do
    expect(@book).to be_valid
  end
  it '書籍画像がないと登録できない' do
    @book.image = nil
    @book.valid?
    expect(@book.errors.full_messages).to include("Image can't be blank")
  end

  it 'タイトルが空の場合は登録できない' do
    @book.title = ''
    @book.valid?
    expect(@book.errors.full_messages).to include("Title can't be blank")
  end

  it '著者名が空の場合は登録できない' do
    @book.author = ''
    @book.valid?
    expect(@book.errors.full_messages).to include("Author can't be blank")
  end

  it 'ジャンルの情報がないと登録できない' do
    @book.genre_id = ''
    @book.valid?
    expect(@book.errors.full_messages).to include("Genre can't be blank", 'Genre is not a number')
  end

  it 'ジャンルの情報が1だと登録できない' do
    @book.genre_id = 1
    @book.valid?
    expect(@book.errors.full_messages).to include('Genre must be other than 1')
  end

  it '要約が空の場合は登録できない' do
    @book.summary = ''
    @book.valid?
    expect(@book.errors.full_messages).to include("Summary can't be blank")
  end

  it '感想が空の場合は登録できない' do
    @book.impressions = ''
    @book.valid?
    expect(@book.errors.full_messages).to include("Impressions can't be blank")
  end
end
