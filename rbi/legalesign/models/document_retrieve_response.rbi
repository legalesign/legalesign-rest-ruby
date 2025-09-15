# typed: strong

module Legalesign
  module Models
    class DocumentRetrieveResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::DocumentRetrieveResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archived

      sig { params(archived: T::Boolean).void }
      attr_writer :archived

      # Send document archive very soon after signing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :auto_archive

      sig { params(auto_archive: T::Boolean).void }
      attr_writer :auto_archive

      # who will be cc'd with sender on email notification when signed
      sig { returns(T.nilable(String)) }
      attr_reader :cc_emails

      sig { params(cc_emails: String).void }
      attr_writer :cc_emails

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :do_email

      sig { params(do_email: T::Boolean).void }
      attr_writer :do_email

      # Final PDF is available to download
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :download_final

      sig { params(download_final: T::Boolean).void }
      attr_writer :download_final

      # HTML docs - text for footer if used
      sig { returns(T.nilable(String)) }
      attr_reader :footer

      sig { params(footer: String).void }
      attr_writer :footer

      # HTMl docs - px height of footer if used
      sig { returns(T.nilable(Integer)) }
      attr_reader :footer_height

      sig { params(footer_height: Integer).void }
      attr_writer :footer_height

      # Resource URI of group
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_fields

      sig { params(has_fields: T::Boolean).void }
      attr_writer :has_fields

      # SHA256 checksum of final doc, use this to validate your final PDF download
      sig { returns(T.nilable(String)) }
      attr_reader :hash_value

      sig { params(hash_value: String).void }
      attr_writer :hash_value

      # HTML docs - text for header if used
      sig { returns(T.nilable(String)) }
      attr_reader :header

      sig { params(header: String).void }
      attr_writer :header

      # HTMl docs - px height of header if used
      sig { returns(T.nilable(Integer)) }
      attr_reader :header_height

      sig { params(header_height: Integer).void }
      attr_writer :header_height

      sig { returns(T.nilable(Time)) }
      attr_reader :modified

      sig { params(modified: Time).void }
      attr_writer :modified

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # PDF password if used and if save-able
      sig { returns(T.nilable(String)) }
      attr_reader :pdf_password

      sig { params(pdf_password: String).void }
      attr_writer :pdf_password

      # how pdf password is retained
      sig { returns(T.nilable(String)) }
      attr_reader :pdf_password_type

      sig { params(pdf_password_type: String).void }
      attr_writer :pdf_password_type

      # ignore this
      sig { returns(T.nilable(String)) }
      attr_reader :pdftext

      sig { params(pdftext: String).void }
      attr_writer :pdftext

      # url for signer redirect after signing
      sig { returns(T.nilable(String)) }
      attr_reader :redirect

      sig { params(redirect: String).void }
      attr_writer :redirect

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      # ignore
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :return_signer_links

      sig { params(return_signer_links: T::Boolean).void }
      attr_writer :return_signer_links

      # legacy
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sign_mouse

      sig { params(sign_mouse: T::Boolean).void }
      attr_writer :sign_mouse

      sig { returns(T.nilable(Time)) }
      attr_reader :sign_time

      sig { params(sign_time: Time).void }
      attr_writer :sign_time

      # legacy
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sign_type

      sig { params(sign_type: T::Boolean).void }
      attr_writer :sign_type

      # legacy
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sign_upload

      sig { params(sign_upload: T::Boolean).void }
      attr_writer :sign_upload

      # legacy
      sig { returns(T.nilable(Integer)) }
      attr_reader :signature_placement

      sig { params(signature_placement: Integer).void }
      attr_writer :signature_placement

      # legacy - always 4
      sig { returns(T.nilable(Integer)) }
      attr_reader :signature_type

      sig { params(signature_type: Integer).void }
      attr_writer :signature_type

      # nested arrays with signer details
      sig { returns(T.nilable(T::Array[T::Array[String]])) }
      attr_reader :signers

      sig { params(signers: T::Array[T::Array[String]]).void }
      attr_writer :signers

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :signers_in_order

      sig { params(signers_in_order: T::Boolean).void }
      attr_writer :signers_in_order

      # Document status options:
      #
      # - 10 - Initial state, check signer status for sent/unsent
      # - 20 - Fields completed
      # - 30 - Signed
      # - 40 - Removed (before signing)
      # - 50 - Rejected
      sig { returns(T.nilable(Legalesign::DocumentStatusEnum::TaggedInteger)) }
      attr_reader :status

      sig { params(status: Legalesign::DocumentStatusEnum::OrInteger).void }
      attr_writer :status

      # your reference
      sig { returns(T.nilable(String)) }
      attr_reader :tag

      sig { params(tag: String).void }
      attr_writer :tag

      # your reference
      sig { returns(T.nilable(String)) }
      attr_reader :tag1

      sig { params(tag1: String).void }
      attr_writer :tag1

      # your reference
      sig { returns(T.nilable(String)) }
      attr_reader :tag2

      sig { params(tag2: String).void }
      attr_writer :tag2

      sig { returns(T.nilable(String)) }
      attr_reader :template

      sig { params(template: String).void }
      attr_writer :template

      sig { returns(T.nilable(String)) }
      attr_reader :templatepdf

      sig { params(templatepdf: String).void }
      attr_writer :templatepdf

      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      # Resource URI of user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      # Object ID alone
      sig { returns(T.nilable(String)) }
      attr_reader :uuid

      sig { params(uuid: String).void }
      attr_writer :uuid

      sig do
        params(
          archived: T::Boolean,
          auto_archive: T::Boolean,
          cc_emails: String,
          created: Time,
          do_email: T::Boolean,
          download_final: T::Boolean,
          footer: String,
          footer_height: Integer,
          group: String,
          has_fields: T::Boolean,
          hash_value: String,
          header: String,
          header_height: Integer,
          modified: Time,
          name: String,
          pdf_password: String,
          pdf_password_type: String,
          pdftext: String,
          redirect: String,
          resource_uri: String,
          return_signer_links: T::Boolean,
          sign_mouse: T::Boolean,
          sign_time: Time,
          sign_type: T::Boolean,
          sign_upload: T::Boolean,
          signature_placement: Integer,
          signature_type: Integer,
          signers: T::Array[T::Array[String]],
          signers_in_order: T::Boolean,
          status: Legalesign::DocumentStatusEnum::OrInteger,
          tag: String,
          tag1: String,
          tag2: String,
          template: String,
          templatepdf: String,
          text: String,
          user: String,
          uuid: String
        ).returns(T.attached_class)
      end
      def self.new(
        archived: nil,
        # Send document archive very soon after signing.
        auto_archive: nil,
        # who will be cc'd with sender on email notification when signed
        cc_emails: nil,
        created: nil,
        do_email: nil,
        # Final PDF is available to download
        download_final: nil,
        # HTML docs - text for footer if used
        footer: nil,
        # HTMl docs - px height of footer if used
        footer_height: nil,
        # Resource URI of group
        group: nil,
        has_fields: nil,
        # SHA256 checksum of final doc, use this to validate your final PDF download
        hash_value: nil,
        # HTML docs - text for header if used
        header: nil,
        # HTMl docs - px height of header if used
        header_height: nil,
        modified: nil,
        name: nil,
        # PDF password if used and if save-able
        pdf_password: nil,
        # how pdf password is retained
        pdf_password_type: nil,
        # ignore this
        pdftext: nil,
        # url for signer redirect after signing
        redirect: nil,
        resource_uri: nil,
        # ignore
        return_signer_links: nil,
        # legacy
        sign_mouse: nil,
        sign_time: nil,
        # legacy
        sign_type: nil,
        # legacy
        sign_upload: nil,
        # legacy
        signature_placement: nil,
        # legacy - always 4
        signature_type: nil,
        # nested arrays with signer details
        signers: nil,
        signers_in_order: nil,
        # Document status options:
        #
        # - 10 - Initial state, check signer status for sent/unsent
        # - 20 - Fields completed
        # - 30 - Signed
        # - 40 - Removed (before signing)
        # - 50 - Rejected
        status: nil,
        # your reference
        tag: nil,
        # your reference
        tag1: nil,
        # your reference
        tag2: nil,
        template: nil,
        templatepdf: nil,
        text: nil,
        # Resource URI of user
        user: nil,
        # Object ID alone
        uuid: nil
      )
      end

      sig do
        override.returns(
          {
            archived: T::Boolean,
            auto_archive: T::Boolean,
            cc_emails: String,
            created: Time,
            do_email: T::Boolean,
            download_final: T::Boolean,
            footer: String,
            footer_height: Integer,
            group: String,
            has_fields: T::Boolean,
            hash_value: String,
            header: String,
            header_height: Integer,
            modified: Time,
            name: String,
            pdf_password: String,
            pdf_password_type: String,
            pdftext: String,
            redirect: String,
            resource_uri: String,
            return_signer_links: T::Boolean,
            sign_mouse: T::Boolean,
            sign_time: Time,
            sign_type: T::Boolean,
            sign_upload: T::Boolean,
            signature_placement: Integer,
            signature_type: Integer,
            signers: T::Array[T::Array[String]],
            signers_in_order: T::Boolean,
            status: Legalesign::DocumentStatusEnum::TaggedInteger,
            tag: String,
            tag1: String,
            tag2: String,
            template: String,
            templatepdf: String,
            text: String,
            user: String,
            uuid: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
