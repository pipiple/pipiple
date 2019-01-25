class TopsController < ApplicationController
  def index
    @purposes = Purpose.all
    @search = Submit.all
    if request.post?
     @search = Submit.search(params[:area_search],params[:purpose_search],params[:mood_search],params[:price_search])
     if !@search
       @search = Submit.all
     end
   end
  end
end
