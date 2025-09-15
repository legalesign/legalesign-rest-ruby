# typed: strong

module Legalesign
  module Models
    class DocumentCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::DocumentCreateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :group

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[Legalesign::DocumentCreateParams::Signer]) }
      attr_accessor :signers

      # Append Legalesign validation info to final PDF. If not included uses the group
      # default.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :append_pdf

      sig { params(append_pdf: T::Boolean).void }
      attr_writer :append_pdf

      # Send to archive soon after signing. Keeps web app clutter free
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_archive

      sig { params(auto_archive: T::Boolean).void }
      attr_writer :auto_archive

      # Comma delimited string of email addresses that are notified of signing or
      # rejection.
      sig { returns(T.nilable(String)) }
      attr_reader :cc_emails

      sig { params(cc_emails: String).void }
      attr_writer :cc_emails

      # If any sender fields are left blank, convert them to fields for the first
      # recipient.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :convert_sender_to_signer

      sig { params(convert_sender_to_signer: T::Boolean).void }
      attr_writer :convert_sender_to_signer

      # Use Legalesign email to send notification emails. If false suppresses all
      # emails.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :do_email

      sig { params(do_email: T::Boolean).void }
      attr_writer :do_email

      # Text doc only. The footer for the final pdf. Use keyword \"default\" to use
      # group default footer.
      sig { returns(T.nilable(String)) }
      attr_reader :footer

      sig { params(footer: String).void }
      attr_writer :footer

      # Text based doc only. Pixel height of PDF footer, if used. 1px = 0.025cm
      sig { returns(T.nilable(Integer)) }
      attr_reader :footer_height

      sig { params(footer_height: Integer).void }
      attr_writer :footer_height

      # Text based doc only. The header for the final pdf. Use keyword \"default\" to
      # use group header footer.
      sig { returns(T.nilable(String)) }
      attr_reader :header

      sig { params(header: String).void }
      attr_writer :header

      # Text based doc only. Pixel height of final PDF footer, if used. 1px = 0.025cm
      sig { returns(T.nilable(Integer)) }
      attr_reader :header_height

      sig { params(header_height: Integer).void }
      attr_writer :header_height

      # Set a password. Must be ascii encode-able, you must also set signature_type to 4
      # and choose a pdf_password_type.
      sig { returns(T.nilable(String)) }
      attr_reader :pdf_password

      sig { params(pdf_password: String).void }
      attr_writer :pdf_password

      # 1 to store password, 2 for to delete from our records upon final signing.
      sig do
        returns(
          T.nilable(
            Legalesign::DocumentCreateParams::PdfPasswordType::OrInteger
          )
        )
      end
      attr_reader :pdf_password_type

      sig do
        params(
          pdf_password_type:
            Legalesign::DocumentCreateParams::PdfPasswordType::OrInteger
        ).void
      end
      attr_writer :pdf_password_type

      # Assign values to PDF sender fields, use field labels as keys. Requires unique
      # fields labels. See also strict_fields.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :pdftext

      sig { params(pdftext: T::Hash[Symbol, String]).void }
      attr_writer :pdftext

      # URL to send the signer to after signing (instead of download page). Your URL
      # will include query parameters with ID and state information as follows:
      # YOUR-URL?signer=[signer_uid]&doc=[doc_id]&group=[group_id]&signer_state=[signer_status]&doc_state=[doc_status]
      sig { returns(T.nilable(String)) }
      attr_reader :redirect

      sig { params(redirect: String).void }
      attr_writer :redirect

      # Put 'default' if you wish to use the default reminder schedule in the group (go
      # to web app to set default schedule)
      sig { returns(T.nilable(String)) }
      attr_reader :reminders

      sig { params(reminders: String).void }
      attr_writer :reminders

      # Return document links for signers in the response BODY.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :return_signer_links

      sig { params(return_signer_links: T::Boolean).void }
      attr_writer :return_signer_links

      # Use 4 to get your executed PDF Certified. Recommended. Defaults to 1 (uses a
      # sha256 hash for document integrity).
      sig { returns(T.nilable(Integer)) }
      attr_reader :signature_type

      sig { params(signature_type: Integer).void }
      attr_writer :signature_type

      # Notify signers in their order sequence. If false all are notified
      # simulataneously.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :signers_in_order

      sig { params(signers_in_order: T::Boolean).void }
      attr_writer :signers_in_order

      # Add custom placeholders to signer fields, using labels as keys in an object (as
      # for pdftext). Relies on unique labelling.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :signertext

      sig { params(signertext: T::Hash[Symbol, String]).void }
      attr_writer :signertext

      # pdftext fails silently for invalid field value, set to true to return an error
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :strict_fields

      sig { params(strict_fields: T::Boolean).void }
      attr_writer :strict_fields

      sig { returns(T.nilable(String)) }
      attr_reader :tag

      sig { params(tag: String).void }
      attr_writer :tag

      sig { returns(T.nilable(String)) }
      attr_reader :tag1

      sig { params(tag1: String).void }
      attr_writer :tag1

      sig { returns(T.nilable(String)) }
      attr_reader :tag2

      sig { params(tag2: String).void }
      attr_writer :tag2

      # Resource URI of text template object. This call must contain either one of the
      # attributes text, templatepdf, template.
      sig { returns(T.nilable(String)) }
      attr_reader :template

      sig { params(template: String).void }
      attr_writer :template

      # Resource URI of templatepdf object. This API call must contain either one of the
      # attributes text, templatepdf, template.
      sig { returns(T.nilable(String)) }
      attr_reader :templatepdf

      sig { params(templatepdf: String).void }
      attr_writer :templatepdf

      # Raw html. This API call must contain either one of the attributes text,
      # templatepdf, template.
      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # Assign document another user in the group. Defaults to API
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          group: String,
          name: String,
          signers: T::Array[Legalesign::DocumentCreateParams::Signer::OrHash],
          append_pdf: T::Boolean,
          auto_archive: T::Boolean,
          cc_emails: String,
          convert_sender_to_signer: T::Boolean,
          do_email: T::Boolean,
          footer: String,
          footer_height: Integer,
          header: String,
          header_height: Integer,
          pdf_password: String,
          pdf_password_type:
            Legalesign::DocumentCreateParams::PdfPasswordType::OrInteger,
          pdftext: T::Hash[Symbol, String],
          redirect: String,
          reminders: String,
          return_signer_links: T::Boolean,
          signature_type: Integer,
          signers_in_order: T::Boolean,
          signertext: T::Hash[Symbol, String],
          strict_fields: T::Boolean,
          tag: String,
          tag1: String,
          tag2: String,
          template: String,
          templatepdf: String,
          text: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        group:,
        name:,
        signers:,
        # Append Legalesign validation info to final PDF. If not included uses the group
        # default.
        append_pdf: nil,
        # Send to archive soon after signing. Keeps web app clutter free
        auto_archive: nil,
        # Comma delimited string of email addresses that are notified of signing or
        # rejection.
        cc_emails: nil,
        # If any sender fields are left blank, convert them to fields for the first
        # recipient.
        convert_sender_to_signer: nil,
        # Use Legalesign email to send notification emails. If false suppresses all
        # emails.
        do_email: nil,
        # Text doc only. The footer for the final pdf. Use keyword \"default\" to use
        # group default footer.
        footer: nil,
        # Text based doc only. Pixel height of PDF footer, if used. 1px = 0.025cm
        footer_height: nil,
        # Text based doc only. The header for the final pdf. Use keyword \"default\" to
        # use group header footer.
        header: nil,
        # Text based doc only. Pixel height of final PDF footer, if used. 1px = 0.025cm
        header_height: nil,
        # Set a password. Must be ascii encode-able, you must also set signature_type to 4
        # and choose a pdf_password_type.
        pdf_password: nil,
        # 1 to store password, 2 for to delete from our records upon final signing.
        pdf_password_type: nil,
        # Assign values to PDF sender fields, use field labels as keys. Requires unique
        # fields labels. See also strict_fields.
        pdftext: nil,
        # URL to send the signer to after signing (instead of download page). Your URL
        # will include query parameters with ID and state information as follows:
        # YOUR-URL?signer=[signer_uid]&doc=[doc_id]&group=[group_id]&signer_state=[signer_status]&doc_state=[doc_status]
        redirect: nil,
        # Put 'default' if you wish to use the default reminder schedule in the group (go
        # to web app to set default schedule)
        reminders: nil,
        # Return document links for signers in the response BODY.
        return_signer_links: nil,
        # Use 4 to get your executed PDF Certified. Recommended. Defaults to 1 (uses a
        # sha256 hash for document integrity).
        signature_type: nil,
        # Notify signers in their order sequence. If false all are notified
        # simulataneously.
        signers_in_order: nil,
        # Add custom placeholders to signer fields, using labels as keys in an object (as
        # for pdftext). Relies on unique labelling.
        signertext: nil,
        # pdftext fails silently for invalid field value, set to true to return an error
        strict_fields: nil,
        tag: nil,
        tag1: nil,
        tag2: nil,
        # Resource URI of text template object. This call must contain either one of the
        # attributes text, templatepdf, template.
        template: nil,
        # Resource URI of templatepdf object. This API call must contain either one of the
        # attributes text, templatepdf, template.
        templatepdf: nil,
        # Raw html. This API call must contain either one of the attributes text,
        # templatepdf, template.
        text: nil,
        # Assign document another user in the group. Defaults to API
        user: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            name: String,
            signers: T::Array[Legalesign::DocumentCreateParams::Signer],
            append_pdf: T::Boolean,
            auto_archive: T::Boolean,
            cc_emails: String,
            convert_sender_to_signer: T::Boolean,
            do_email: T::Boolean,
            footer: String,
            footer_height: Integer,
            header: String,
            header_height: Integer,
            pdf_password: String,
            pdf_password_type:
              Legalesign::DocumentCreateParams::PdfPasswordType::OrInteger,
            pdftext: T::Hash[Symbol, String],
            redirect: String,
            reminders: String,
            return_signer_links: T::Boolean,
            signature_type: Integer,
            signers_in_order: T::Boolean,
            signertext: T::Hash[Symbol, String],
            strict_fields: T::Boolean,
            tag: String,
            tag1: String,
            tag2: String,
            template: String,
            templatepdf: String,
            text: String,
            user: String,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Signer < Legalesign::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Legalesign::DocumentCreateParams::Signer,
              Legalesign::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :firstname

        sig { returns(String) }
        attr_accessor :lastname

        # List of attachment resource URIs
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :attachments

        sig { params(attachments: T::Array[String]).void }
        attr_writer :attachments

        # deprecated, do not use
        sig { returns(T.nilable(String)) }
        attr_reader :behalfof

        sig { params(behalfof: String).void }
        attr_writer :behalfof

        # Add this you want the previous signer or approver to decide who the next person
        # should be. Commonly used for witnesses (see \"role\"). If you use this leave all
        # other attributes blank. First signer cannot use this attribute.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :decide_later

        sig { params(decide_later: T::Boolean).void }
        attr_writer :decide_later

        # ISO8601 formed datetime, set to TZ of sender or timezone if used
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires

        # Your personal message for the party, entered in the centre of the group email
        # template. Use the name of a saved email template preceeded by a hash symbol to
        # use that template. If there is more than one template of the same name it will
        # select the one last modified.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # Zero-indexed signer ordering, deprecated. Ordering of
        # signers/witnesses/approvers is now the natural order of your signers list.
        sig { returns(T.nilable(Integer)) }
        attr_reader :order

        sig { params(order: Integer).void }
        attr_writer :order

        sig do
          returns(
            T.nilable(
              T::Array[Legalesign::DocumentCreateParams::Signer::Reviewer]
            )
          )
        end
        attr_reader :reviewers

        sig do
          params(
            reviewers:
              T::Array[
                Legalesign::DocumentCreateParams::Signer::Reviewer::OrHash
              ]
          ).void
        end
        attr_writer :reviewers

        # If this person is a witness use \"witness\". Required where a witness is defined
        # in your PDF. If this person is a normal signer, use \"approver\" to switch to an
        # approver role. Witnesses and witnessed signers also require \"sms\" (see also
        # \"decide_later\").
        sig do
          returns(
            T.nilable(Legalesign::DocumentCreateParams::Signer::Role::OrSymbol)
          )
        end
        attr_reader :role

        sig do
          params(
            role: Legalesign::DocumentCreateParams::Signer::Role::OrSymbol
          ).void
        end
        attr_writer :role

        # Use international format number to add SMS verification. Required if a witness
        # or a witnessed signer.
        sig { returns(T.nilable(String)) }
        attr_reader :sms

        sig { params(sms: String).void }
        attr_writer :sms

        # Subject line for outbound email
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        # TZ of the signer, must be valid TZ as per timezoneenum (see User for
        # timezoneenum details). If blank uses tz of the sender.
        sig { returns(T.nilable(String)) }
        attr_reader :timezone

        sig { params(timezone: String).void }
        attr_writer :timezone

        sig do
          params(
            email: String,
            firstname: String,
            lastname: String,
            attachments: T::Array[String],
            behalfof: String,
            decide_later: T::Boolean,
            expires: T.nilable(Time),
            message: String,
            order: Integer,
            reviewers:
              T::Array[
                Legalesign::DocumentCreateParams::Signer::Reviewer::OrHash
              ],
            role: Legalesign::DocumentCreateParams::Signer::Role::OrSymbol,
            sms: String,
            subject: String,
            timezone: String
          ).returns(T.attached_class)
        end
        def self.new(
          email:,
          firstname:,
          lastname:,
          # List of attachment resource URIs
          attachments: nil,
          # deprecated, do not use
          behalfof: nil,
          # Add this you want the previous signer or approver to decide who the next person
          # should be. Commonly used for witnesses (see \"role\"). If you use this leave all
          # other attributes blank. First signer cannot use this attribute.
          decide_later: nil,
          # ISO8601 formed datetime, set to TZ of sender or timezone if used
          expires: nil,
          # Your personal message for the party, entered in the centre of the group email
          # template. Use the name of a saved email template preceeded by a hash symbol to
          # use that template. If there is more than one template of the same name it will
          # select the one last modified.
          message: nil,
          # Zero-indexed signer ordering, deprecated. Ordering of
          # signers/witnesses/approvers is now the natural order of your signers list.
          order: nil,
          reviewers: nil,
          # If this person is a witness use \"witness\". Required where a witness is defined
          # in your PDF. If this person is a normal signer, use \"approver\" to switch to an
          # approver role. Witnesses and witnessed signers also require \"sms\" (see also
          # \"decide_later\").
          role: nil,
          # Use international format number to add SMS verification. Required if a witness
          # or a witnessed signer.
          sms: nil,
          # Subject line for outbound email
          subject: nil,
          # TZ of the signer, must be valid TZ as per timezoneenum (see User for
          # timezoneenum details). If blank uses tz of the sender.
          timezone: nil
        )
        end

        sig do
          override.returns(
            {
              email: String,
              firstname: String,
              lastname: String,
              attachments: T::Array[String],
              behalfof: String,
              decide_later: T::Boolean,
              expires: T.nilable(Time),
              message: String,
              order: Integer,
              reviewers:
                T::Array[Legalesign::DocumentCreateParams::Signer::Reviewer],
              role: Legalesign::DocumentCreateParams::Signer::Role::OrSymbol,
              sms: String,
              subject: String,
              timezone: String
            }
          )
        end
        def to_hash
        end

        class Reviewer < Legalesign::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Legalesign::DocumentCreateParams::Signer::Reviewer,
                Legalesign::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :email

          sig { returns(T.nilable(String)) }
          attr_reader :firstname

          sig { params(firstname: String).void }
          attr_writer :firstname

          # include a link to the signing pages enabling a reviewer to signer
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :include_link

          sig { params(include_link: T::Boolean).void }
          attr_writer :include_link

          sig { returns(T.nilable(String)) }
          attr_reader :lastname

          sig { params(lastname: String).void }
          attr_writer :lastname

          # Create a reviewer. A reviewer is linked to a signer and receives emailed copies
          # of draft and signed documents. N.B. they only receive them if their associated
          # signer does. Therefore make sure your admin/experience settings are set to
          # attach PDFs to your signer emails. You can set to include the signing link to a
          # reviewer, and thereby hit the use case to send a document to a group of people
          # where the first who signs, signs.
          sig do
            params(
              email: String,
              firstname: String,
              include_link: T::Boolean,
              lastname: String
            ).returns(T.attached_class)
          end
          def self.new(
            email:,
            firstname: nil,
            # include a link to the signing pages enabling a reviewer to signer
            include_link: nil,
            lastname: nil
          )
          end

          sig do
            override.returns(
              {
                email: String,
                firstname: String,
                include_link: T::Boolean,
                lastname: String
              }
            )
          end
          def to_hash
          end
        end

        # If this person is a witness use \"witness\". Required where a witness is defined
        # in your PDF. If this person is a normal signer, use \"approver\" to switch to an
        # approver role. Witnesses and witnessed signers also require \"sms\" (see also
        # \"decide_later\").
        module Role
          extend Legalesign::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Legalesign::DocumentCreateParams::Signer::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WITNESS =
            T.let(
              :witness,
              Legalesign::DocumentCreateParams::Signer::Role::TaggedSymbol
            )
          APPROVER =
            T.let(
              :approver,
              Legalesign::DocumentCreateParams::Signer::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Legalesign::DocumentCreateParams::Signer::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # 1 to store password, 2 for to delete from our records upon final signing.
      module PdfPasswordType
        extend Legalesign::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(Integer, Legalesign::DocumentCreateParams::PdfPasswordType)
          end
        OrInteger = T.type_alias { Integer }

        PDF_PASSWORD_TYPE_1 =
          T.let(
            1,
            Legalesign::DocumentCreateParams::PdfPasswordType::TaggedInteger
          )
        PDF_PASSWORD_TYPE_2 =
          T.let(
            2,
            Legalesign::DocumentCreateParams::PdfPasswordType::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Legalesign::DocumentCreateParams::PdfPasswordType::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
