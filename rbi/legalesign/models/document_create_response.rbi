# typed: strong

module Legalesign
  module Models
    class DocumentCreateResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::DocumentCreateResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :signer_1

      sig { params(signer_1: String).void }
      attr_writer :signer_1

      sig { params(signer_1: String).returns(T.attached_class) }
      def self.new(signer_1: nil)
      end

      sig { override.returns({ signer_1: String }) }
      def to_hash
      end
    end
  end
end
