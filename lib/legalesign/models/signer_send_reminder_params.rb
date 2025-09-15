# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Signer#send_reminder
    class SignerSendReminderParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute text
      #   custom message text, html will be stripped
      #
      #   @return [String, nil]
      optional :text, String

      # @!method initialize(text: nil, request_options: {})
      #   @param text [String] custom message text, html will be stripped
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
