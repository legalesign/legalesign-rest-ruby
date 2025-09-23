# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Group#list
    class GroupListResponse < LegalesignSDK::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [LegalesignSDK::Models::ListMeta, nil]
      optional :meta, -> { LegalesignSDK::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<LegalesignSDK::Models::GroupListResponse::Object>, nil]
      optional :objects,
               -> { LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::GroupListResponse::Object] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [LegalesignSDK::Models::ListMeta]
      #   @param objects [Array<LegalesignSDK::Models::GroupListResponse::Object>]

      class Object < LegalesignSDK::Internal::Type::BaseModel
        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute is_active
        #
        #   @return [Boolean, nil]
        optional :is_active, LegalesignSDK::Internal::Type::Boolean

        # @!attribute modified
        #
        #   @return [Time, nil]
        optional :modified, Time

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute public_name
        #
        #   @return [String, nil]
        optional :public_name, String

        # @!attribute resource_uri
        #
        #   @return [String, nil]
        optional :resource_uri, String

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String

        # @!attribute xframe_allow
        #
        #   @return [Boolean, nil]
        optional :xframe_allow, LegalesignSDK::Internal::Type::Boolean

        # @!attribute xframe_allow_pdf_edit
        #
        #   @return [Boolean, nil]
        optional :xframe_allow_pdf_edit, LegalesignSDK::Internal::Type::Boolean

        # @!method initialize(created: nil, is_active: nil, modified: nil, name: nil, public_name: nil, resource_uri: nil, slug: nil, user: nil, xframe_allow: nil, xframe_allow_pdf_edit: nil)
        #   @param created [Time]
        #   @param is_active [Boolean]
        #   @param modified [Time]
        #   @param name [String]
        #   @param public_name [String]
        #   @param resource_uri [String]
        #   @param slug [String]
        #   @param user [String]
        #   @param xframe_allow [Boolean]
        #   @param xframe_allow_pdf_edit [Boolean]
      end
    end
  end
end
