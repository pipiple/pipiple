class SubmitsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :index]

  def index
    @submits = Submit.all.order("id DESC").page(params[:page]).per(5)
  end

  def edit
    @submits = Submit.find(params[:id])
  end

  def list
  end

  def new
    @submits = Submit.new
    @submits.date_spots.build
  end

  def search_show
    @submits = Submit.search(params[:area_search],params[:purpose_search],params[:price_search]).order("id DESC")
    @submits = Kaminari.paginate_array(@submits).page(params[:page]).per(5)
    if !@submits
      @submits = Submit.all
    end
  end

  def show
    @submit = Submit.find(params[:id])
  end

  def area_search
    @submits = Submit.where(area: params[:search]).order("id DESC").page(params[:page]).per(5)
    @title = params[:search]

    render "search_show"
  end

  def purpose_search
    @submits = Submit.joins(:purposes).where(purposes: {purpose: params[:search]}).order("id DESC").page(params[:page]).per(5)
    #Submitモデルのpurposeカラムの告白が含まれているものをwhereで探し出す
    @title = params[:search]

    render "search_show"
  end

  def mood_search
    @submits = Submit.where(mood: params[:search]).order("id DESC").page(params[:page]).per(5)
    @title = params[:search]

    render "search_show"
  end

  def create
    @submit = Submit.new(submit_params)
    @submit.user_id = current_user.id
    #新しい投稿の保存に成功した場合
    if @submit.save
        redirect_to submit_path(@submit)
    #新しい投稿の保存に失敗した場合
      else
        flash[:notice]="⚠️投稿に失敗しました。<br>※必須項目が全て埋まっているか確認してください。"
        #もう一回投稿画面へ
        redirect_to action: "new"
    end
  end

  def update
    @submit = Submit.find(params[:id])
    @submit.update(submit_params)
    if @submit.save
        redirect_to submit_path(@submit)
    #新しい投稿の保存に失敗した場合
      else
        flash[:notice]="⚠️更新に失敗しました。<br>※必須項目が全て埋まっているか確認してください。"
        #もう一回投稿画面へ
        redirect_to action: "edit"
    end
  end

  def destroy
    @submit = Submit.find(params[:id])
    if @submit.user_id == current_user.id
      @submit.destroy
      redirect_to controller: :tops, action: :index
    end
  end

  private
  def submit_params
    params.require(:submit).permit(:name, :area, :mood, :price, :overview, {:purpose_ids=> [] }, date_spots_attributes: [:id, :name,
      :description, :image, :category, :url, :_destroy])
  end

  def purpose_params
    params.require(:submit).permit(:purposes)
  end


end
