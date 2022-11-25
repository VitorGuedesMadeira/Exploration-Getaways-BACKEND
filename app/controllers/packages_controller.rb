class PackagesController < ApplicationController
  def index
    @packages = Package.all
    render json: @packages
  end
end
