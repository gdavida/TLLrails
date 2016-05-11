class AgeGroupsController < ApplicationController
  def index
    @age_groups=AgeGroup.all
  end

  def new
    @age_group = AgeGroup.new
  end

  def create
    @age_group = AgeGroup.new(age_group_params)
    if @age_group.save
      redirect_to :age_groups, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end


  def show
    @age_group = AgeGroup.find(params[:id])
  end

  def update
    @age_group = AgeGroup.find(params[:id])
    if @age_group.update_attributes(age_group_params)
      redirect_to :age_groups, notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @age_group = AgeGroup.find(params[:id])
  end

  def destroy
    @age_group = AgeGroup.find(params[:id])
    @age_group.destroy
    redirect_to :age_groups, notice: "Successfully deleted!!!"
  end

  private
  def age_group_params
        params.require(:age_group).permit(:age, :color)
  end
end