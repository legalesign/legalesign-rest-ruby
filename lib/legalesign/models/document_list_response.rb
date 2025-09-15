# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#list
    class DocumentListResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute meta
      #
      #   @return [Legalesign::Models::ListMeta, nil]
      optional :meta, -> { Legalesign::ListMeta }

      # @!attribute objects
      #
      #   @return [Array<Legalesign::Models::DocumentListResponse::Object>, nil]
      optional :objects,
               -> { Legalesign::Internal::Type::ArrayOf[Legalesign::Models::DocumentListResponse::Object] }

      # @!method initialize(meta: nil, objects: nil)
      #   @param meta [Legalesign::Models::ListMeta]
      #   @param objects [Array<Legalesign::Models::DocumentListResponse::Object>]

      class Object < Legalesign::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean, nil]
        optional :archived, Legalesign::Internal::Type::Boolean

        # @!attribute auto_archive
        #
        #   @return [Boolean, nil]
        optional :auto_archive, Legalesign::Internal::Type::Boolean

        # @!attribute cc_emails
        #
        #   @return [String, nil]
        optional :cc_emails, String

        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute do_email
        #
        #   @return [Boolean, nil]
        optional :do_email, Legalesign::Internal::Type::Boolean

        # @!attribute download_final
        #
        #   @return [Boolean, nil]
        optional :download_final, Legalesign::Internal::Type::Boolean

        # @!attribute group
        #
        #   @return [String, nil]
        optional :group, String

        # @!attribute modified
        #
        #   @return [Time, nil]
        optional :modified, Time

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute pdftext
        #
        #   @return [String, nil]
        optional :pdftext, String

        # @!attribute redirect
        #
        #   @return [String, nil]
        optional :redirect, String

        # @!attribute resource_uri
        #
        #   @return [String, nil]
        optional :resource_uri, String

        # @!attribute return_signer_links
        #
        #   @return [Boolean, nil]
        optional :return_signer_links, Legalesign::Internal::Type::Boolean

        # @!attribute signers
        #   nested arrays with signer details
        #
        #   @return [Array<Array<String>>, nil]
        optional :signers, Legalesign::Internal::Type::ArrayOf[Legalesign::Internal::Type::ArrayOf[String]]

        # @!attribute signers_in_order
        #
        #   @return [Integer, Legalesign::Models::DocumentListResponse::Object::SignersInOrder, nil]
        optional :signers_in_order, enum: -> { Legalesign::Models::DocumentListResponse::Object::SignersInOrder }

        # @!attribute status
        #   Document status options:
        #
        #   - 10 - Initial state, check signer status for sent/unsent
        #   - 20 - Fields completed
        #   - 30 - Signed
        #   - 40 - Removed (before signing)
        #   - 50 - Rejected
        #
        #   @return [Integer, Legalesign::Models::DocumentStatusEnum, nil]
        optional :status, enum: -> { Legalesign::DocumentStatusEnum }

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

        # @!attribute template
        #
        #   @return [String, nil]
        optional :template, String, nil?: true

        # @!attribute templatepdf
        #
        #   @return [String, nil]
        optional :templatepdf, String, nil?: true

        # @!attribute text
        #
        #   @return [String, nil]
        optional :text, String, nil?: true

        # @!attribute user
        #
        #   @return [String, nil]
        optional :user, String

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(archived: nil, auto_archive: nil, cc_emails: nil, created: nil, do_email: nil, download_final: nil, group: nil, modified: nil, name: nil, pdftext: nil, redirect: nil, resource_uri: nil, return_signer_links: nil, signers: nil, signers_in_order: nil, status: nil, tag: nil, tag1: nil, tag2: nil, template: nil, templatepdf: nil, text: nil, user: nil, uuid: nil)
        #   Some parameter documentations has been truncated, see
        #   {Legalesign::Models::DocumentListResponse::Object} for more details.
        #
        #   @param archived [Boolean]
        #
        #   @param auto_archive [Boolean]
        #
        #   @param cc_emails [String]
        #
        #   @param created [Time]
        #
        #   @param do_email [Boolean]
        #
        #   @param download_final [Boolean]
        #
        #   @param group [String]
        #
        #   @param modified [Time]
        #
        #   @param name [String]
        #
        #   @param pdftext [String]
        #
        #   @param redirect [String]
        #
        #   @param resource_uri [String]
        #
        #   @param return_signer_links [Boolean]
        #
        #   @param signers [Array<Array<String>>] nested arrays with signer details
        #
        #   @param signers_in_order [Integer, Legalesign::Models::DocumentListResponse::Object::SignersInOrder]
        #
        #   @param status [Integer, Legalesign::Models::DocumentStatusEnum] Document status options:
        #
        #   @param tag [String]
        #
        #   @param tag1 [String]
        #
        #   @param tag2 [String]
        #
        #   @param template [String, nil]
        #
        #   @param templatepdf [String, nil]
        #
        #   @param text [String, nil]
        #
        #   @param user [String]
        #
        #   @param uuid [String]

        # @see Legalesign::Models::DocumentListResponse::Object#signers_in_order
        module SignersInOrder
          extend Legalesign::Internal::Type::Enum

          SIGNERS_IN_ORDER_0 = 0
          SIGNERS_IN_ORDER_1 = 1

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end
    end
  end
end
