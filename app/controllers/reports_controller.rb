class ReportsController < ApplicationController
  include ProductUtils
	before_action :products, only: [:index]

  def index
  	@transactions = Transaction.get_transaction
  end
end