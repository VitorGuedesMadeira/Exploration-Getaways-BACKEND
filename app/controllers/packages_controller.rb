class PackagesController < ApplicationController
  def index
    render json: Package.all
  end
end
