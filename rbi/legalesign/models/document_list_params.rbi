# typed: strong

module Legalesign
  module Models
    class DocumentListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::DocumentListParams, Legalesign::Internal::AnyHash)
        end

      # Filter by a specific group, required.
      sig { returns(String) }
      attr_accessor :group

      # Filter on archived status, default is false
      sig { returns(T.nilable(String)) }
      attr_reader :archived

      sig { params(archived: String).void }
      attr_writer :archived

      # Filter for those documents created after a certain time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_gt

      sig { params(created_gt: Time).void }
      attr_writer :created_gt

      # Filter by signer email
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Length of dataset to return. Use with offset query to iterate through results.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter for those documents modified after a certain time
      sig { returns(T.nilable(Time)) }
      attr_reader :modified_gt

      sig { params(modified_gt: Time).void }
      attr_writer :modified_gt

      # Add value '1' to remove signers information for a faster query
      sig { returns(T.nilable(String)) }
      attr_reader :nosigners

      sig { params(nosigners: String).void }
      attr_writer :nosigners

      # Offset from start of dataset. Use with the limit query to iterate through
      # dataset.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Filter on document status
      sig { returns(T.nilable(Integer)) }
      attr_reader :status

      sig { params(status: Integer).void }
      attr_writer :status

      sig do
        params(
          group: String,
          archived: String,
          created_gt: Time,
          email: String,
          limit: Integer,
          modified_gt: Time,
          nosigners: String,
          offset: Integer,
          status: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by a specific group, required.
        group:,
        # Filter on archived status, default is false
        archived: nil,
        # Filter for those documents created after a certain time
        created_gt: nil,
        # Filter by signer email
        email: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Filter for those documents modified after a certain time
        modified_gt: nil,
        # Add value '1' to remove signers information for a faster query
        nosigners: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        # Filter on document status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            archived: String,
            created_gt: Time,
            email: String,
            limit: Integer,
            modified_gt: Time,
            nosigners: String,
            offset: Integer,
            status: Integer,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
