# typed: strong

module Legalesign
  module Models
    class TemplatepdfArchiveParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::TemplatepdfArchiveParams,
            Legalesign::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Legalesign::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Legalesign::RequestOptions }) }
      def to_hash
      end
    end
  end
end
