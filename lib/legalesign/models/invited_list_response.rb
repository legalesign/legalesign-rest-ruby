# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Invited#list
    class InvitedListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::InvitedListResponse::Object>, nil]
      optional :objects,
               -> { Legalesign::Internal::Type::ArrayOf[Legalesign::Models::InvitedListResponse::Object] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::InvitedListResponse::Object>]

      class Object < Legalesign::Internal::Type::BaseModel
        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute group
        #
        #   @return [String, nil]
        optional :group, String

        # @!attribute resource_uri
        #
        #   @return [String, nil]
        optional :resource_uri, String

        # @!method initialize(created: nil, email: nil, group: nil, resource_uri: nil)
        #   @param created [Time]
        #   @param email [String]
        #   @param group [String]
        #   @param resource_uri [String]
      end
    end
  end
end
