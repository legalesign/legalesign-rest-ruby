# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Attachment#upload
    class AttachmentUploadParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute filename
      #   Simple alphanumeric name ending .pdf
      #
      #   @return [String]
      required :filename, String

      # @!attribute group
      #   URI of the group name
      #
      #   @return [String]
      required :group, String

      # @!attribute pdf_file
      #   Base64 encoded PDF file data, max size is a group setting, 5MB by default
      #
      #   @return [String]
      required :pdf_file, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute user
      #   Assign to group member if not the api user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(filename:, group:, pdf_file:, description: nil, user: nil, request_options: {})
      #   @param filename [String] Simple alphanumeric name ending .pdf
      #
      #   @param group [String] URI of the group name
      #
      #   @param pdf_file [String] Base64 encoded PDF file data, max size is a group setting, 5MB by default
      #
      #   @param description [String]
      #
      #   @param user [String] Assign to group member if not the api user
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
