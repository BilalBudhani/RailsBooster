# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    render inertia: "Main"
  end
end
