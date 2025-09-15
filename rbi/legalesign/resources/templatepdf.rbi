# typed: strong

module Legalesign
  module Resources
    class Templatepdf
      sig { returns(Legalesign::Resources::Templatepdf::Fields) }
      attr_reader :fields

      # Upload a PDF document you want to send to be signed
      sig do
        params(
          group: String,
          pdf_file: String,
          archive_upon_send: T::Boolean,
          process_tags: T::Boolean,
          title: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def create(
        group:,
        # base64 encoded PDF file data
        pdf_file:,
        # archive PDF when sent
        archive_upon_send: nil,
        process_tags: nil,
        title: nil,
        # assign to group member if not api user
        user: nil,
        request_options: {}
      )
      end

      # Get PDF template
      sig do
        params(
          pdf_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::TemplatePdf)
      end
      def retrieve(
        # uploaded PDF id
        pdf_id,
        request_options: {}
      )
      end

      # Get PDF templates
      sig do
        params(
          archive: String,
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::TemplatepdfListResponse)
      end
      def list(
        archive: nil,
        # can be full resource_uri or only id
        group: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # Delists the PDF
      sig do
        params(
          pdf_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def archive(pdf_id, request_options: {})
      end

      # Convert any text tags in the PDF into fields
      sig do
        params(
          pdf_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def convert_tags(pdf_id, request_options: {})
      end

      # Get PDF embeddable link
      sig do
        params(
          pdf_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(String)
      end
      def get_edit_link(
        # uploaded PDF id
        pdf_id,
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
