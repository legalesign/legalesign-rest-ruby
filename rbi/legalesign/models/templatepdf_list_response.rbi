# typed: strong

module Legalesign
  module Models
    class TemplatepdfListResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::TemplatepdfListResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Legalesign::ListMeta)) }
      attr_reader :meta

      sig { params(meta: Legalesign::ListMeta::OrHash).void }
      attr_writer :meta

      sig { returns(T.nilable(T::Array[Legalesign::TemplatePdf])) }
      attr_reader :objects

      sig { params(objects: T::Array[Legalesign::TemplatePdf::OrHash]).void }
      attr_writer :objects

      sig do
        params(
          meta: Legalesign::ListMeta::OrHash,
          objects: T::Array[Legalesign::TemplatePdf::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(meta: nil, objects: nil)
      end

      sig do
        override.returns(
          {
            meta: Legalesign::ListMeta,
            objects: T::Array[Legalesign::TemplatePdf]
          }
        )
      end
      def to_hash
      end
    end
  end
end
