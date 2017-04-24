class StoreController < ApplicationController
  include SessionCount
  include CurrentCart

  before_action :inc_ind_counter, only: [:index]
  before_action :set_cart
  skip_before_action :authorize

  def index
    @products = Product.order(:title)
  end
end
