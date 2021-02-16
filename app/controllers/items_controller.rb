class ItemsController < ApplicationController
  def search
    if params[:keyword].present?
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    else
      render :search
    end
  end
end