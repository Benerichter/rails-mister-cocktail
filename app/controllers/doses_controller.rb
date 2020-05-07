class DosesController < ApplicationController
  before_action :set_cocktail, except: :destroy

  def new
    @dose = Dose.new
  end

  def create
    dose_attr = dose_params
    dose_attr[:ingredient_id] = dose_attr[:ingredient_id].to_i
    @dose = Dose.new(dose_attr)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
