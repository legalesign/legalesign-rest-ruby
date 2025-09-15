# typed: strong

module Legalesign
  module Models
    # Signer status options:
    #
    # - 4 - unsent
    # - 5 - scheduled to be sent
    # - 10 - sent
    # - 15 - email opened
    # - 20 - visited
    # - 30 - fields complete
    # - 35 - fields complete ex signature
    # - 39 - waiting for witness to complete
    # - 40 - signed
    # - 50 - downloaded
    # - 60 - rejected
    module SignerStatusEnum
      extend Legalesign::Internal::Type::Enum

      TaggedInteger =
        T.type_alias { T.all(Integer, Legalesign::SignerStatusEnum) }
      OrInteger = T.type_alias { Integer }

      # Unsent
      SIGNER_STATUS_ENUM_4 =
        T.let(4, Legalesign::SignerStatusEnum::TaggedInteger)

      # Schedule to send
      SIGNER_STATUS_ENUM_5 =
        T.let(5, Legalesign::SignerStatusEnum::TaggedInteger)

      # Sent
      SIGNER_STATUS_ENUM_10 =
        T.let(10, Legalesign::SignerStatusEnum::TaggedInteger)

      # Email opened
      SIGNER_STATUS_ENUM_15 =
        T.let(15, Legalesign::SignerStatusEnum::TaggedInteger)

      # Visited
      SIGNER_STATUS_ENUM_20 =
        T.let(20, Legalesign::SignerStatusEnum::TaggedInteger)

      # Fields completed
      SIGNER_STATUS_ENUM_30 =
        T.let(30, Legalesign::SignerStatusEnum::TaggedInteger)

      # Fields complete except signature
      SIGNER_STATUS_ENUM_35 =
        T.let(35, Legalesign::SignerStatusEnum::TaggedInteger)

      # Witness to sign
      SIGNER_STATUS_ENUM_39 =
        T.let(39, Legalesign::SignerStatusEnum::TaggedInteger)

      # Signed
      SIGNER_STATUS_ENUM_40 =
        T.let(40, Legalesign::SignerStatusEnum::TaggedInteger)

      # Downloaded
      SIGNER_STATUS_ENUM_50 =
        T.let(50, Legalesign::SignerStatusEnum::TaggedInteger)

      # Rejected
      SIGNER_STATUS_ENUM_60 =
        T.let(60, Legalesign::SignerStatusEnum::TaggedInteger)

      sig do
        override.returns(T::Array[Legalesign::SignerStatusEnum::TaggedInteger])
      end
      def self.values
      end
    end
  end
end
