module Api::V1
  class CustomersController < ApplicationController
    before_action :set_customer, only: [:show]

    def index
      @customers = Customer.all
      render json: @customers
    end

    def create
      @customer = Customer.new(customer_params)
      @address = Address.create(address_params)
      @customer.address = @address
      @customer.save!
      render json: @customer
    end

    def show
      render json: @customer
    end

    private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :mobile, :email)
    end

    def address_params
      params.require(:address).permit(Address.column_names)
    end
  end
end