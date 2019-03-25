class EquipesController < ApplicationController
   before_action :set_equipe, only: [:show, :edit, :update, :destroy]

  def index
    @equipes = Equipe.all
  end

  def show
  end

  def new
    @equipe = Equipe.new
  end

  def create
    @equipe = Equipe.create(equipe_params)
    respond_to do |format|
      if @equipe.save
        format.html { redirect_to @equipe, notice: "Un nouvel article vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @equipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @equipe.update(equipe_params)
        format.html { redirect_to @equipe, notice: "Un nouvel article vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @equipe }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @equipe.destroy
    redirect_to equipes_path
  end



    private

  def set_equipe
    @equipe = Equipe.find(params[:id])
  end

  def equipe_params
    params.require(:equipe).permit(:name, :photo, :bio, :formation, :engagement, :fonction, :linkedin, :email)
  end
end
