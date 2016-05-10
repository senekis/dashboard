module UserMixins
  module Filters
    extend ActiveSupport::Concern

    included do
      before_save :downcase_email
      before_create :generate_confirmation_token
    end

    private

    def downcase_email
      self.email = self.email.to_s.downcase.strip
    end

    def generate_confirmation_token
      self.confirmation_token = "clonfirmation-token-sample"
    end
  end
end
