class HomeController < ApplicationController

  def show
    render inertia: "Dashboard"
  end
end