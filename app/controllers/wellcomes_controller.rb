class WellcomesController < ApplicationController
    def index
        @pricings = PricingPlan.all
    end

end
