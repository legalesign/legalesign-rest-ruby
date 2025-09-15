# typed: strong

module Legalesign
  module Models
    class TemplateUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::TemplateUpdateParams, Legalesign::Internal::AnyHash)
        end

      # json with any fields to update
      sig { returns(String) }
      attr_accessor :body

      sig do
        params(
          body: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # json with any fields to update
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { body: String, request_options: Legalesign::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
