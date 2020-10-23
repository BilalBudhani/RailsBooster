class PagesController < ApplicationController

  def index
    render inertia: "Main"
  end
end