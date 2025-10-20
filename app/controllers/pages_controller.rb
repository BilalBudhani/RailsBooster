# frozen_string_literal: true

class PagesController < ApplicationController
  allow_unauthenticated_access only: :index

  def index
    render inertia: "Main"
  end
end
