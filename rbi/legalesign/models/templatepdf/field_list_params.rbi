# typed: strong

module Legalesign
  module Models
    module Templatepdf
      class FieldListParams < Legalesign::Internal::Type::BaseModel
        extend Legalesign::Internal::Type::RequestParameters::Converter
        include Legalesign::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Legalesign::Templatepdf::FieldListParams,
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

        sig do
          override.returns({ request_options: Legalesign::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
