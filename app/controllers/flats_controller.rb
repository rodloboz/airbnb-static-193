require "open-uri"
class FlatsController < ApplicationController
  before_action :set_actions

  def index
  end

  def show
    @id = params[:id].to_i
    @flat = @flats.find { |flat| @id == flat["id"]}
  end

  private

  def set_actions
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
