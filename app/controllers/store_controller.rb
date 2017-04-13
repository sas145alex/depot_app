class StoreController < ApplicationController
  include SessionCount

  before_action :inc_ind_counter, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
