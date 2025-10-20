# frozen_string_literal: true

class Team < ApplicationRecord
  belongs_to :account
  belongs_to :user
end
