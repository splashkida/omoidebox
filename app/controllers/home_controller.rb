class HomeController < ApplicationController
  
  def index
    @memory = Memory.order("created_at DESC")
  end
end
