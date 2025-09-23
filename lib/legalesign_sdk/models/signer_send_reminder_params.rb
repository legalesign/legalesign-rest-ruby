# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Signer#send_reminder
    class SignerSendReminderParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      # @!attribute text
      #   custom message text, html will be stripped
      #
      #   @return [String, nil]
      optional :text, String

      # @!method initialize(text: nil, request_options: {})
      #   @param text [String] custom message text, html will be stripped
      #
      #   @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
