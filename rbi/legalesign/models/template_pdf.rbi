# typed: strong

module Legalesign
  module Models
    class TemplatePdf < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Legalesign::TemplatePdf, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(Time)) }
      attr_reader :modified

      sig { params(modified: Time).void }
      attr_writer :modified

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_count

      sig { params(page_count: Integer).void }
      attr_writer :page_count

      # JSON stringified array of document parties
      sig { returns(T.nilable(String)) }
      attr_reader :parties

      sig { params(parties: String).void }
      attr_writer :parties

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      sig { returns(T.nilable(Integer)) }
      attr_reader :signer_count

      sig { params(signer_count: Integer).void }
      attr_writer :signer_count

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # resource_uri for user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      # id for pdf object
      sig { returns(T.nilable(String)) }
      attr_reader :uuid

      sig { params(uuid: String).void }
      attr_writer :uuid

      # Is able to be sent (if fields do not validate)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :valid

      sig { params(valid: T::Boolean).void }
      attr_writer :valid

      sig do
        params(
          created: Time,
          group: String,
          modified: Time,
          page_count: Integer,
          parties: String,
          resource_uri: String,
          signer_count: Integer,
          title: String,
          user: String,
          uuid: String,
          valid: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        created: nil,
        group: nil,
        modified: nil,
        page_count: nil,
        # JSON stringified array of document parties
        parties: nil,
        resource_uri: nil,
        signer_count: nil,
        title: nil,
        # resource_uri for user
        user: nil,
        # id for pdf object
        uuid: nil,
        # Is able to be sent (if fields do not validate)
        valid: nil
      )
      end

      sig do
        override.returns(
          {
            created: Time,
            group: String,
            modified: Time,
            page_count: Integer,
            parties: String,
            resource_uri: String,
            signer_count: Integer,
            title: String,
            user: String,
            uuid: String,
            valid: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
