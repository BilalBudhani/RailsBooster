# frozen_string_literal: true

class Account < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :users, through: :teams

  validates :name, presence: true, length: { between: 3..255 }
end
