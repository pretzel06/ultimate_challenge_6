class CustomersController < ApplicationController
  def index
    @customers = Customers.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
  end

  def alphabetized
    @customers = Customers.order(:Full_name)
  end

  def missing_email
    @customer = Customer.find(params[:Email_address] == '')
  end
end
