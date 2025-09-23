# typed: strong

module LegalesignSDK
  module Models
    class SignerSendReminderParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            LegalesignSDK::SignerSendReminderParams,
            LegalesignSDK::Internal::AnyHash
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
          request_options: LegalesignSDK::RequestOptions::OrHash
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
          { text: String, request_options: LegalesignSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
