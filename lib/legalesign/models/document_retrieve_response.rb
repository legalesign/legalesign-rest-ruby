# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#retrieve
    class DocumentRetrieveResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean, nil]
      optional :archived, Legalesign::Internal::Type::Boolean

      # @!attribute auto_archive
      #   Send document archive very soon after signing.
      #
      #   @return [Boolean, nil]
      optional :auto_archive, Legalesign::Internal::Type::Boolean

      # @!attribute cc_emails
      #   who will be cc'd with sender on email notification when signed
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
      #   Final PDF is available to download
      #
      #   @return [Boolean, nil]
      optional :download_final, Legalesign::Internal::Type::Boolean

      # @!attribute footer
      #   HTML docs - text for footer if used
      #
      #   @return [String, nil]
      optional :footer, String

      # @!attribute footer_height
      #   HTMl docs - px height of footer if used
      #
      #   @return [Integer, nil]
      optional :footer_height, Integer

      # @!attribute group
      #   Resource URI of group
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute has_fields
      #
      #   @return [Boolean, nil]
      optional :has_fields, Legalesign::Internal::Type::Boolean

      # @!attribute hash_value
      #   SHA256 checksum of final doc, use this to validate your final PDF download
      #
      #   @return [String, nil]
      optional :hash_value, String

      # @!attribute header
      #   HTML docs - text for header if used
      #
      #   @return [String, nil]
      optional :header, String

      # @!attribute header_height
      #   HTMl docs - px height of header if used
      #
      #   @return [Integer, nil]
      optional :header_height, Integer

      # @!attribute modified
      #
      #   @return [Time, nil]
      optional :modified, Time

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute pdf_password
      #   PDF password if used and if save-able
      #
      #   @return [String, nil]
      optional :pdf_password, String

      # @!attribute pdf_password_type
      #   how pdf password is retained
      #
      #   @return [String, nil]
      optional :pdf_password_type, String

      # @!attribute pdftext
      #   ignore this
      #
      #   @return [String, nil]
      optional :pdftext, String

      # @!attribute redirect
      #   url for signer redirect after signing
      #
      #   @return [String, nil]
      optional :redirect, String

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute return_signer_links
      #   ignore
      #
      #   @return [Boolean, nil]
      optional :return_signer_links, Legalesign::Internal::Type::Boolean

      # @!attribute sign_mouse
      #   legacy
      #
      #   @return [Boolean, nil]
      optional :sign_mouse, Legalesign::Internal::Type::Boolean

      # @!attribute sign_time
      #
      #   @return [Time, nil]
      optional :sign_time, Time

      # @!attribute sign_type
      #   legacy
      #
      #   @return [Boolean, nil]
      optional :sign_type, Legalesign::Internal::Type::Boolean

      # @!attribute sign_upload
      #   legacy
      #
      #   @return [Boolean, nil]
      optional :sign_upload, Legalesign::Internal::Type::Boolean

      # @!attribute signature_placement
      #   legacy
      #
      #   @return [Integer, nil]
      optional :signature_placement, Integer

      # @!attribute signature_type
      #   legacy - always 4
      #
      #   @return [Integer, nil]
      optional :signature_type, Integer

      # @!attribute signers
      #   nested arrays with signer details
      #
      #   @return [Array<Array<String>>, nil]
      optional :signers, Legalesign::Internal::Type::ArrayOf[Legalesign::Internal::Type::ArrayOf[String]]

      # @!attribute signers_in_order
      #
      #   @return [Boolean, nil]
      optional :signers_in_order, Legalesign::Internal::Type::Boolean

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
      #   your reference
      #
      #   @return [String, nil]
      optional :tag, String

      # @!attribute tag1
      #   your reference
      #
      #   @return [String, nil]
      optional :tag1, String

      # @!attribute tag2
      #   your reference
      #
      #   @return [String, nil]
      optional :tag2, String

      # @!attribute template
      #
      #   @return [String, nil]
      optional :template, String

      # @!attribute templatepdf
      #
      #   @return [String, nil]
      optional :templatepdf, String

      # @!attribute text
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute user
      #   Resource URI of user
      #
      #   @return [String, nil]
      optional :user, String

      # @!attribute uuid
      #   Object ID alone
      #
      #   @return [String, nil]
      optional :uuid, String

      # @!method initialize(archived: nil, auto_archive: nil, cc_emails: nil, created: nil, do_email: nil, download_final: nil, footer: nil, footer_height: nil, group: nil, has_fields: nil, hash_value: nil, header: nil, header_height: nil, modified: nil, name: nil, pdf_password: nil, pdf_password_type: nil, pdftext: nil, redirect: nil, resource_uri: nil, return_signer_links: nil, sign_mouse: nil, sign_time: nil, sign_type: nil, sign_upload: nil, signature_placement: nil, signature_type: nil, signers: nil, signers_in_order: nil, status: nil, tag: nil, tag1: nil, tag2: nil, template: nil, templatepdf: nil, text: nil, user: nil, uuid: nil)
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::DocumentRetrieveResponse} for more details.
      #
      #   @param archived [Boolean]
      #
      #   @param auto_archive [Boolean] Send document archive very soon after signing.
      #
      #   @param cc_emails [String] who will be cc'd with sender on email notification when signed
      #
      #   @param created [Time]
      #
      #   @param do_email [Boolean]
      #
      #   @param download_final [Boolean] Final PDF is available to download
      #
      #   @param footer [String] HTML docs - text for footer if used
      #
      #   @param footer_height [Integer] HTMl docs - px height of footer if used
      #
      #   @param group [String] Resource URI of group
      #
      #   @param has_fields [Boolean]
      #
      #   @param hash_value [String] SHA256 checksum of final doc, use this to validate your final PDF download
      #
      #   @param header [String] HTML docs - text for header if used
      #
      #   @param header_height [Integer] HTMl docs - px height of header if used
      #
      #   @param modified [Time]
      #
      #   @param name [String]
      #
      #   @param pdf_password [String] PDF password if used and if save-able
      #
      #   @param pdf_password_type [String] how pdf password is retained
      #
      #   @param pdftext [String] ignore this
      #
      #   @param redirect [String] url for signer redirect after signing
      #
      #   @param resource_uri [String]
      #
      #   @param return_signer_links [Boolean] ignore
      #
      #   @param sign_mouse [Boolean] legacy
      #
      #   @param sign_time [Time]
      #
      #   @param sign_type [Boolean] legacy
      #
      #   @param sign_upload [Boolean] legacy
      #
      #   @param signature_placement [Integer] legacy
      #
      #   @param signature_type [Integer] legacy - always 4
      #
      #   @param signers [Array<Array<String>>] nested arrays with signer details
      #
      #   @param signers_in_order [Boolean]
      #
      #   @param status [Integer, Legalesign::Models::DocumentStatusEnum] Document status options:
      #
      #   @param tag [String] your reference
      #
      #   @param tag1 [String] your reference
      #
      #   @param tag2 [String] your reference
      #
      #   @param template [String]
      #
      #   @param templatepdf [String]
      #
      #   @param text [String]
      #
      #   @param user [String] Resource URI of user
      #
      #   @param uuid [String] Object ID alone
    end
  end
end
