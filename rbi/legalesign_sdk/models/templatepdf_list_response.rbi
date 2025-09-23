# typed: strong

module LegalesignSDK
  module Models
    class TemplatepdfListResponse < LegalesignSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            LegalesignSDK::Models::TemplatepdfListResponse,
            LegalesignSDK::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(LegalesignSDK::ListMeta)) }
      attr_reader :meta

      sig { params(meta: LegalesignSDK::ListMeta::OrHash).void }
      attr_writer :meta

      sig { returns(T.nilable(T::Array[LegalesignSDK::TemplatePdf])) }
      attr_reader :objects

      sig { params(objects: T::Array[LegalesignSDK::TemplatePdf::OrHash]).void }
      attr_writer :objects

      sig do
        params(
          meta: LegalesignSDK::ListMeta::OrHash,
          objects: T::Array[LegalesignSDK::TemplatePdf::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(meta: nil, objects: nil)
      end

      sig do
        override.returns(
          {
            meta: LegalesignSDK::ListMeta,
            objects: T::Array[LegalesignSDK::TemplatePdf]
          }
        )
      end
      def to_hash
      end
    end
  end
end
