class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    if params[:search]
      @suppliers = @suppliers.where("name ILIKE ?", "%#{params[:search]}%")
    end

    # @suppliers = @suppliers.order(:id => :asc)

    # @suppliers = @suppliers.order(:price => :desc)

    render "index.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    @supplier.save
    render "show.json.jb"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.save
    render "show.json.jb"
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: { message: "Supplier successfully destroyed" }
  end
end
