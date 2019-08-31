class TopsController < ApplicationController
  def index
    @submits = Submit.limit(3).order("id DESC")

    @purposes = Purpose.all

    if request.post?
     @search = Submit.search(params[:area_search],params[:purpose_search],params[:mood_search],params[:price_search])
     if !@search
       @search = Submit.all
     end
   end
  end
end
