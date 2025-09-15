# frozen_string_literal: true

module Legalesign
  module Models
    class DocumentGetFieldsResponseItem < Legalesign::Internal::Type::BaseModel
      # @!attribute element_type
      #
      #   @return [Symbol, Legalesign::Models::DocumentGetFieldsResponseItem::ElementType, nil]
      optional :element_type, enum: -> { Legalesign::Models::DocumentGetFieldsResponseItem::ElementType }

      # @!attribute fieldorder
      #
      #   @return [Integer, nil]
      optional :fieldorder, Integer, nil?: true

      # @!attribute label
      #
      #   @return [String, nil]
      optional :label, String

      # @!attribute label_extra
      #
      #   @return [String, nil]
      optional :label_extra, String, nil?: true

      # @!attribute signer
      #
      #   @return [Integer, nil]
      optional :signer, Integer

      # @!attribute state
      #   if saved by signer
      #
      #   @return [Boolean, nil]
      optional :state, Legalesign::Internal::Type::Boolean

      # @!attribute validation
      #   fields types and validations:
      #
      #   - 1 - Email
      #   - 2 - yyyy/mm/dd
      #   - 3 - yy/mm/dd
      #   - 4 - dd/mm/yyyy
      #   - 5 - dd/mm/yy
      #   - 6 - mm/dd/yy
      #   - 7 - mm/dd/yy
      #   - 8 - yyyy.mm.dd
      #   - 9 - yy.mm.dd
      #   - 10 - dd.mm.yyyy
      #   - 11 - dd.mm.yy
      #   - 12 - mm.dd.yyyy
      #   - 13 - mm.dd.yy
      #   - 14 - yyyy-mm-dd
      #   - 15 - yy-mm-dd
      #   - 16 - dd-mm-yyyy
      #   - 17 - dd-mm-yy
      #   - 18 - mm-dd-yyyy
      #   - 19 - mm-dd-yy
      #   - 20 - Dropdown list, use options attribute for items
      #   - 24 - Checkbox tick/cross
      #   - 25 - Checkbox tick/blank
      #   - 26 - Checkbox cross/blank
      #   - 30 - yyyy/mm/dd (automatic)
      #   - 31 - yy/mm/dd (automatic)
      #   - 32 - dd/yy/yyyy (automatic)
      #   - 33 - dd/mm/yy (automatic)
      #   - 34 - mm/dd/yyyy (automatic)
      #   - 35 - mm/dd/yy (automatic)
      #   - 36 - yyyy.mm.dd (automatic)
      #   - 37 - yy.mm.dd (automatic)
      #   - 38 - dd.mm.yyyy (automatic)
      #   - 39 - dd.mm.yy (automatic)
      #   - 40 - mm.dd.yyyy (automatic)
      #   - 41 - mm.dd.yy (automatic)
      #   - 42 - yyyy-mm-dd (automatic)
      #   - 43 - yy-mm-dd (automatic)
      #   - 44 - dd-mm-yyyy (automatic)
      #   - 45 - dd-mm-yy (automatic)
      #   - 46 - mm-dd-yyyy (automatic)
      #   - 47 - mm-dd-yy (automatic)
      #   - 48 - d mmmmm yyyy (automatic)
      #   - 50 - Whole number
      #   - 51 - Number
      #   - 52 - Currency (2 decimals)
      #   - 53 - 1 number
      #   - 54 - 2 numbers
      #   - 55 - 3 numbers
      #   - 56 - 4 numbers
      #   - 57 - 5 numbers
      #   - 58 - 6 numbers
      #   - 59 - 7 numbers
      #   - 60 - 8 numbers
      #   - 61 - 9 numbers
      #   - 62 - 10 numbers
      #   - 63 - 11 numbers
      #   - 64 - 12 numbers
      #   - 65 - 1 characters (any text)
      #   - 66 - 2 characters (any text)
      #   - 67 - 3 characters (any text)
      #   - 68 - 4 characters (any text)
      #   - 69 - 5 characters (any text)
      #   - 70 - 6 characters (any text)
      #   - 71 - 7 characters (any text)
      #   - 72 - 8 characters (any text)
      #   - 73 - secret code, add code in options
      #   - 74 - file attach, append to email to signer
      #   - 75 - file attach, append to final PDF
      #   - 76 - file attach, zip with final PDF for internal use, but not signer
      #   - 77 - force to title caps
      #   - 78 - force to uppercase
      #   - 79 - force to lowercase
      #   - 80 - mm/yy
      #   - 81 - mm/yyyy
      #   - 82 - mm.yy
      #   - 83 - mm.yyyy
      #   - 84 - mm-yy
      #   - 85 - mm-yyyy
      #   - 90 - drawn field
      #   - 91 - countries list
      #   - 92 - honorifics list
      #
      #   @return [Integer, Legalesign::Models::PdfFieldValidationEnum, nil]
      optional :validation, enum: -> { Legalesign::PdfFieldValidationEnum }, nil?: true

      # @!attribute value
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(element_type: nil, fieldorder: nil, label: nil, label_extra: nil, signer: nil, state: nil, validation: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::DocumentGetFieldsResponseItem} for more details.
      #
      #   @param element_type [Symbol, Legalesign::Models::DocumentGetFieldsResponseItem::ElementType]
      #
      #   @param fieldorder [Integer, nil]
      #
      #   @param label [String]
      #
      #   @param label_extra [String, nil]
      #
      #   @param signer [Integer]
      #
      #   @param state [Boolean] if saved by signer
      #
      #   @param validation [Integer, Legalesign::Models::PdfFieldValidationEnum, nil] fields types and validations:
      #
      #   @param value [String]

      # @see Legalesign::Models::DocumentGetFieldsResponseItem#element_type
      module ElementType
        extend Legalesign::Internal::Type::Enum

        SIGNATURE = :signature
        INITIALS = :initials
        ADMIN = :admin
        TEXT = :text

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [Legalesign::Internal::Type::Converter]
    DocumentGetFieldsResponse =
      Legalesign::Internal::Type::ArrayOf[-> { Legalesign::Models::DocumentGetFieldsResponseItem }]
  end
end
