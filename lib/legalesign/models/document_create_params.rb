# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#create
    class DocumentCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #
      #   @return [String]
      required :group, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute signers
      #
      #   @return [Array<Legalesign::Models::DocumentCreateParams::Signer>]
      required :signers, -> { Legalesign::Internal::Type::ArrayOf[Legalesign::DocumentCreateParams::Signer] }

      # @!attribute append_pdf
      #   Append Legalesign validation info to final PDF. If not included uses the group
      #   default.
      #
      #   @return [Boolean, nil]
      optional :append_pdf, Legalesign::Internal::Type::Boolean

      # @!attribute auto_archive
      #   Send to archive soon after signing. Keeps web app clutter free
      #
      #   @return [Boolean, nil]
      optional :auto_archive, Legalesign::Internal::Type::Boolean

      # @!attribute cc_emails
      #   Comma delimited string of email addresses that are notified of signing or
      #   rejection.
      #
      #   @return [String, nil]
      optional :cc_emails, String

      # @!attribute convert_sender_to_signer
      #   If any sender fields are left blank, convert them to fields for the first
      #   recipient.
      #
      #   @return [Boolean, nil]
      optional :convert_sender_to_signer, Legalesign::Internal::Type::Boolean

      # @!attribute do_email
      #   Use Legalesign email to send notification emails. If false suppresses all
      #   emails.
      #
      #   @return [Boolean, nil]
      optional :do_email, Legalesign::Internal::Type::Boolean

      # @!attribute footer
      #   Text doc only. The footer for the final pdf. Use keyword \"default\" to use
      #   group default footer.
      #
      #   @return [String, nil]
      optional :footer, String

      # @!attribute footer_height
      #   Text based doc only. Pixel height of PDF footer, if used. 1px = 0.025cm
      #
      #   @return [Integer, nil]
      optional :footer_height, Integer

      # @!attribute header
      #   Text based doc only. The header for the final pdf. Use keyword \"default\" to
      #   use group header footer.
      #
      #   @return [String, nil]
      optional :header, String

      # @!attribute header_height
      #   Text based doc only. Pixel height of final PDF footer, if used. 1px = 0.025cm
      #
      #   @return [Integer, nil]
      optional :header_height, Integer

      # @!attribute pdf_password
      #   Set a password. Must be ascii encode-able, you must also set signature_type to 4
      #   and choose a pdf_password_type.
      #
      #   @return [String, nil]
      optional :pdf_password, String

      # @!attribute pdf_password_type
      #   1 to store password, 2 for to delete from our records upon final signing.
      #
      #   @return [Integer, Legalesign::Models::DocumentCreateParams::PdfPasswordType, nil]
      optional :pdf_password_type, enum: -> { Legalesign::DocumentCreateParams::PdfPasswordType }

      # @!attribute pdftext
      #   Assign values to PDF sender fields, use field labels as keys. Requires unique
      #   fields labels. See also strict_fields.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :pdftext, Legalesign::Internal::Type::HashOf[String]

      # @!attribute redirect
      #   URL to send the signer to after signing (instead of download page). Your URL
      #   will include query parameters with ID and state information as follows:
      #   YOUR-URL?signer=[signer_uid]&doc=[doc_id]&group=[group_id]&signer_state=[signer_status]&doc_state=[doc_status]
      #
      #   @return [String, nil]
      optional :redirect, String

      # @!attribute reminders
      #   Put 'default' if you wish to use the default reminder schedule in the group (go
      #   to web app to set default schedule)
      #
      #   @return [String, nil]
      optional :reminders, String

      # @!attribute return_signer_links
      #   Return document links for signers in the response BODY.
      #
      #   @return [Boolean, nil]
      optional :return_signer_links, Legalesign::Internal::Type::Boolean

      # @!attribute signature_type
      #   Use 4 to get your executed PDF Certified. Recommended. Defaults to 1 (uses a
      #   sha256 hash for document integrity).
      #
      #   @return [Integer, nil]
      optional :signature_type, Integer

      # @!attribute signers_in_order
      #   Notify signers in their order sequence. If false all are notified
      #   simulataneously.
      #
      #   @return [Boolean, nil]
      optional :signers_in_order, Legalesign::Internal::Type::Boolean

      # @!attribute signertext
      #   Add custom placeholders to signer fields, using labels as keys in an object (as
      #   for pdftext). Relies on unique labelling.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :signertext, Legalesign::Internal::Type::HashOf[String]

      # @!attribute strict_fields
      #   pdftext fails silently for invalid field value, set to true to return an error
      #
      #   @return [Boolean, nil]
      optional :strict_fields, Legalesign::Internal::Type::Boolean

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
      #   Resource URI of text template object. This call must contain either one of the
      #   attributes text, templatepdf, template.
      #
      #   @return [String, nil]
      optional :template, String

      # @!attribute templatepdf
      #   Resource URI of templatepdf object. This API call must contain either one of the
      #   attributes text, templatepdf, template.
      #
      #   @return [String, nil]
      optional :templatepdf, String

      # @!attribute text
      #   Raw html. This API call must contain either one of the attributes text,
      #   templatepdf, template.
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute user
      #   Assign document another user in the group. Defaults to API
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(group:, name:, signers:, append_pdf: nil, auto_archive: nil, cc_emails: nil, convert_sender_to_signer: nil, do_email: nil, footer: nil, footer_height: nil, header: nil, header_height: nil, pdf_password: nil, pdf_password_type: nil, pdftext: nil, redirect: nil, reminders: nil, return_signer_links: nil, signature_type: nil, signers_in_order: nil, signertext: nil, strict_fields: nil, tag: nil, tag1: nil, tag2: nil, template: nil, templatepdf: nil, text: nil, user: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::DocumentCreateParams} for more details.
      #
      #   @param group [String]
      #
      #   @param name [String]
      #
      #   @param signers [Array<Legalesign::Models::DocumentCreateParams::Signer>]
      #
      #   @param append_pdf [Boolean] Append Legalesign validation info to final PDF. If not included uses the group d
      #
      #   @param auto_archive [Boolean] Send to archive soon after signing. Keeps web app clutter free
      #
      #   @param cc_emails [String] Comma delimited string of email addresses that are notified of signing or reject
      #
      #   @param convert_sender_to_signer [Boolean] If any sender fields are left blank, convert them to fields for the first recipi
      #
      #   @param do_email [Boolean] Use Legalesign email to send notification emails. If false suppresses all emails
      #
      #   @param footer [String] Text doc only. The footer for the final pdf. Use keyword \"default\" to use grou
      #
      #   @param footer_height [Integer] Text based doc only. Pixel height of PDF footer, if used. 1px = 0.025cm
      #
      #   @param header [String] Text based doc only. The header for the final pdf. Use keyword \"default\" to us
      #
      #   @param header_height [Integer] Text based doc only. Pixel height of final PDF footer, if used. 1px = 0.025cm
      #
      #   @param pdf_password [String] Set a password. Must be ascii encode-able, you must also set signature_type to 4
      #
      #   @param pdf_password_type [Integer, Legalesign::Models::DocumentCreateParams::PdfPasswordType] 1 to store password, 2 for to delete from our records upon final signing.
      #
      #   @param pdftext [Hash{Symbol=>String}] Assign values to PDF sender fields, use field labels as keys. Requires unique fi
      #
      #   @param redirect [String] URL to send the signer to after signing (instead of download page). Your URL wi
      #
      #   @param reminders [String] Put 'default' if you wish to use the default reminder schedule in the group (go
      #
      #   @param return_signer_links [Boolean] Return document links for signers in the response BODY.
      #
      #   @param signature_type [Integer] Use 4 to get your executed PDF Certified. Recommended. Defaults to 1 (uses a sha
      #
      #   @param signers_in_order [Boolean] Notify signers in their order sequence. If false all are notified simulataneousl
      #
      #   @param signertext [Hash{Symbol=>String}] Add custom placeholders to signer fields, using labels as keys in an object (as
      #
      #   @param strict_fields [Boolean] pdftext fails silently for invalid field value, set to true to return an error
      #
      #   @param tag [String]
      #
      #   @param tag1 [String]
      #
      #   @param tag2 [String]
      #
      #   @param template [String] Resource URI of text template object. This call must contain either one of the a
      #
      #   @param templatepdf [String] Resource URI of templatepdf object. This API call must contain either one of the
      #
      #   @param text [String] Raw html. This API call must contain either one of the attributes text, template
      #
      #   @param user [String] Assign document another user in the group. Defaults to API
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]

      class Signer < Legalesign::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute firstname
        #
        #   @return [String]
        required :firstname, String

        # @!attribute lastname
        #
        #   @return [String]
        required :lastname, String

        # @!attribute attachments
        #   List of attachment resource URIs
        #
        #   @return [Array<String>, nil]
        optional :attachments, Legalesign::Internal::Type::ArrayOf[String]

        # @!attribute behalfof
        #   @deprecated
        #
        #   deprecated, do not use
        #
        #   @return [String, nil]
        optional :behalfof, String

        # @!attribute decide_later
        #   Add this you want the previous signer or approver to decide who the next person
        #   should be. Commonly used for witnesses (see \"role\"). If you use this leave all
        #   other attributes blank. First signer cannot use this attribute.
        #
        #   @return [Boolean, nil]
        optional :decide_later, Legalesign::Internal::Type::Boolean

        # @!attribute expires
        #   ISO8601 formed datetime, set to TZ of sender or timezone if used
        #
        #   @return [Time, nil]
        optional :expires, Time, nil?: true

        # @!attribute message
        #   Your personal message for the party, entered in the centre of the group email
        #   template. Use the name of a saved email template preceeded by a hash symbol to
        #   use that template. If there is more than one template of the same name it will
        #   select the one last modified.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute order
        #   @deprecated
        #
        #   Zero-indexed signer ordering, deprecated. Ordering of
        #   signers/witnesses/approvers is now the natural order of your signers list.
        #
        #   @return [Integer, nil]
        optional :order, Integer

        # @!attribute reviewers
        #
        #   @return [Array<Legalesign::Models::DocumentCreateParams::Signer::Reviewer>, nil]
        optional :reviewers,
                 -> { Legalesign::Internal::Type::ArrayOf[Legalesign::DocumentCreateParams::Signer::Reviewer] }

        # @!attribute role
        #   @deprecated
        #
        #   If this person is a witness use \"witness\". Required where a witness is defined
        #   in your PDF. If this person is a normal signer, use \"approver\" to switch to an
        #   approver role. Witnesses and witnessed signers also require \"sms\" (see also
        #   \"decide_later\").
        #
        #   @return [Symbol, Legalesign::Models::DocumentCreateParams::Signer::Role, nil]
        optional :role, enum: -> { Legalesign::DocumentCreateParams::Signer::Role }

        # @!attribute sms
        #   Use international format number to add SMS verification. Required if a witness
        #   or a witnessed signer.
        #
        #   @return [String, nil]
        optional :sms, String

        # @!attribute subject
        #   Subject line for outbound email
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute timezone
        #   TZ of the signer, must be valid TZ as per timezoneenum (see User for
        #   timezoneenum details). If blank uses tz of the sender.
        #
        #   @return [String, nil]
        optional :timezone, String

        # @!method initialize(email:, firstname:, lastname:, attachments: nil, behalfof: nil, decide_later: nil, expires: nil, message: nil, order: nil, reviewers: nil, role: nil, sms: nil, subject: nil, timezone: nil)
        #   Some parameter documentations has been truncated, see
        #   {Legalesign::Models::DocumentCreateParams::Signer} for more details.
        #
        #   @param email [String]
        #
        #   @param firstname [String]
        #
        #   @param lastname [String]
        #
        #   @param attachments [Array<String>] List of attachment resource URIs
        #
        #   @param behalfof [String] deprecated, do not use
        #
        #   @param decide_later [Boolean] Add this you want the previous signer or approver to decide who the next person
        #
        #   @param expires [Time, nil] ISO8601 formed datetime, set to TZ of sender or timezone if used
        #
        #   @param message [String] Your personal message for the party, entered in the centre of the group email te
        #
        #   @param order [Integer] Zero-indexed signer ordering, deprecated. Ordering of signers/witnesses/approver
        #
        #   @param reviewers [Array<Legalesign::Models::DocumentCreateParams::Signer::Reviewer>]
        #
        #   @param role [Symbol, Legalesign::Models::DocumentCreateParams::Signer::Role] If this person is a witness use \"witness\". Required where a witness is defined
        #
        #   @param sms [String] Use international format number to add SMS verification. Required if a witness o
        #
        #   @param subject [String] Subject line for outbound email
        #
        #   @param timezone [String] TZ of the signer, must be valid TZ as per timezoneenum (see User for timezoneenu

        class Reviewer < Legalesign::Internal::Type::BaseModel
          # @!attribute email
          #
          #   @return [String]
          required :email, String

          # @!attribute firstname
          #
          #   @return [String, nil]
          optional :firstname, String

          # @!attribute include_link
          #   include a link to the signing pages enabling a reviewer to signer
          #
          #   @return [Boolean, nil]
          optional :include_link, Legalesign::Internal::Type::Boolean

          # @!attribute lastname
          #
          #   @return [String, nil]
          optional :lastname, String

          # @!method initialize(email:, firstname: nil, include_link: nil, lastname: nil)
          #   Create a reviewer. A reviewer is linked to a signer and receives emailed copies
          #   of draft and signed documents. N.B. they only receive them if their associated
          #   signer does. Therefore make sure your admin/experience settings are set to
          #   attach PDFs to your signer emails. You can set to include the signing link to a
          #   reviewer, and thereby hit the use case to send a document to a group of people
          #   where the first who signs, signs.
          #
          #   @param email [String]
          #
          #   @param firstname [String]
          #
          #   @param include_link [Boolean] include a link to the signing pages enabling a reviewer to signer
          #
          #   @param lastname [String]
        end

        # @deprecated
        #
        # If this person is a witness use \"witness\". Required where a witness is defined
        # in your PDF. If this person is a normal signer, use \"approver\" to switch to an
        # approver role. Witnesses and witnessed signers also require \"sms\" (see also
        # \"decide_later\").
        #
        # @see Legalesign::Models::DocumentCreateParams::Signer#role
        module Role
          extend Legalesign::Internal::Type::Enum

          WITNESS = :witness
          APPROVER = :approver

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # 1 to store password, 2 for to delete from our records upon final signing.
      module PdfPasswordType
        extend Legalesign::Internal::Type::Enum

        PDF_PASSWORD_TYPE_1 = 1
        PDF_PASSWORD_TYPE_2 = 2

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
