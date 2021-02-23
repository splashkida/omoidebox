class HomeController < ApplicationController
  before_action :search_memory, only: [:index, :search]

  def index
    @memory = Memory.order("created_at DESC")
    set_memory_column 
  end

  def search
    @results = @p.result  # 検索条件にマッチした商品の情報を取得
  end

  private

  def search_memory
    @p = Memory.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_memory_column
    @memory_place = Memory.select("place").distinct  # 重複なくnameカラムのデータを取り出す
  end

end
