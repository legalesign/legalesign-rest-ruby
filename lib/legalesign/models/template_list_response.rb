# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Template#list
    class TemplateListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::TemplateListResponse::Object>, nil]
      optional :objects,
               -> { Legalesign::Internal::Type::ArrayOf[Legalesign::Models::TemplateListResponse::Object] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::TemplateListResponse::Object>]

      class Object < Legalesign::Internal::Type::BaseModel
        # @!attribute archive
        #
        #   @return [Boolean, nil]
        optional :archive, Legalesign::Internal::Type::Boolean

        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute group
        #
        #   @return [String, nil]
        optional :group, String

        # @!attribute has_fields
        #
        #   @return [Boolean, nil]
        optional :has_fields, Legalesign::Internal::Type::Boolean

        # @!attribute modified
        #
        #   @return [Time, nil]
        optional :modified, Time

        # @!attribute resource_uri
        #
        #   @return [String, nil]
        optional :resource_uri, String

        # @!attribute signee_count
        #
        #   @return [Integer, nil]
        optional :signee_count, Integer

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(archive: nil, created: nil, group: nil, has_fields: nil, modified: nil, resource_uri: nil, signee_count: nil, title: nil, user: nil, uuid: nil)
        #   @param archive [Boolean]
        #   @param created [Time]
        #   @param group [String]
        #   @param has_fields [Boolean]
        #   @param modified [Time]
        #   @param resource_uri [String]
        #   @param signee_count [Integer]
        #   @param title [String]
        #   @param user [String]
        #   @param uuid [String]
      end
    end
  end
end
