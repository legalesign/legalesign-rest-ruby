# frozen_string_literal: true

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

      # Unsent
      SIGNER_STATUS_ENUM_4 = 4

      # Schedule to send
      SIGNER_STATUS_ENUM_5 = 5

      # Sent
      SIGNER_STATUS_ENUM_10 = 10

      # Email opened
      SIGNER_STATUS_ENUM_15 = 15

      # Visited
      SIGNER_STATUS_ENUM_20 = 20

      # Fields completed
      SIGNER_STATUS_ENUM_30 = 30

      # Fields complete except signature
      SIGNER_STATUS_ENUM_35 = 35

      # Witness to sign
      SIGNER_STATUS_ENUM_39 = 39

      # Signed
      SIGNER_STATUS_ENUM_40 = 40

      # Downloaded
      SIGNER_STATUS_ENUM_50 = 50

      # Rejected
      SIGNER_STATUS_ENUM_60 = 60

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
