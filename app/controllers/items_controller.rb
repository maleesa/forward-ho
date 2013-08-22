class ItemsController < ApplicationController
  def new
    @item = Item.new
    @suppliers = Supplier.all
    @storage_locations = StorageLocation.all
  end

  def create
    @item = Item.new(name: params[:item][:name], current_amount: params[:item][:current_amount], unit_quantity: params[:item][:unit_quantity], unit_name: params[:item][:unit_name], min_amount: params[:item][:min_amount], max_amount: params[:item][:max_amount], notes: params[:item][:notes], purchase_amount: params[:item][:purchase_amount])
    # @item = Item.new(item_params)
    if @item.save
      @item.suppliers += [Supplier.find(params[:item][:suppliers][:id])]
      @item.storage_locations += [StorageLocation.find(params[:item][:storage_location][:id])]
      redirect_to items_path
    else
      puts @item.errors.full_messages
      redirect_to :back, :flash => { :state => 'register', :errors => @item.errors.full_messages } 
    end
  end

  def update
    puts params
    @item = Item.update(params[:id], item_params)
    redirect_to items_path
  end

  def edit
    @item = Item.find(params[:id])
    @suppliers = Supplier.all
  end

  def index
    @items = Item.all
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :current_amount, :min_amount, :max_amount, :purchase_amount, :unit_name, :unit_quantity, :notes)
  end
end
