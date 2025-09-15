# typed: strong

module Legalesign
  module Models
    class SignerSendReminderParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::SignerSendReminderParams,
            Legalesign::Internal::AnyHash
          )
        end

      # custom message text, html will be stripped
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      sig do
        params(
          text: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # custom message text, html will be stripped
        text: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { text: String, request_options: Legalesign::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
