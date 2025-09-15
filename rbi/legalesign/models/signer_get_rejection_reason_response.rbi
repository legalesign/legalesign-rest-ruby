# typed: strong

module Legalesign
  module Models
    class SignerGetRejectionReasonResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::SignerGetRejectionReasonResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      sig { returns(T.nilable(Integer)) }
      attr_reader :status

      sig { params(status: Integer).void }
      attr_writer :status

      sig { params(reason: String, status: Integer).returns(T.attached_class) }
      def self.new(reason: nil, status: nil)
      end

      sig { override.returns({ reason: String, status: Integer }) }
      def to_hash
      end
    end
  end
end
