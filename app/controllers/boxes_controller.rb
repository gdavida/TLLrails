class BoxesController < ApplicationController
  def index
    @boxes=Box.all
  end

  def new
    @box = Box.new
    @age_group = AgeGroup.find_by_id(params[:id])
    @age_groups = AgeGroup.all
    # @toy = Toy.find(params[:id])
    @toys = Toy.all
  end

  def create
    @box = Box.new(box_params)
    @age_group = @box.age_group
    @age_groups = AgeGroup.all
    # @toy = Toy.find(params[:id])
    @toys = Toy.where(id:params[:box][:toys_id])
    if @box.save
      @box.toys = @toys
      redirect_to :boxes, notice: "Success"
    else
      @toys = Toy.all
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end


  def show
    @box = Box.find_by_id(params[:id])
    @toy = Toy.find_by_id(params[:id])
    @toys = Toy.all
  end

  def update
    @box = Box.find_by_id(params[:id])
    if @box.update_attributes(box_params)
      redirect_to :boxes, notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @box = Box.find_by_id(params[:id])
    @age_group = AgeGroup.find_by_id(params[:id])
    @age_groups = AgeGroup.all
  end

  def destroy
    @box = Box.find_by_id(params[:id])
    @box.destroy
    redirect_to :boxes, notice: "Successfully deleted!!!"
  end

  private
  def box_params
        params.require(:box).permit(:name, :age_group_id, :toys_id, :pieces)
  end
end