# typed: strong

module Legalesign
  module Models
    class DocumentGetFieldsResponseItem < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::DocumentGetFieldsResponseItem,
            Legalesign::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
          )
        )
      end
      attr_reader :element_type

      sig do
        params(
          element_type:
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::OrSymbol
        ).void
      end
      attr_writer :element_type

      sig { returns(T.nilable(Integer)) }
      attr_accessor :fieldorder

      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      sig { returns(T.nilable(String)) }
      attr_accessor :label_extra

      sig { returns(T.nilable(Integer)) }
      attr_reader :signer

      sig { params(signer: Integer).void }
      attr_writer :signer

      # if saved by signer
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :state

      sig { params(state: T::Boolean).void }
      attr_writer :state

      # fields types and validations:
      #
      # - 1 - Email
      # - 2 - yyyy/mm/dd
      # - 3 - yy/mm/dd
      # - 4 - dd/mm/yyyy
      # - 5 - dd/mm/yy
      # - 6 - mm/dd/yy
      # - 7 - mm/dd/yy
      # - 8 - yyyy.mm.dd
      # - 9 - yy.mm.dd
      # - 10 - dd.mm.yyyy
      # - 11 - dd.mm.yy
      # - 12 - mm.dd.yyyy
      # - 13 - mm.dd.yy
      # - 14 - yyyy-mm-dd
      # - 15 - yy-mm-dd
      # - 16 - dd-mm-yyyy
      # - 17 - dd-mm-yy
      # - 18 - mm-dd-yyyy
      # - 19 - mm-dd-yy
      # - 20 - Dropdown list, use options attribute for items
      # - 24 - Checkbox tick/cross
      # - 25 - Checkbox tick/blank
      # - 26 - Checkbox cross/blank
      # - 30 - yyyy/mm/dd (automatic)
      # - 31 - yy/mm/dd (automatic)
      # - 32 - dd/yy/yyyy (automatic)
      # - 33 - dd/mm/yy (automatic)
      # - 34 - mm/dd/yyyy (automatic)
      # - 35 - mm/dd/yy (automatic)
      # - 36 - yyyy.mm.dd (automatic)
      # - 37 - yy.mm.dd (automatic)
      # - 38 - dd.mm.yyyy (automatic)
      # - 39 - dd.mm.yy (automatic)
      # - 40 - mm.dd.yyyy (automatic)
      # - 41 - mm.dd.yy (automatic)
      # - 42 - yyyy-mm-dd (automatic)
      # - 43 - yy-mm-dd (automatic)
      # - 44 - dd-mm-yyyy (automatic)
      # - 45 - dd-mm-yy (automatic)
      # - 46 - mm-dd-yyyy (automatic)
      # - 47 - mm-dd-yy (automatic)
      # - 48 - d mmmmm yyyy (automatic)
      # - 50 - Whole number
      # - 51 - Number
      # - 52 - Currency (2 decimals)
      # - 53 - 1 number
      # - 54 - 2 numbers
      # - 55 - 3 numbers
      # - 56 - 4 numbers
      # - 57 - 5 numbers
      # - 58 - 6 numbers
      # - 59 - 7 numbers
      # - 60 - 8 numbers
      # - 61 - 9 numbers
      # - 62 - 10 numbers
      # - 63 - 11 numbers
      # - 64 - 12 numbers
      # - 65 - 1 characters (any text)
      # - 66 - 2 characters (any text)
      # - 67 - 3 characters (any text)
      # - 68 - 4 characters (any text)
      # - 69 - 5 characters (any text)
      # - 70 - 6 characters (any text)
      # - 71 - 7 characters (any text)
      # - 72 - 8 characters (any text)
      # - 73 - secret code, add code in options
      # - 74 - file attach, append to email to signer
      # - 75 - file attach, append to final PDF
      # - 76 - file attach, zip with final PDF for internal use, but not signer
      # - 77 - force to title caps
      # - 78 - force to uppercase
      # - 79 - force to lowercase
      # - 80 - mm/yy
      # - 81 - mm/yyyy
      # - 82 - mm.yy
      # - 83 - mm.yyyy
      # - 84 - mm-yy
      # - 85 - mm-yyyy
      # - 90 - drawn field
      # - 91 - countries list
      # - 92 - honorifics list
      sig do
        returns(T.nilable(Legalesign::PdfFieldValidationEnum::TaggedInteger))
      end
      attr_accessor :validation

      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      sig do
        params(
          element_type:
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::OrSymbol,
          fieldorder: T.nilable(Integer),
          label: String,
          label_extra: T.nilable(String),
          signer: Integer,
          state: T::Boolean,
          validation: T.nilable(Legalesign::PdfFieldValidationEnum::OrInteger),
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        element_type: nil,
        fieldorder: nil,
        label: nil,
        label_extra: nil,
        signer: nil,
        # if saved by signer
        state: nil,
        # fields types and validations:
        #
        # - 1 - Email
        # - 2 - yyyy/mm/dd
        # - 3 - yy/mm/dd
        # - 4 - dd/mm/yyyy
        # - 5 - dd/mm/yy
        # - 6 - mm/dd/yy
        # - 7 - mm/dd/yy
        # - 8 - yyyy.mm.dd
        # - 9 - yy.mm.dd
        # - 10 - dd.mm.yyyy
        # - 11 - dd.mm.yy
        # - 12 - mm.dd.yyyy
        # - 13 - mm.dd.yy
        # - 14 - yyyy-mm-dd
        # - 15 - yy-mm-dd
        # - 16 - dd-mm-yyyy
        # - 17 - dd-mm-yy
        # - 18 - mm-dd-yyyy
        # - 19 - mm-dd-yy
        # - 20 - Dropdown list, use options attribute for items
        # - 24 - Checkbox tick/cross
        # - 25 - Checkbox tick/blank
        # - 26 - Checkbox cross/blank
        # - 30 - yyyy/mm/dd (automatic)
        # - 31 - yy/mm/dd (automatic)
        # - 32 - dd/yy/yyyy (automatic)
        # - 33 - dd/mm/yy (automatic)
        # - 34 - mm/dd/yyyy (automatic)
        # - 35 - mm/dd/yy (automatic)
        # - 36 - yyyy.mm.dd (automatic)
        # - 37 - yy.mm.dd (automatic)
        # - 38 - dd.mm.yyyy (automatic)
        # - 39 - dd.mm.yy (automatic)
        # - 40 - mm.dd.yyyy (automatic)
        # - 41 - mm.dd.yy (automatic)
        # - 42 - yyyy-mm-dd (automatic)
        # - 43 - yy-mm-dd (automatic)
        # - 44 - dd-mm-yyyy (automatic)
        # - 45 - dd-mm-yy (automatic)
        # - 46 - mm-dd-yyyy (automatic)
        # - 47 - mm-dd-yy (automatic)
        # - 48 - d mmmmm yyyy (automatic)
        # - 50 - Whole number
        # - 51 - Number
        # - 52 - Currency (2 decimals)
        # - 53 - 1 number
        # - 54 - 2 numbers
        # - 55 - 3 numbers
        # - 56 - 4 numbers
        # - 57 - 5 numbers
        # - 58 - 6 numbers
        # - 59 - 7 numbers
        # - 60 - 8 numbers
        # - 61 - 9 numbers
        # - 62 - 10 numbers
        # - 63 - 11 numbers
        # - 64 - 12 numbers
        # - 65 - 1 characters (any text)
        # - 66 - 2 characters (any text)
        # - 67 - 3 characters (any text)
        # - 68 - 4 characters (any text)
        # - 69 - 5 characters (any text)
        # - 70 - 6 characters (any text)
        # - 71 - 7 characters (any text)
        # - 72 - 8 characters (any text)
        # - 73 - secret code, add code in options
        # - 74 - file attach, append to email to signer
        # - 75 - file attach, append to final PDF
        # - 76 - file attach, zip with final PDF for internal use, but not signer
        # - 77 - force to title caps
        # - 78 - force to uppercase
        # - 79 - force to lowercase
        # - 80 - mm/yy
        # - 81 - mm/yyyy
        # - 82 - mm.yy
        # - 83 - mm.yyyy
        # - 84 - mm-yy
        # - 85 - mm-yyyy
        # - 90 - drawn field
        # - 91 - countries list
        # - 92 - honorifics list
        validation: nil,
        value: nil
      )
      end

      sig do
        override.returns(
          {
            element_type:
              Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol,
            fieldorder: T.nilable(Integer),
            label: String,
            label_extra: T.nilable(String),
            signer: Integer,
            state: T::Boolean,
            validation:
              T.nilable(Legalesign::PdfFieldValidationEnum::TaggedInteger),
            value: String
          }
        )
      end
      def to_hash
      end

      module ElementType
        extend Legalesign::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Legalesign::Models::DocumentGetFieldsResponseItem::ElementType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGNATURE =
          T.let(
            :signature,
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
          )
        INITIALS =
          T.let(
            :initials,
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
          )
        ADMIN =
          T.let(
            :admin,
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
          )
        TEXT =
          T.let(
            :text,
            Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Legalesign::Models::DocumentGetFieldsResponseItem::ElementType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end

    DocumentGetFieldsResponse =
      T.let(
        Legalesign::Internal::Type::ArrayOf[
          Legalesign::Models::DocumentGetFieldsResponseItem
        ],
        Legalesign::Internal::Type::Converter
      )
  end
end
