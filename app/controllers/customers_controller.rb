class CustomersController < ApplicationController
  def index
    @customers = Customer.order(:Full_name)
  end

  def show
    @customers = Customer.find(params[:id])
  end

  def alphabetized
    @customers = Customer.order(:Full_name)
  end

  def missing_email
    @customers = Customer.find(params[:Email_address] == '')
  end
end