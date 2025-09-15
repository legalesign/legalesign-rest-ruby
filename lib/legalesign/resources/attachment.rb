# frozen_string_literal: true

module Legalesign
  module Resources
    class Attachment
      # Get attachment
      #
      # @overload retrieve(attachment_id, request_options: {})
      #
      # @param attachment_id [String] attachment id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::AttachmentResponse]
      #
      # @see Legalesign::Models::AttachmentRetrieveParams
      def retrieve(attachment_id, params = {})
        @client.request(
          method: :get,
          path: ["attachment/%1$s/", attachment_id],
          model: Legalesign::AttachmentResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::AttachmentListParams} for more details.
      #
      # List attachments in your groups
      #
      # @overload list(group: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param group [String] Filter by a specific group
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::AttachmentListResponse]
      #
      # @see Legalesign::Models::AttachmentListParams
      def list(params = {})
        parsed, options = Legalesign::AttachmentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "attachment/",
          query: parsed,
          model: Legalesign::Models::AttachmentListResponse,
          options: options
        )
      end

      # Delete attachment
      #
      # @overload delete(attachment_id, request_options: {})
      #
      # @param attachment_id [String] attachment id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::AttachmentDeleteParams
      def delete(attachment_id, params = {})
        @client.request(
          method: :delete,
          path: ["attachment/%1$s/", attachment_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Upload PDF attachment
      #
      # @overload upload(filename:, group:, pdf_file:, description: nil, user: nil, request_options: {})
      #
      # @param filename [String] Simple alphanumeric name ending .pdf
      #
      # @param group [String] URI of the group name
      #
      # @param pdf_file [String] Base64 encoded PDF file data, max size is a group setting, 5MB by default
      #
      # @param description [String]
      #
      # @param user [String] Assign to group member if not the api user
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::AttachmentUploadParams
      def upload(params)
        parsed, options = Legalesign::AttachmentUploadParams.dump_request(params)
        @client.request(method: :post, path: "attachment/", body: parsed, model: NilClass, options: options)
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
