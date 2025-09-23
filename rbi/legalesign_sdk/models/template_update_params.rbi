# typed: strong

module LegalesignSDK
  module Models
    class TemplateUpdateParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            LegalesignSDK::TemplateUpdateParams,
            LegalesignSDK::Internal::AnyHash
          )
        end

      # json with any fields to update
      sig { returns(String) }
      attr_accessor :body

      sig do
        params(
          body: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
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
          { body: String, request_options: LegalesignSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
