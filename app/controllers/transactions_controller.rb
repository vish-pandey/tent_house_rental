class TransactionsController < ApplicationController
  include ProductUtils
	before_action :products, :customers, only: [:new]

	def new
		@transaction = Transaction.new
	end

  def index
  	@transactions = Transaction.get_transaction
  end

  def create
  	@transaction = Transaction.new(transaction_params)
    if transaction_params[:quantity].to_i > @transaction.product.total_quantity -  @transaction.product.booked_quantity
      flash[:alert] = "#{@transaction.product.title} is not available."
    else
      @transaction.save
    end
  	redirect_to transactions_path
  end

  private

  def customers
    @customers = Customer.order(name: :asc)
  end

  def transaction_params
  	params.require(:transaction).permit(:product_id, :customer_id, :transaction_type, :quantity)
  end
end