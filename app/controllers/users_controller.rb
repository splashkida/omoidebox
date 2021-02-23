class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @memories = current_user.memories
  end
end
