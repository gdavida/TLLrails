class ToysController < ApplicationController
  def index
    @toys=Toy.all
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    if @toy.save
      redirect_to :toys, notice: "Success"
    else
      flash.now[:alert] = "Couldn't save"
      render :new
    end
  end


  def show
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    if @toy.update_attributes(toy_params)
      redirect_to :toys, notice: "Successfully Updated!!!!"
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to :toys, notice: "Successfully deleted!!!"
  end

  private
  def toy_params
        params.require(:toy).permit(:name, :upc, :age_group_id, :box_id, :pieces)
  end
end