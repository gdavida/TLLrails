class BoxesController < ApplicationController
  def index
    @boxes=Box.all
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    if @box.save
      redirect_to :boxes, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end


  def show
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])
    if @box.update_attributes(box_params)
      redirect_to :boxes, notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @box = Box.find(params[:id])
  end

  def destroy
    @box = Box.find(params[:id])
    @box.destroy
    redirect_to :boxes, notice: "Successfully deleted!!!"
  end

  private
  def box_params
        params.require(:box).permit(:name, :toys_id, :pieces)
  end
end