class LikesController < ApplicationController
before_action :set_tweet

  def create
    like = current_user.likes.build(book_id: params[:book_id])
    like.save
    render 'create.js.erb'
  end

  def destroy
    like = Like.find_by(book_id: params[:book_id], user_id: current_user.id)
    like.destroy
    render 'destroy.js.erb'
  end

  def set_tweet
    @book = Book.find(params[:book_id])
  end
end
