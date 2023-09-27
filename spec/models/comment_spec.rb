require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿' do
    context 'コメント投稿できる場合' do
      it 'commentが存在していれば登録できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメント投稿できない場合' do
      it 'commentが存在していなければ登録できない' do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Comment can't be blank"
      end

      it 'userが紐付いていなければ登録できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include "User must exist"
      end

      it 'bookが紐付いていなければ登録できない' do
        @comment.book = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Book must exist"
      end
    end
  end
end
