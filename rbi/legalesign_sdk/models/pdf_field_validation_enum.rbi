# typed: strong

module LegalesignSDK
  module Models
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
    module PdfFieldValidationEnum
      extend LegalesignSDK::Internal::Type::Enum

      TaggedInteger =
        T.type_alias { T.all(Integer, LegalesignSDK::PdfFieldValidationEnum) }
      OrInteger = T.type_alias { Integer }

      PDF_FIELD_VALIDATION_ENUM_1 =
        T.let(1, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_2 =
        T.let(2, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_3 =
        T.let(3, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_4 =
        T.let(4, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_5 =
        T.let(5, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_6 =
        T.let(6, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_7 =
        T.let(7, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_8 =
        T.let(8, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_9 =
        T.let(9, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_10 =
        T.let(10, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_11 =
        T.let(11, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_12 =
        T.let(12, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_13 =
        T.let(13, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_14 =
        T.let(14, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_15 =
        T.let(15, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_16 =
        T.let(16, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_17 =
        T.let(17, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_18 =
        T.let(18, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_19 =
        T.let(19, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_20 =
        T.let(20, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_24 =
        T.let(24, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_25 =
        T.let(25, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_26 =
        T.let(26, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_30 =
        T.let(30, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_31 =
        T.let(31, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_32 =
        T.let(32, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_33 =
        T.let(33, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_34 =
        T.let(34, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_35 =
        T.let(35, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_36 =
        T.let(36, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_37 =
        T.let(37, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_38 =
        T.let(38, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_39 =
        T.let(39, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_40 =
        T.let(40, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_41 =
        T.let(41, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_42 =
        T.let(42, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_43 =
        T.let(43, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_44 =
        T.let(44, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_45 =
        T.let(45, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_46 =
        T.let(46, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_47 =
        T.let(47, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_48 =
        T.let(48, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_50 =
        T.let(50, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_51 =
        T.let(51, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_52 =
        T.let(52, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_53 =
        T.let(53, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_54 =
        T.let(54, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_55 =
        T.let(55, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_56 =
        T.let(56, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_57 =
        T.let(57, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_58 =
        T.let(58, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_59 =
        T.let(59, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_60 =
        T.let(60, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_61 =
        T.let(61, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_62 =
        T.let(62, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_63 =
        T.let(63, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_64 =
        T.let(64, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_65 =
        T.let(65, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_66 =
        T.let(66, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_67 =
        T.let(67, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_68 =
        T.let(68, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_69 =
        T.let(69, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_70 =
        T.let(70, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_71 =
        T.let(71, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_72 =
        T.let(72, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_73 =
        T.let(73, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_74 =
        T.let(74, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_75 =
        T.let(75, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_76 =
        T.let(76, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_77 =
        T.let(77, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_78 =
        T.let(78, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_79 =
        T.let(79, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_80 =
        T.let(80, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_81 =
        T.let(81, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_82 =
        T.let(82, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_83 =
        T.let(83, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_84 =
        T.let(84, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_85 =
        T.let(85, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_90 =
        T.let(90, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_91 =
        T.let(91, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)
      PDF_FIELD_VALIDATION_ENUM_92 =
        T.let(92, LegalesignSDK::PdfFieldValidationEnum::TaggedInteger)

      sig do
        override.returns(
          T::Array[LegalesignSDK::PdfFieldValidationEnum::TaggedInteger]
        )
      end
      def self.values
      end
    end
  end
end
