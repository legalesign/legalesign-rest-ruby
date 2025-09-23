# typed: strong

module LegalesignSDK
  module Models
    class DocumentRetrieveParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            LegalesignSDK::DocumentRetrieveParams,
            LegalesignSDK::Internal::AnyHash
          )
        end

      sig do
        params(request_options: LegalesignSDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: LegalesignSDK::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
