# typed: strong

module Legalesign
  module Models
    class UserUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::UserUpdateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig do
        params(
          first_name: String,
          last_name: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(first_name: nil, last_name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            first_name: String,
            last_name: String,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
