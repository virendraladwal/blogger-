class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end
  before_action :require_login, only: [:destroy]
end
