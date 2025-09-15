# typed: strong

module Legalesign
  module Resources
    class Document
      # Create signing document
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
        ).returns(Legalesign::Models::DocumentCreateResponse)
      end
      def create(
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

      # Get document
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::DocumentRetrieveResponse)
      end
      def retrieve(
        # document id
        doc_id,
        request_options: {}
      )
      end

      # List (unarchived) signing documents. Use /status/ if you need high-level
      # information.
      sig do
        params(
          group: String,
          archived: String,
          created_gt: Time,
          email: String,
          limit: Integer,
          modified_gt: Time,
          nosigners: String,
          offset: Integer,
          status: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::DocumentListResponse)
      end
      def list(
        # Filter by a specific group, required.
        group:,
        # Filter on archived status, default is false
        archived: nil,
        # Filter for those documents created after a certain time
        created_gt: nil,
        # Filter by signer email
        email: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Filter for those documents modified after a certain time
        modified_gt: nil,
        # Add value '1' to remove signers information for a faster query
        nosigners: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        # Filter on document status
        status: nil,
        request_options: {}
      )
      end

      # Delete does not remove permanently but sets it with status 40 (removed) and
      # archives it.
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def archive(
        # document id
        doc_id,
        request_options: {}
      )
      end

      # Permanently deletes data and files. You must enable group automated deletion. We
      # recommend archiveDocument.
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def delete_permanently(
        # document id
        doc_id,
        request_options: {}
      )
      end

      # Download pdf of audit log
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download_audit_log(
        # document id
        doc_id,
        request_options: {}
      )
      end

      # Get document fields
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T::Array[Legalesign::Models::DocumentGetFieldsResponseItem])
      end
      def get_fields(
        # document id
        doc_id,
        request_options: {}
      )
      end

      # Returns a redirect response (302) with link in the Location header to a one-use
      # temporary URL you can redirect to, to see a preview of the signing page. Follow
      # the redirect immediately since it expires after a few seconds.
      sig do
        params(
          group: String,
          signee_count: Integer,
          text: String,
          title: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def preview(
        group: nil,
        signee_count: nil,
        text: nil,
        title: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
