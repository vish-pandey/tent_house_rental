class CustomersController < ApplicationController

  def index
    @customers = Customer.order(name: :asc)
  end
end