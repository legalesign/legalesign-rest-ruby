# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Templatepdf#retrieve
    class TemplatePdf < Legalesign::Internal::Type::BaseModel
      # @!attribute created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute group
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute modified
      #
      #   @return [Time, nil]
      optional :modified, Time

      # @!attribute page_count
      #
      #   @return [Integer, nil]
      optional :page_count, Integer

      # @!attribute parties
      #   JSON stringified array of document parties
      #
      #   @return [String, nil]
      optional :parties, String

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute signer_count
      #
      #   @return [Integer, nil]
      optional :signer_count, Integer

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute user
      #   resource_uri for user
      #
      #   @return [String, nil]
      optional :user, String

      # @!attribute uuid
      #   id for pdf object
      #
      #   @return [String, nil]
      optional :uuid, String

      # @!attribute valid
      #   Is able to be sent (if fields do not validate)
      #
      #   @return [Boolean, nil]
      optional :valid, Legalesign::Internal::Type::Boolean

      # @!method initialize(created: nil, group: nil, modified: nil, page_count: nil, parties: nil, resource_uri: nil, signer_count: nil, title: nil, user: nil, uuid: nil, valid: nil)
      #   @param created [Time]
      #
      #   @param group [String]
      #
      #   @param modified [Time]
      #
      #   @param page_count [Integer]
      #
      #   @param parties [String] JSON stringified array of document parties
      #
      #   @param resource_uri [String]
      #
      #   @param signer_count [Integer]
      #
      #   @param title [String]
      #
      #   @param user [String] resource_uri for user
      #
      #   @param uuid [String] id for pdf object
      #
      #   @param valid [Boolean] Is able to be sent (if fields do not validate)
    end
  end
end
