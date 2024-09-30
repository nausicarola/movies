class Series1Controller < ApplicationController
  def index
    @series1 = Serie1.all
  end

  def new
    @serie1 = Serie1.new
  end

  def create
    @serie1 = Serie1.new(serie1_params)
    if @serie1.save
      redirect_to series1_path, notice: "Serie was successfully created."
    else
      render :new
    end
  end
  private

  def serie1_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
