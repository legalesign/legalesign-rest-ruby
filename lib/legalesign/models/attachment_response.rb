# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Attachment#retrieve
    class AttachmentResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute filename
      #
      #   @return [String, nil]
      optional :filename, String

      # @!attribute group
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute user
      #   resource_uri for user
      #
      #   @return [String, nil]
      optional :user, String

      # @!attribute uuid
      #   id for attachment object
      #
      #   @return [String, nil]
      optional :uuid, String

      # @!method initialize(created: nil, description: nil, filename: nil, group: nil, resource_uri: nil, user: nil, uuid: nil)
      #   @param created [Time]
      #
      #   @param description [String]
      #
      #   @param filename [String]
      #
      #   @param group [String]
      #
      #   @param resource_uri [String]
      #
      #   @param user [String] resource_uri for user
      #
      #   @param uuid [String] id for attachment object
    end
  end
end
