# frozen_string_literal: true

module Legalesign
  module Resources
    class Document
      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::DocumentCreateParams} for more details.
      #
      # Create signing document
      #
      # @overload create(group:, name:, signers:, append_pdf: nil, auto_archive: nil, cc_emails: nil, convert_sender_to_signer: nil, do_email: nil, footer: nil, footer_height: nil, header: nil, header_height: nil, pdf_password: nil, pdf_password_type: nil, pdftext: nil, redirect: nil, reminders: nil, return_signer_links: nil, signature_type: nil, signers_in_order: nil, signertext: nil, strict_fields: nil, tag: nil, tag1: nil, tag2: nil, template: nil, templatepdf: nil, text: nil, user: nil, request_options: {})
      #
      # @param group [String]
      #
      # @param name [String]
      #
      # @param signers [Array<Legalesign::Models::DocumentCreateParams::Signer>]
      #
      # @param append_pdf [Boolean] Append Legalesign validation info to final PDF. If not included uses the group d
      #
      # @param auto_archive [Boolean] Send to archive soon after signing. Keeps web app clutter free
      #
      # @param cc_emails [String] Comma delimited string of email addresses that are notified of signing or reject
      #
      # @param convert_sender_to_signer [Boolean] If any sender fields are left blank, convert them to fields for the first recipi
      #
      # @param do_email [Boolean] Use Legalesign email to send notification emails. If false suppresses all emails
      #
      # @param footer [String] Text doc only. The footer for the final pdf. Use keyword \"default\" to use grou
      #
      # @param footer_height [Integer] Text based doc only. Pixel height of PDF footer, if used. 1px = 0.025cm
      #
      # @param header [String] Text based doc only. The header for the final pdf. Use keyword \"default\" to us
      #
      # @param header_height [Integer] Text based doc only. Pixel height of final PDF footer, if used. 1px = 0.025cm
      #
      # @param pdf_password [String] Set a password. Must be ascii encode-able, you must also set signature_type to 4
      #
      # @param pdf_password_type [Integer, Legalesign::Models::DocumentCreateParams::PdfPasswordType] 1 to store password, 2 for to delete from our records upon final signing.
      #
      # @param pdftext [Hash{Symbol=>String}] Assign values to PDF sender fields, use field labels as keys. Requires unique fi
      #
      # @param redirect [String] URL to send the signer to after signing (instead of download page). Your URL wi
      #
      # @param reminders [String] Put 'default' if you wish to use the default reminder schedule in the group (go
      #
      # @param return_signer_links [Boolean] Return document links for signers in the response BODY.
      #
      # @param signature_type [Integer] Use 4 to get your executed PDF Certified. Recommended. Defaults to 1 (uses a sha
      #
      # @param signers_in_order [Boolean] Notify signers in their order sequence. If false all are notified simulataneousl
      #
      # @param signertext [Hash{Symbol=>String}] Add custom placeholders to signer fields, using labels as keys in an object (as
      #
      # @param strict_fields [Boolean] pdftext fails silently for invalid field value, set to true to return an error
      #
      # @param tag [String]
      #
      # @param tag1 [String]
      #
      # @param tag2 [String]
      #
      # @param template [String] Resource URI of text template object. This call must contain either one of the a
      #
      # @param templatepdf [String] Resource URI of templatepdf object. This API call must contain either one of the
      #
      # @param text [String] Raw html. This API call must contain either one of the attributes text, template
      #
      # @param user [String] Assign document another user in the group. Defaults to API
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::DocumentCreateResponse]
      #
      # @see Legalesign::Models::DocumentCreateParams
      def create(params)
        parsed, options = Legalesign::DocumentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "document/",
          body: parsed,
          model: Legalesign::Models::DocumentCreateResponse,
          options: options
        )
      end

      # Get document
      #
      # @overload retrieve(doc_id, request_options: {})
      #
      # @param doc_id [String] document id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::DocumentRetrieveResponse]
      #
      # @see Legalesign::Models::DocumentRetrieveParams
      def retrieve(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["document/%1$s/", doc_id],
          model: Legalesign::Models::DocumentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::DocumentListParams} for more details.
      #
      # List (unarchived) signing documents. Use /status/ if you need high-level
      # information.
      #
      # @overload list(group:, archived: nil, created_gt: nil, email: nil, limit: nil, modified_gt: nil, nosigners: nil, offset: nil, status: nil, request_options: {})
      #
      # @param group [String] Filter by a specific group, required.
      #
      # @param archived [String] Filter on archived status, default is false
      #
      # @param created_gt [Time] Filter for those documents created after a certain time
      #
      # @param email [String] Filter by signer email
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param modified_gt [Time] Filter for those documents modified after a certain time
      #
      # @param nosigners [String] Add value '1' to remove signers information for a faster query
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param status [Integer] Filter on document status
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::DocumentListResponse]
      #
      # @see Legalesign::Models::DocumentListParams
      def list(params)
        parsed, options = Legalesign::DocumentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "document/",
          query: parsed,
          model: Legalesign::Models::DocumentListResponse,
          options: options
        )
      end

      # Delete does not remove permanently but sets it with status 40 (removed) and
      # archives it.
      #
      # @overload archive(doc_id, request_options: {})
      #
      # @param doc_id [String] document id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::DocumentArchiveParams
      def archive(doc_id, params = {})
        @client.request(
          method: :delete,
          path: ["document/%1$s/", doc_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Permanently deletes data and files. You must enable group automated deletion. We
      # recommend archiveDocument.
      #
      # @overload delete_permanently(doc_id, request_options: {})
      #
      # @param doc_id [String] document id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::DocumentDeletePermanentlyParams
      def delete_permanently(doc_id, params = {})
        @client.request(
          method: :delete,
          path: ["document/%1$s/delete/", doc_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Download pdf of audit log
      #
      # @overload download_audit_log(doc_id, request_options: {})
      #
      # @param doc_id [String] document id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Legalesign::Models::DocumentDownloadAuditLogParams
      def download_audit_log(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["document/%1$s/auditlog/", doc_id],
          headers: {"accept" => "application/pdf"},
          model: StringIO,
          options: params[:request_options]
        )
      end

      # Get document fields
      #
      # @overload get_fields(doc_id, request_options: {})
      #
      # @param doc_id [String] document id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Legalesign::Models::DocumentGetFieldsResponseItem>]
      #
      # @see Legalesign::Models::DocumentGetFieldsParams
      def get_fields(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["document/%1$s/fields/", doc_id],
          model: Legalesign::Internal::Type::ArrayOf[Legalesign::Models::DocumentGetFieldsResponseItem],
          options: params[:request_options]
        )
      end

      # Returns a redirect response (302) with link in the Location header to a one-use
      # temporary URL you can redirect to, to see a preview of the signing page. Follow
      # the redirect immediately since it expires after a few seconds.
      #
      # @overload preview(group: nil, signee_count: nil, text: nil, title: nil, request_options: {})
      #
      # @param group [String]
      # @param signee_count [Integer]
      # @param text [String]
      # @param title [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::DocumentPreviewParams
      def preview(params = {})
        parsed, options = Legalesign::DocumentPreviewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "document/preview/",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [Legalesign::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
