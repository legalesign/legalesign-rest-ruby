# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Group#retrieve
    class GroupRetrieveResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute created
      #
      #   @return [Time, nil]
      optional :created, Time

      # @!attribute default_email
      #
      #   @return [String, nil]
      optional :default_email, String

      # @!attribute default_extraemail
      #
      #   @return [String, nil]
      optional :default_extraemail, String

      # @!attribute footer
      #   html of content
      #
      #   @return [String, nil]
      optional :footer, String

      # @!attribute footer_height
      #
      #   @return [Integer, nil]
      optional :footer_height, Integer

      # @!attribute header
      #
      #   @return [String, nil]
      optional :header, String

      # @!attribute is_active
      #
      #   @return [Boolean, nil]
      optional :is_active, Legalesign::Internal::Type::Boolean

      # @!attribute members
      #   list of members uris
      #
      #   @return [Array<String>, nil]
      optional :members, Legalesign::Internal::Type::ArrayOf[String]

      # @!attribute modified
      #
      #   @return [Time, nil]
      optional :modified, Time

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute pagesize
      #
      #   @return [Integer, nil]
      optional :pagesize, Integer

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
      optional :xframe_allow, Legalesign::Internal::Type::Boolean

      # @!attribute xframe_allow_pdf_edit
      #
      #   @return [Boolean, nil]
      optional :xframe_allow_pdf_edit, Legalesign::Internal::Type::Boolean

      # @!method initialize(created: nil, default_email: nil, default_extraemail: nil, footer: nil, footer_height: nil, header: nil, is_active: nil, members: nil, modified: nil, name: nil, pagesize: nil, public_name: nil, resource_uri: nil, slug: nil, user: nil, xframe_allow: nil, xframe_allow_pdf_edit: nil)
      #   @param created [Time]
      #
      #   @param default_email [String]
      #
      #   @param default_extraemail [String]
      #
      #   @param footer [String] html of content
      #
      #   @param footer_height [Integer]
      #
      #   @param header [String]
      #
      #   @param is_active [Boolean]
      #
      #   @param members [Array<String>] list of members uris
      #
      #   @param modified [Time]
      #
      #   @param name [String]
      #
      #   @param pagesize [Integer]
      #
      #   @param public_name [String]
      #
      #   @param resource_uri [String]
      #
      #   @param slug [String]
      #
      #   @param user [String]
      #
      #   @param xframe_allow [Boolean]
      #
      #   @param xframe_allow_pdf_edit [Boolean]
    end
  end
end
