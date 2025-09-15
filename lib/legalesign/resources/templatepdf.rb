# frozen_string_literal: true

module Legalesign
  module Resources
    class Templatepdf
      # @return [Legalesign::Resources::Templatepdf::Fields]
      attr_reader :fields

      # Upload a PDF document you want to send to be signed
      #
      # @overload create(group:, pdf_file:, archive_upon_send: nil, process_tags: nil, title: nil, user: nil, request_options: {})
      #
      # @param group [String]
      #
      # @param pdf_file [String] base64 encoded PDF file data
      #
      # @param archive_upon_send [Boolean] archive PDF when sent
      #
      # @param process_tags [Boolean]
      #
      # @param title [String]
      #
      # @param user [String] assign to group member if not api user
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplatepdfCreateParams
      def create(params)
        parsed, options = Legalesign::TemplatepdfCreateParams.dump_request(params)
        @client.request(method: :post, path: "templatepdf/", body: parsed, model: NilClass, options: options)
      end

      # Get PDF template
      #
      # @overload retrieve(pdf_id, request_options: {})
      #
      # @param pdf_id [String] uploaded PDF id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::TemplatePdf]
      #
      # @see Legalesign::Models::TemplatepdfRetrieveParams
      def retrieve(pdf_id, params = {})
        @client.request(
          method: :get,
          path: ["templatepdf/%1$s/", pdf_id],
          model: Legalesign::TemplatePdf,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::TemplatepdfListParams} for more details.
      #
      # Get PDF templates
      #
      # @overload list(archive: nil, group: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param archive [String]
      #
      # @param group [String] can be full resource_uri or only id
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::TemplatepdfListResponse]
      #
      # @see Legalesign::Models::TemplatepdfListParams
      def list(params = {})
        parsed, options = Legalesign::TemplatepdfListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "templatepdf/",
          query: parsed,
          model: Legalesign::Models::TemplatepdfListResponse,
          options: options
        )
      end

      # Delists the PDF
      #
      # @overload archive(pdf_id, request_options: {})
      #
      # @param pdf_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplatepdfArchiveParams
      def archive(pdf_id, params = {})
        @client.request(
          method: :post,
          path: ["templatepdf/%1$s/archive/", pdf_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Convert any text tags in the PDF into fields
      #
      # @overload convert_tags(pdf_id, request_options: {})
      #
      # @param pdf_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplatepdfConvertTagsParams
      def convert_tags(pdf_id, params = {})
        @client.request(
          method: :post,
          path: ["templatepdf/%1$s/tags/", pdf_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get PDF embeddable link
      #
      # @overload get_edit_link(pdf_id, request_options: {})
      #
      # @param pdf_id [String] uploaded PDF id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Legalesign::Models::TemplatepdfGetEditLinkParams
      def get_edit_link(pdf_id, params = {})
        @client.request(
          method: :get,
          path: ["templatepdf/%1$s/edit-link/", pdf_id],
          model: String,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Legalesign::Client]
      def initialize(client:)
        @client = client
        @fields = Legalesign::Resources::Templatepdf::Fields.new(client: client)
      end
    end
  end
end
