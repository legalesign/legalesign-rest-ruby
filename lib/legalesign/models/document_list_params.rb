# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#list
    class DocumentListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #   Filter by a specific group, required.
      #
      #   @return [String]
      required :group, String

      # @!attribute archived
      #   Filter on archived status, default is false
      #
      #   @return [String, nil]
      optional :archived, String

      # @!attribute created_gt
      #   Filter for those documents created after a certain time
      #
      #   @return [Time, nil]
      optional :created_gt, Time

      # @!attribute email
      #   Filter by signer email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute limit
      #   Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute modified_gt
      #   Filter for those documents modified after a certain time
      #
      #   @return [Time, nil]
      optional :modified_gt, Time

      # @!attribute nosigners
      #   Add value '1' to remove signers information for a faster query
      #
      #   @return [String, nil]
      optional :nosigners, String

      # @!attribute offset
      #   Offset from start of dataset. Use with the limit query to iterate through
      #   dataset.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute status
      #   Filter on document status
      #
      #   @return [Integer, nil]
      optional :status, Integer

      # @!method initialize(group:, archived: nil, created_gt: nil, email: nil, limit: nil, modified_gt: nil, nosigners: nil, offset: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::DocumentListParams} for more details.
      #
      #   @param group [String] Filter by a specific group, required.
      #
      #   @param archived [String] Filter on archived status, default is false
      #
      #   @param created_gt [Time] Filter for those documents created after a certain time
      #
      #   @param email [String] Filter by signer email
      #
      #   @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @param modified_gt [Time] Filter for those documents modified after a certain time
      #
      #   @param nosigners [String] Add value '1' to remove signers information for a faster query
      #
      #   @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      #   @param status [Integer] Filter on document status
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
