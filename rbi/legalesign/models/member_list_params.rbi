# typed: strong

module Legalesign
  module Models
    class MemberListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::MemberListParams, Legalesign::Internal::AnyHash)
        end

      # filter list by a given group
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
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter list by a given group
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
