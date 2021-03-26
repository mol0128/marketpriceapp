class ItemsController < ApplicationController
  # before_action :authenticate_user!
  def search
    if params[:keyword].present?
      items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
      items_full = []
      items.each do |item|
        items_full.push(item)
      end
      if items_full.present?
       @items = Kaminari.paginate_array(items_full).page(params[:page]).per(10)
      end
    else
      render :search
    end
  end
end