class PagesController < ApplicationController

  def index
    render inertia: "Dashboard"
  end

end