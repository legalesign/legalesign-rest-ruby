# typed: strong

module Legalesign
  module Models
    class GroupRetrieveResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::GroupRetrieveResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(String)) }
      attr_reader :default_email

      sig { params(default_email: String).void }
      attr_writer :default_email

      sig { returns(T.nilable(String)) }
      attr_reader :default_extraemail

      sig { params(default_extraemail: String).void }
      attr_writer :default_extraemail

      # html of content
      sig { returns(T.nilable(String)) }
      attr_reader :footer

      sig { params(footer: String).void }
      attr_writer :footer

      sig { returns(T.nilable(Integer)) }
      attr_reader :footer_height

      sig { params(footer_height: Integer).void }
      attr_writer :footer_height

      sig { returns(T.nilable(String)) }
      attr_reader :header

      sig { params(header: String).void }
      attr_writer :header

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_active

      sig { params(is_active: T::Boolean).void }
      attr_writer :is_active

      # list of members uris
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :members

      sig { params(members: T::Array[String]).void }
      attr_writer :members

      sig { returns(T.nilable(Time)) }
      attr_reader :modified

      sig { params(modified: Time).void }
      attr_writer :modified

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :pagesize

      sig { params(pagesize: Integer).void }
      attr_writer :pagesize

      sig { returns(T.nilable(String)) }
      attr_reader :public_name

      sig { params(public_name: String).void }
      attr_writer :public_name

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      sig { returns(T.nilable(String)) }
      attr_reader :slug

      sig { params(slug: String).void }
      attr_writer :slug

      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :xframe_allow

      sig { params(xframe_allow: T::Boolean).void }
      attr_writer :xframe_allow

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :xframe_allow_pdf_edit

      sig { params(xframe_allow_pdf_edit: T::Boolean).void }
      attr_writer :xframe_allow_pdf_edit

      sig do
        params(
          created: Time,
          default_email: String,
          default_extraemail: String,
          footer: String,
          footer_height: Integer,
          header: String,
          is_active: T::Boolean,
          members: T::Array[String],
          modified: Time,
          name: String,
          pagesize: Integer,
          public_name: String,
          resource_uri: String,
          slug: String,
          user: String,
          xframe_allow: T::Boolean,
          xframe_allow_pdf_edit: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        created: nil,
        default_email: nil,
        default_extraemail: nil,
        # html of content
        footer: nil,
        footer_height: nil,
        header: nil,
        is_active: nil,
        # list of members uris
        members: nil,
        modified: nil,
        name: nil,
        pagesize: nil,
        public_name: nil,
        resource_uri: nil,
        slug: nil,
        user: nil,
        xframe_allow: nil,
        xframe_allow_pdf_edit: nil
      )
      end

      sig do
        override.returns(
          {
            created: Time,
            default_email: String,
            default_extraemail: String,
            footer: String,
            footer_height: Integer,
            header: String,
            is_active: T::Boolean,
            members: T::Array[String],
            modified: Time,
            name: String,
            pagesize: Integer,
            public_name: String,
            resource_uri: String,
            slug: String,
            user: String,
            xframe_allow: T::Boolean,
            xframe_allow_pdf_edit: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
