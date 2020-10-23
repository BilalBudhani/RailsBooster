class Current < ActiveSupport::CurrentAttributes
  attribute :errors

  reset do
    # Reset things here
  end
end