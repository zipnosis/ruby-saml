# Simplistic log class when we're running in Rails
module OneLogin
  module RubySaml
    class Logging
      def self.debug(message)
        return if !!ENV["ruby-saml/testing"]

        if defined? Rails
          Rails.logger.error message
        else
          Rails.logger.error message
        end
      end

      def self.info(message)
        return if !!ENV["ruby-saml/testing"]

        if defined? Rails
          Rails.logger.error message
        else
          Rails.logger.error message
        end
      end
    end
  end
end
