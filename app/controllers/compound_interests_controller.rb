class CompoundInterestsController < ApplicationController

  def show
    @compound_interest = CompoundInterest.new(compound_interest_params)
    @compound_interest.submit unless compound_interest_params.empty?
  end

  private

  def compound_interest_params
    params.fetch(:compound_interest, {}).permit(:current_principal, :years_to_grow, :interest_rate, :annual_addition)
  end

end
