class ActualitesController < ApplicationController
  before_action :set_actualite, only: [:show, :edit, :update, :destroy]

  def index
    @actualites = Actualite.all
  end

  def show
  end

  def new
    @actualite = Actualite.new
  end

  def create
    @actualite = Actualite.create(actualite_params)
    respond_to do |format|
      if @actualite.save
        format.html { redirect_to @actualite, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @actualite }
      else
        format.html { render action: 'new' }
        format.json { render json: @actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @actualite.update(actualite_params)
        format.html { redirect_to @actualite, notice: "Un nouvel objet vient d'être ajouté !" }
        format.json { render action: 'show', status: :created, location: @actualite }
      else
        format.html { render action: 'edit' }
        format.json { render json: @actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @actualite.destroy
    redirect_to actualites_path
  end



    private

  def set_actualite
    @actualite = Actualite.find(params[:id])
  end

  def actualite_params
    params.require(:actualite).permit(:titre, :auteur, :contenu, :date)
  end

end
