# frozen_string_literal: true

# Superclass for all services.
class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
