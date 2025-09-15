# frozen_string_literal: true

module Legalesign
  module Resources
    class Templatepdf
      class Fields
        # Replace existing pdf fields with new ones
        #
        # @overload create(pdf_id, body:, request_options: {})
        #
        # @param pdf_id [String] uploaded PDF id
        #
        # @param body [Array<Legalesign::Models::Templatepdf::FieldCreateParams::Body>]
        #
        # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Legalesign::Models::Templatepdf::FieldCreateParams
        def create(pdf_id, params)
          parsed, options = Legalesign::Templatepdf::FieldCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["templatepdf/%1$s/fields/", pdf_id],
            body: parsed[:body],
            model: NilClass,
            options: options
          )
        end

        # Get PDF template fields
        #
        # @overload list(pdf_id, request_options: {})
        #
        # @param pdf_id [String] uploaded PDF id
        #
        # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Legalesign::Models::Templatepdf::FieldListResponse]
        #
        # @see Legalesign::Models::Templatepdf::FieldListParams
        def list(pdf_id, params = {})
          @client.request(
            method: :get,
            path: ["templatepdf/%1$s/fields/", pdf_id],
            model: Legalesign::Models::Templatepdf::FieldListResponse,
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
end
