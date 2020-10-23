class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Expose form errors globally so it gets easier to expose to frontend
  after_validation :set_errors, on: [:create, :update]

  private
  def set_errors
    Current.errors = errors.messages
  end
end
