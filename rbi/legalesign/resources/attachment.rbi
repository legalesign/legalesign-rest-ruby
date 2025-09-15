# typed: strong

module Legalesign
  module Resources
    class Attachment
      # Get attachment
      sig do
        params(
          attachment_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::AttachmentResponse)
      end
      def retrieve(
        # attachment id
        attachment_id,
        request_options: {}
      )
      end

      # List attachments in your groups
      sig do
        params(
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::AttachmentListResponse)
      end
      def list(
        # Filter by a specific group
        group: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # Delete attachment
      sig do
        params(
          attachment_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def delete(
        # attachment id
        attachment_id,
        request_options: {}
      )
      end

      # Upload PDF attachment
      sig do
        params(
          filename: String,
          group: String,
          pdf_file: String,
          description: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def upload(
        # Simple alphanumeric name ending .pdf
        filename:,
        # URI of the group name
        group:,
        # Base64 encoded PDF file data, max size is a group setting, 5MB by default
        pdf_file:,
        description: nil,
        # Assign to group member if not the api user
        user: nil,
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
