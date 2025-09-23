# typed: strong

module LegalesignSDK
  module Models
    # Document status options:
    #
    # - 10 - Initial state, check signer status for sent/unsent
    # - 20 - Fields completed
    # - 30 - Signed
    # - 40 - Removed (before signing)
    # - 50 - Rejected
    module DocumentStatusEnum
      extend LegalesignSDK::Internal::Type::Enum

      TaggedInteger =
        T.type_alias { T.all(Integer, LegalesignSDK::DocumentStatusEnum) }
      OrInteger = T.type_alias { Integer }

      # Created
      DOCUMENT_STATUS_ENUM_10 =
        T.let(10, LegalesignSDK::DocumentStatusEnum::TaggedInteger)

      # Fields completed
      DOCUMENT_STATUS_ENUM_20 =
        T.let(20, LegalesignSDK::DocumentStatusEnum::TaggedInteger)

      # Signed
      DOCUMENT_STATUS_ENUM_30 =
        T.let(30, LegalesignSDK::DocumentStatusEnum::TaggedInteger)

      # Removed
      DOCUMENT_STATUS_ENUM_40 =
        T.let(40, LegalesignSDK::DocumentStatusEnum::TaggedInteger)

      # Rejected
      DOCUMENT_STATUS_ENUM_50 =
        T.let(50, LegalesignSDK::DocumentStatusEnum::TaggedInteger)

      sig do
        override.returns(
          T::Array[LegalesignSDK::DocumentStatusEnum::TaggedInteger]
        )
      end
      def self.values
      end
    end
  end
end
