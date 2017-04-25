class StoreController < ApplicationController
  include SessionCount
  include CurrentCart

  before_action :inc_ind_counter, only: [:index]
  before_action :set_cart
  skip_before_action :authorize

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end
end
