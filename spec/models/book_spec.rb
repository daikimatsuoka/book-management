require 'rails_helper'

RSpec.describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end

  describe '書籍投稿機能' do
    context '投稿できるとき' do
      it 'すべて正しく入力されていれば登録できる' do
        expect(@book).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'titleが空では登録できない' do
        @book.title = ''
        @book.valid?
        expect(@book.errors.full_messages).to include "Title can't be blank"
      end

      it 'authorが空では登録できない' do
        @book.author = ''
        @book.valid?
        expect(@book.errors.full_messages).to include "Author can't be blank"
      end

      it 'publisherが空では登録できない' do
        @book.publisher = ''
        @book.valid?
        expect(@book.errors.full_messages).to include "Publisher can't be blank"
      end

      it 'category_idが1では登録できない' do
        @book.category_id = 1
        @book.valid?
        expect(@book.errors.full_messages).to include "Category can't be blank"
      end
      
      it 'synopsis_explanationが空では登録できない' do
        @book.synopsis_explanation = ''
        @book.valid?
        expect(@book.errors.full_messages).to include "Synopsis explanation can't be blank"
      end

      it 'book_imageが空では登録できない' do
        @book.book_image = nil
        @book.valid?
        expect(@book.errors.full_messages).to include "Book image can't be blank"
      end

      it 'userが紐付いていなければ登録できない' do
        @book.user = nil
        @book.valid?
        expect(@book.errors.full_messages).to include "User must exist"

      end
    end
  end

end
