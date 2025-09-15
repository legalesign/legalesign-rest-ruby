# typed: strong

module Legalesign
  module Models
    # Document status options:
    #
    # - 10 - Initial state, check signer status for sent/unsent
    # - 20 - Fields completed
    # - 30 - Signed
    # - 40 - Removed (before signing)
    # - 50 - Rejected
    module DocumentStatusEnum
      extend Legalesign::Internal::Type::Enum

      TaggedInteger =
        T.type_alias { T.all(Integer, Legalesign::DocumentStatusEnum) }
      OrInteger = T.type_alias { Integer }

      # Created
      DOCUMENT_STATUS_ENUM_10 =
        T.let(10, Legalesign::DocumentStatusEnum::TaggedInteger)

      # Fields completed
      DOCUMENT_STATUS_ENUM_20 =
        T.let(20, Legalesign::DocumentStatusEnum::TaggedInteger)

      # Signed
      DOCUMENT_STATUS_ENUM_30 =
        T.let(30, Legalesign::DocumentStatusEnum::TaggedInteger)

      # Removed
      DOCUMENT_STATUS_ENUM_40 =
        T.let(40, Legalesign::DocumentStatusEnum::TaggedInteger)

      # Rejected
      DOCUMENT_STATUS_ENUM_50 =
        T.let(50, Legalesign::DocumentStatusEnum::TaggedInteger)

      sig do
        override.returns(
          T::Array[Legalesign::DocumentStatusEnum::TaggedInteger]
        )
      end
      def self.values
      end
    end
  end
end
