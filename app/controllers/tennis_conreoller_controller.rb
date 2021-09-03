class TennisConreollerController < ApplicationController
  def tennis
   @tennisDB = Tenni.all
  end
end
