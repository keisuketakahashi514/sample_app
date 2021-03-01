class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    # 1.データを新規登録する為のインスタンス作成
    list = List.new(list_params)
    # 2.データをデータベースに保存する為のsaveメソッド実行
    list.save
    # 3.トップ画面へリダイレクト
    redirect_to '/top'
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
