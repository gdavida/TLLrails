class LocationsController < ApplicationController
  def index
    @locations=Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to :locations, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end


  def show
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      redirect_to :locations, notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to :locations, notice: "Successfully deleted!!!"
  end

  private
  def location_params
        params.require(:location).permit(:branch_name, :address, :contact_name)
  end
end