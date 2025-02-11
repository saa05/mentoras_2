class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end

  def new
    @mentora = Mentora.new
  end

  def create
    @mentora = Mentora.new(name: params[:mentora][:name], email: params[:mentora][:email], abilities: params[:mentora][:abilities])

    if @mentora.save
      redirect_to mentora_path(@mentora)
    end
  end

  def show
    @mentora = Mentora.find(params[:id])
  end
end
