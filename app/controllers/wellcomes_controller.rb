class WellcomesController < ApplicationController
    def index
        @pricings = PricingPlan.all
        @Offer = WhatWeOffer.all
        @weare = WhoWeAre.all
        @sliders = Slide.all
    end

end
