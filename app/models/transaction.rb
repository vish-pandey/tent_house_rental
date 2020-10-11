class Transaction < ApplicationRecord
  belongs_to :product
  belongs_to :customer

  #enum
  enum transaction_type: [:out, :in]

  #scopes
  scope :get_transaction, -> {joins(:product, :customer).select("transactions.id, transactions.product_id, products.title as product_name, customers.name as customer_name, transaction_type, quantity, transactions.created_at").order(created_at: :desc)}

  after_create :update_inventory

  private

  def update_inventory
  	out? ? product.update(booked_quantity: product.booked_quantity + quantity) : product.update(booked_quantity: product.booked_quantity - quantity)
  end
end