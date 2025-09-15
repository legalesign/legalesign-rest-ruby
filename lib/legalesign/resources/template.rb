# frozen_string_literal: true

module Legalesign
  module Resources
    class Template
      # Create a new html/text template. This probably isn't the method you are looking
      # for. You can use the 'text' attribute in /document/ to create and send your HTML
      # as a signing document in one call.
      #
      # @overload create(group:, latest_text:, title:, user: nil, request_options: {})
      #
      # @param group [String]
      #
      # @param latest_text [String] text/html for template
      #
      # @param title [String]
      #
      # @param user [String] assign to a user if not api user
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplateCreateParams
      def create(params)
        parsed, options = Legalesign::TemplateCreateParams.dump_request(params)
        @client.request(method: :post, path: "template/", body: parsed, model: NilClass, options: options)
      end

      # Get text template
      #
      # @overload retrieve(template_id, request_options: {})
      #
      # @param template_id [String] saved html template id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::TemplateRetrieveResponse]
      #
      # @see Legalesign::Models::TemplateRetrieveParams
      def retrieve(template_id, params = {})
        @client.request(
          method: :get,
          path: ["template/%1$s/", template_id],
          model: Legalesign::Models::TemplateRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update text template
      #
      # @overload update(template_id, body:, request_options: {})
      #
      # @param template_id [String] saved html template id
      #
      # @param body [String] json with any fields to update
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplateUpdateParams
      def update(template_id, params)
        parsed, options = Legalesign::TemplateUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["template/%1$s/", template_id],
          body: parsed[:body],
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::TemplateListParams} for more details.
      #
      # Get text templates
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
      # @return [Legalesign::Models::TemplateListResponse]
      #
      # @see Legalesign::Models::TemplateListParams
      def list(params = {})
        parsed, options = Legalesign::TemplateListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "template/",
          query: parsed,
          model: Legalesign::Models::TemplateListResponse,
          options: options
        )
      end

      # Archives a template (is recoverable, i.e. not fully deleted, if you need true
      # data deletion contact us).
      #
      # @overload archive(template_id, request_options: {})
      #
      # @param template_id [String] saved html template id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::TemplateArchiveParams
      def archive(template_id, params = {})
        @client.request(
          method: :delete,
          path: ["template/%1$s/", template_id],
          model: NilClass,
          options: params[:request_options]
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
