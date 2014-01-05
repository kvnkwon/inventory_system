class InventoriesController < ApplicationController

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to new_inventory_path
    else
      flash.now[:error] = "Cannot create inventory"
      render :new
    end
  end

  private

    def inventory_params
      params.require(:inventory).permit(:title, :description, :quantity)
    end

end