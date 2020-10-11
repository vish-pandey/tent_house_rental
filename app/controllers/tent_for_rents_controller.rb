class TentForRentsController < ApplicationController
  include ProductUtils
  before_action :products, only: [:index]

  def index;end

  def reset_data
  	Product.destroy_all
  	Transaction.destroy_all
  	Customer.destroy_all
  	Rails.application.load_seed
  	redirect_to root_path
  end
end

