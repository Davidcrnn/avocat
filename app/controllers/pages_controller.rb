class PagesController < ApplicationController

  def home
    @contact = Contact.new
    @actualites = Actualite.all
  end

  def mentions
  end

  def domaines
  end

  def valeurs
  end

  def equipe
  end
end
