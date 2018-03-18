class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:Full_name)
  end

  def missing_email
    @customers = Customer.where(Email_address: [nil, ""])
  end
end