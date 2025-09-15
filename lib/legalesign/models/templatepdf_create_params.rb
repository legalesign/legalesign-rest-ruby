# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Templatepdf#create
    class TemplatepdfCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #
      #   @return [String]
      required :group, String

      # @!attribute pdf_file
      #   base64 encoded PDF file data
      #
      #   @return [String]
      required :pdf_file, String

      # @!attribute archive_upon_send
      #   archive PDF when sent
      #
      #   @return [Boolean, nil]
      optional :archive_upon_send, Legalesign::Internal::Type::Boolean

      # @!attribute process_tags
      #
      #   @return [Boolean, nil]
      optional :process_tags, Legalesign::Internal::Type::Boolean

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute user
      #   assign to group member if not api user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(group:, pdf_file:, archive_upon_send: nil, process_tags: nil, title: nil, user: nil, request_options: {})
      #   @param group [String]
      #
      #   @param pdf_file [String] base64 encoded PDF file data
      #
      #   @param archive_upon_send [Boolean] archive PDF when sent
      #
      #   @param process_tags [Boolean]
      #
      #   @param title [String]
      #
      #   @param user [String] assign to group member if not api user
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
