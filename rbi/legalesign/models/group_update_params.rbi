# typed: strong

module Legalesign
  module Models
    class GroupUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::GroupUpdateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :public_name

      sig { params(public_name: String).void }
      attr_writer :public_name

      sig do
        params(
          public_name: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(public_name: nil, request_options: {})
      end

      sig do
        override.returns(
          { public_name: String, request_options: Legalesign::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
