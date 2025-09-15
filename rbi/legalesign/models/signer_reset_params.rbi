# typed: strong

module Legalesign
  module Models
    class SignerResetParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::SignerResetParams, Legalesign::Internal::AnyHash)
        end

      # Email of signer to revert to.
      sig { returns(String) }
      attr_accessor :email

      # Email notify current signer access is being withdrawn
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :notify

      sig { params(notify: T::Boolean).void }
      attr_writer :notify

      sig do
        params(
          email: String,
          notify: T::Boolean,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Email of signer to revert to.
        email:,
        # Email notify current signer access is being withdrawn
        notify: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            notify: T::Boolean,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
