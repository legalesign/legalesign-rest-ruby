# typed: strong

module Legalesign
  module Models
    class TemplatepdfListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::TemplatepdfListParams,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :archive

      sig { params(archive: String).void }
      attr_writer :archive

      # can be full resource_uri or only id
      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      # Length of dataset to return. Use with offset query to iterate through results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Offset from start of dataset. Use with the limit query to iterate through
      # dataset.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          archive: String,
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            archive: String,
            group: String,
            limit: Integer,
            offset: Integer,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
