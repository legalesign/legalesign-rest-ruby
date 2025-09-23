# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Status#retrieve
    class StatusRetrieveResponse < LegalesignSDK::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean, nil]
      optional :archived, LegalesignSDK::Internal::Type::Boolean

      # @!attribute download_final
      #
      #   @return [Boolean, nil]
      optional :download_final, LegalesignSDK::Internal::Type::Boolean

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute status
      #   Signer status options:
      #
      #   - 4 - unsent
      #   - 5 - scheduled to be sent
      #   - 10 - sent
      #   - 15 - email opened
      #   - 20 - visited
      #   - 30 - fields complete
      #   - 35 - fields complete ex signature
      #   - 39 - waiting for witness to complete
      #   - 40 - signed
      #   - 50 - downloaded
      #   - 60 - rejected
      #
      #   @return [Integer, LegalesignSDK::Models::SignerStatusEnum, nil]
      optional :status, enum: -> { LegalesignSDK::SignerStatusEnum }

      # @!attribute tag
      #
      #   @return [String, nil]
      optional :tag, String

      # @!attribute tag1
      #
      #   @return [String, nil]
      optional :tag1, String

      # @!attribute tag2
      #
      #   @return [String, nil]
      optional :tag2, String

      # @!method initialize(archived: nil, download_final: nil, resource_uri: nil, status: nil, tag: nil, tag1: nil, tag2: nil)
      #   Some parameter documentations has been truncated, see
      #   {LegalesignSDK::Models::StatusRetrieveResponse} for more details.
      #
      #   @param archived [Boolean]
      #
      #   @param download_final [Boolean]
      #
      #   @param resource_uri [String]
      #
      #   @param status [Integer, LegalesignSDK::Models::SignerStatusEnum] Signer status options:
      #
      #   @param tag [String]
      #
      #   @param tag1 [String]
      #
      #   @param tag2 [String]
    end
  end
end
