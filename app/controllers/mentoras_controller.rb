class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all.order(created_at: :desc)
  end

  def new
    @mentora = Mentora.new
  end

  def create
    @mentora = Mentora.new(mentora_params)

    if @mentora.save
      redirect_to @mentora, notice: "Mentora cadastrada com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @mentora = Mentora.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Mentora não encontrada"
  end

  private

  def mentora_params
    params.require(:mentora).permit(:name, :email, :abilities)
  end
end
