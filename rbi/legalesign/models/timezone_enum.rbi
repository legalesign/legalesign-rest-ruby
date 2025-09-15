# typed: strong

module Legalesign
  module Models
    # List of available timezones
    module TimezoneEnum
      extend Legalesign::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Legalesign::TimezoneEnum) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AFRICA_ABIDJAN =
        T.let(:"Africa/Abidjan", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_ACCRA =
        T.let(:"Africa/Accra", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_ADDIS_ABABA =
        T.let(:"Africa/Addis_Ababa", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_ALGIERS =
        T.let(:"Africa/Algiers", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_ASMARA =
        T.let(:"Africa/Asmara", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BAMAKO =
        T.let(:"Africa/Bamako", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BANGUI =
        T.let(:"Africa/Bangui", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BANJUL =
        T.let(:"Africa/Banjul", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BISSAU =
        T.let(:"Africa/Bissau", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BLANTYRE =
        T.let(:"Africa/Blantyre", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BRAZZAVILLE =
        T.let(:"Africa/Brazzaville", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_BUJUMBURA =
        T.let(:"Africa/Bujumbura", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_CAIRO =
        T.let(:"Africa/Cairo", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_CASABLANCA =
        T.let(:"Africa/Casablanca", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_CEUTA =
        T.let(:"Africa/Ceuta", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_CONAKRY =
        T.let(:"Africa/Conakry", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_DAKAR =
        T.let(:"Africa/Dakar", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_DAR_ES_SALAAM =
        T.let(:"Africa/Dar_es_Salaam", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_DJIBOUTI =
        T.let(:"Africa/Djibouti", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_DOUALA =
        T.let(:"Africa/Douala", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_EL_AAIUN =
        T.let(:"Africa/El_Aaiun", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_FREETOWN =
        T.let(:"Africa/Freetown", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_GABORONE =
        T.let(:"Africa/Gaborone", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_HARARE =
        T.let(:"Africa/Harare", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_JOHANNESBURG =
        T.let(:"Africa/Johannesburg", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_JUBA =
        T.let(:"Africa/Juba", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_KAMPALA =
        T.let(:"Africa/Kampala", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_KHARTOUM =
        T.let(:"Africa/Khartoum", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_KIGALI =
        T.let(:"Africa/Kigali", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_KINSHASA =
        T.let(:"Africa/Kinshasa", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LAGOS =
        T.let(:"Africa/Lagos", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LIBREVILLE =
        T.let(:"Africa/Libreville", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LOME =
        T.let(:"Africa/Lome", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LUANDA =
        T.let(:"Africa/Luanda", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LUBUMBASHI =
        T.let(:"Africa/Lubumbashi", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_LUSAKA =
        T.let(:"Africa/Lusaka", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MALABO =
        T.let(:"Africa/Malabo", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MAPUTO =
        T.let(:"Africa/Maputo", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MASERU =
        T.let(:"Africa/Maseru", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MBABANE =
        T.let(:"Africa/Mbabane", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MOGADISHU =
        T.let(:"Africa/Mogadishu", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_MONROVIA =
        T.let(:"Africa/Monrovia", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_NAIROBI =
        T.let(:"Africa/Nairobi", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_NDJAMENA =
        T.let(:"Africa/Ndjamena", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_NIAMEY =
        T.let(:"Africa/Niamey", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_NOUAKCHOTT =
        T.let(:"Africa/Nouakchott", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_OUAGADOUGOU =
        T.let(:"Africa/Ouagadougou", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_PORTO_NOVO =
        T.let(:"Africa/Porto-Novo", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_SAO_TOME =
        T.let(:"Africa/Sao_Tome", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_TRIPOLI =
        T.let(:"Africa/Tripoli", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_TUNIS =
        T.let(:"Africa/Tunis", Legalesign::TimezoneEnum::TaggedSymbol)
      AFRICA_WINDHOEK =
        T.let(:"Africa/Windhoek", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ADAK =
        T.let(:"America/Adak", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ANCHORAGE =
        T.let(:"America/Anchorage", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ANGUILLA =
        T.let(:"America/Anguilla", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ANTIGUA =
        T.let(:"America/Antigua", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ARAGUAINA =
        T.let(:"America/Araguaina", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ARGENTINA_BUENOS_AIRES =
        T.let(
          :"America/Argentina/Buenos_Aires",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_CATAMARCA =
        T.let(
          :"America/Argentina/Catamarca",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_CORDOBA =
        T.let(
          :"America/Argentina/Cordoba",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_JUJUY =
        T.let(
          :"America/Argentina/Jujuy",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_LA_RIOJA =
        T.let(
          :"America/Argentina/La_Rioja",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_MENDOZA =
        T.let(
          :"America/Argentina/Mendoza",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_RIO_GALLEGOS =
        T.let(
          :"America/Argentina/Rio_Gallegos",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_SALTA =
        T.let(
          :"America/Argentina/Salta",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_SAN_JUAN =
        T.let(
          :"America/Argentina/San_Juan",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_SAN_LUIS =
        T.let(
          :"America/Argentina/San_Luis",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_TUCUMAN =
        T.let(
          :"America/Argentina/Tucuman",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARGENTINA_USHUAIA =
        T.let(
          :"America/Argentina/Ushuaia",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_ARUBA =
        T.let(:"America/Aruba", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ASUNCION =
        T.let(:"America/Asuncion", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ATIKOKAN =
        T.let(:"America/Atikokan", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BAHIA =
        T.let(:"America/Bahia", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BAHIA_BANDERAS =
        T.let(:"America/Bahia_Banderas", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BARBADOS =
        T.let(:"America/Barbados", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BELEM =
        T.let(:"America/Belem", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BELIZE =
        T.let(:"America/Belize", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BLANC_SABLON =
        T.let(:"America/Blanc-Sablon", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BOA_VISTA =
        T.let(:"America/Boa_Vista", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BOGOTA =
        T.let(:"America/Bogota", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_BOISE =
        T.let(:"America/Boise", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CAMBRIDGE_BAY =
        T.let(:"America/Cambridge_Bay", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CAMPO_GRANDE =
        T.let(:"America/Campo_Grande", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CANCUN =
        T.let(:"America/Cancun", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CARACAS =
        T.let(:"America/Caracas", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CAYENNE =
        T.let(:"America/Cayenne", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CAYMAN =
        T.let(:"America/Cayman", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CHICAGO =
        T.let(:"America/Chicago", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CHIHUAHUA =
        T.let(:"America/Chihuahua", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_COSTA_RICA =
        T.let(:"America/Costa_Rica", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CRESTON =
        T.let(:"America/Creston", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CUIABA =
        T.let(:"America/Cuiaba", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_CURACAO =
        T.let(:"America/Curacao", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DANMARKSHAVN =
        T.let(:"America/Danmarkshavn", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DAWSON =
        T.let(:"America/Dawson", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DAWSON_CREEK =
        T.let(:"America/Dawson_Creek", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DENVER =
        T.let(:"America/Denver", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DETROIT =
        T.let(:"America/Detroit", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_DOMINICA =
        T.let(:"America/Dominica", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_EDMONTON =
        T.let(:"America/Edmonton", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_EIRUNEPE =
        T.let(:"America/Eirunepe", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_EL_SALVADOR =
        T.let(:"America/El_Salvador", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_FORTALEZA =
        T.let(:"America/Fortaleza", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GLACE_BAY =
        T.let(:"America/Glace_Bay", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GODTHAB =
        T.let(:"America/Godthab", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GOOSE_BAY =
        T.let(:"America/Goose_Bay", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GRAND_TURK =
        T.let(:"America/Grand_Turk", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GRENADA =
        T.let(:"America/Grenada", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GUADELOUPE =
        T.let(:"America/Guadeloupe", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GUATEMALA =
        T.let(:"America/Guatemala", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GUAYAQUIL =
        T.let(:"America/Guayaquil", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_GUYANA =
        T.let(:"America/Guyana", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_HALIFAX =
        T.let(:"America/Halifax", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_HAVANA =
        T.let(:"America/Havana", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_HERMOSILLO =
        T.let(:"America/Hermosillo", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_INDIANA_INDIANAPOLIS =
        T.let(
          :"America/Indiana/Indianapolis",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INDIANA_KNOX =
        T.let(:"America/Indiana/Knox", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_INDIANA_MARENGO =
        T.let(
          :"America/Indiana/Marengo",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INDIANA_PETERSBURG =
        T.let(
          :"America/Indiana/Petersburg",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INDIANA_TELL_CITY =
        T.let(
          :"America/Indiana/Tell_City",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INDIANA_VEVAY =
        T.let(:"America/Indiana/Vevay", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_INDIANA_VINCENNES =
        T.let(
          :"America/Indiana/Vincennes",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INDIANA_WINAMAC =
        T.let(
          :"America/Indiana/Winamac",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_INUVIK =
        T.let(:"America/Inuvik", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_IQALUIT =
        T.let(:"America/Iqaluit", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_JAMAICA =
        T.let(:"America/Jamaica", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_JUNEAU =
        T.let(:"America/Juneau", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_KENTUCKY_LOUISVILLE =
        T.let(
          :"America/Kentucky/Louisville",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_KENTUCKY_MONTICELLO =
        T.let(
          :"America/Kentucky/Monticello",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_KRALENDIJK =
        T.let(:"America/Kralendijk", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_LA_PAZ =
        T.let(:"America/La_Paz", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_LIMA =
        T.let(:"America/Lima", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_LOS_ANGELES =
        T.let(:"America/Los_Angeles", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_LOWER_PRINCES =
        T.let(:"America/Lower_Princes", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MACEIO =
        T.let(:"America/Maceio", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MANAGUA =
        T.let(:"America/Managua", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MANAUS =
        T.let(:"America/Manaus", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MARIGOT =
        T.let(:"America/Marigot", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MARTINIQUE =
        T.let(:"America/Martinique", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MATAMOROS =
        T.let(:"America/Matamoros", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MAZATLAN =
        T.let(:"America/Mazatlan", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MENOMINEE =
        T.let(:"America/Menominee", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MERIDA =
        T.let(:"America/Merida", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_METLAKATLA =
        T.let(:"America/Metlakatla", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MEXICO_CITY =
        T.let(:"America/Mexico_City", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MIQUELON =
        T.let(:"America/Miquelon", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MONCTON =
        T.let(:"America/Moncton", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MONTERREY =
        T.let(:"America/Monterrey", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MONTEVIDEO =
        T.let(:"America/Montevideo", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MONTREAL =
        T.let(:"America/Montreal", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_MONTSERRAT =
        T.let(:"America/Montserrat", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NASSAU =
        T.let(:"America/Nassau", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NEW_YORK =
        T.let(:"America/New_York", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NIPIGON =
        T.let(:"America/Nipigon", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NOME =
        T.let(:"America/Nome", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NORONHA =
        T.let(:"America/Noronha", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_NORTH_DAKOTA_BEULAH =
        T.let(
          :"America/North_Dakota/Beulah",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_NORTH_DAKOTA_CENTER =
        T.let(
          :"America/North_Dakota/Center",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_NORTH_DAKOTA_NEW_SALEM =
        T.let(
          :"America/North_Dakota/New_Salem",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      AMERICA_OJINAGA =
        T.let(:"America/Ojinaga", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PANAMA =
        T.let(:"America/Panama", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PANGNIRTUNG =
        T.let(:"America/Pangnirtung", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PARAMARIBO =
        T.let(:"America/Paramaribo", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PHOENIX =
        T.let(:"America/Phoenix", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PORT_AU_PRINCE =
        T.let(:"America/Port-au-Prince", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PORT_OF_SPAIN =
        T.let(:"America/Port_of_Spain", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PORTO_VELHO =
        T.let(:"America/Porto_Velho", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_PUERTO_RICO =
        T.let(:"America/Puerto_Rico", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_RAINY_RIVER =
        T.let(:"America/Rainy_River", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_RANKIN_INLET =
        T.let(:"America/Rankin_Inlet", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_RECIFE =
        T.let(:"America/Recife", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_REGINA =
        T.let(:"America/Regina", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_RESOLUTE =
        T.let(:"America/Resolute", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_RIO_BRANCO =
        T.let(:"America/Rio_Branco", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SANTA_ISABEL =
        T.let(:"America/Santa_Isabel", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SANTAREM =
        T.let(:"America/Santarem", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SANTIAGO =
        T.let(:"America/Santiago", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SANTO_DOMINGO =
        T.let(:"America/Santo_Domingo", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SAO_PAULO =
        T.let(:"America/Sao_Paulo", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SCORESBYSUND =
        T.let(:"America/Scoresbysund", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SHIPROCK =
        T.let(:"America/Shiprock", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SITKA =
        T.let(:"America/Sitka", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_BARTHELEMY =
        T.let(:"America/St_Barthelemy", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_JOHNS =
        T.let(:"America/St_Johns", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_KITTS =
        T.let(:"America/St_Kitts", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_LUCIA =
        T.let(:"America/St_Lucia", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_THOMAS =
        T.let(:"America/St_Thomas", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_ST_VINCENT =
        T.let(:"America/St_Vincent", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_SWIFT_CURRENT =
        T.let(:"America/Swift_Current", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_TEGUCIGALPA =
        T.let(:"America/Tegucigalpa", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_THULE =
        T.let(:"America/Thule", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_THUNDER_BAY =
        T.let(:"America/Thunder_Bay", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_TIJUANA =
        T.let(:"America/Tijuana", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_TORONTO =
        T.let(:"America/Toronto", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_TORTOLA =
        T.let(:"America/Tortola", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_VANCOUVER =
        T.let(:"America/Vancouver", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_WHITEHORSE =
        T.let(:"America/Whitehorse", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_WINNIPEG =
        T.let(:"America/Winnipeg", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_YAKUTAT =
        T.let(:"America/Yakutat", Legalesign::TimezoneEnum::TaggedSymbol)
      AMERICA_YELLOWKNIFE =
        T.let(:"America/Yellowknife", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_CASEY =
        T.let(:"Antarctica/Casey", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_DAVIS =
        T.let(:"Antarctica/Davis", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_DUMONT_D_URVILLE =
        T.let(
          :"Antarctica/DumontDUrville",
          Legalesign::TimezoneEnum::TaggedSymbol
        )
      ANTARCTICA_MACQUARIE =
        T.let(:"Antarctica/Macquarie", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_MAWSON =
        T.let(:"Antarctica/Mawson", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_MC_MURDO =
        T.let(:"Antarctica/McMurdo", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_PALMER =
        T.let(:"Antarctica/Palmer", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_ROTHERA =
        T.let(:"Antarctica/Rothera", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_SOUTH_POLE =
        T.let(:"Antarctica/South_Pole", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_SYOWA =
        T.let(:"Antarctica/Syowa", Legalesign::TimezoneEnum::TaggedSymbol)
      ANTARCTICA_VOSTOK =
        T.let(:"Antarctica/Vostok", Legalesign::TimezoneEnum::TaggedSymbol)
      ARCTIC_LONGYEARBYEN =
        T.let(:"Arctic/Longyearbyen", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ADEN = T.let(:"Asia/Aden", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ALMATY =
        T.let(:"Asia/Almaty", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_AMMAN = T.let(:"Asia/Amman", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ANADYR =
        T.let(:"Asia/Anadyr", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_AQTAU = T.let(:"Asia/Aqtau", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_AQTOBE =
        T.let(:"Asia/Aqtobe", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ASHGABAT =
        T.let(:"Asia/Ashgabat", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BAGHDAD =
        T.let(:"Asia/Baghdad", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BAHRAIN =
        T.let(:"Asia/Bahrain", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BAKU = T.let(:"Asia/Baku", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BANGKOK =
        T.let(:"Asia/Bangkok", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BEIRUT =
        T.let(:"Asia/Beirut", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BISHKEK =
        T.let(:"Asia/Bishkek", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_BRUNEI =
        T.let(:"Asia/Brunei", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_CHOIBALSAN =
        T.let(:"Asia/Choibalsan", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_CHONGQING =
        T.let(:"Asia/Chongqing", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_COLOMBO =
        T.let(:"Asia/Colombo", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_DAMASCUS =
        T.let(:"Asia/Damascus", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_DHAKA = T.let(:"Asia/Dhaka", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_DILI = T.let(:"Asia/Dili", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_DUBAI = T.let(:"Asia/Dubai", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_DUSHANBE =
        T.let(:"Asia/Dushanbe", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_GAZA = T.let(:"Asia/Gaza", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_HARBIN =
        T.let(:"Asia/Harbin", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_HEBRON =
        T.let(:"Asia/Hebron", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_HO_CHI_MINH =
        T.let(:"Asia/Ho_Chi_Minh", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_HONG_KONG =
        T.let(:"Asia/Hong_Kong", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_HOVD = T.let(:"Asia/Hovd", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_IRKUTSK =
        T.let(:"Asia/Irkutsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_JAKARTA =
        T.let(:"Asia/Jakarta", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_JAYAPURA =
        T.let(:"Asia/Jayapura", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_JERUSALEM =
        T.let(:"Asia/Jerusalem", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KABUL = T.let(:"Asia/Kabul", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KAMCHATKA =
        T.let(:"Asia/Kamchatka", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KARACHI =
        T.let(:"Asia/Karachi", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KASHGAR =
        T.let(:"Asia/Kashgar", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KATHMANDU =
        T.let(:"Asia/Kathmandu", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KOLKATA =
        T.let(:"Asia/Kolkata", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KRASNOYARSK =
        T.let(:"Asia/Krasnoyarsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KUALA_LUMPUR =
        T.let(:"Asia/Kuala_Lumpur", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KUCHING =
        T.let(:"Asia/Kuching", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_KUWAIT =
        T.let(:"Asia/Kuwait", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_MACAU = T.let(:"Asia/Macau", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_MAGADAN =
        T.let(:"Asia/Magadan", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_MAKASSAR =
        T.let(:"Asia/Makassar", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_MANILA =
        T.let(:"Asia/Manila", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_MUSCAT =
        T.let(:"Asia/Muscat", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_NICOSIA =
        T.let(:"Asia/Nicosia", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_NOVOKUZNETSK =
        T.let(:"Asia/Novokuznetsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_NOVOSIBIRSK =
        T.let(:"Asia/Novosibirsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_OMSK = T.let(:"Asia/Omsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ORAL = T.let(:"Asia/Oral", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_PHNOM_PENH =
        T.let(:"Asia/Phnom_Penh", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_PONTIANAK =
        T.let(:"Asia/Pontianak", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_PYONGYANG =
        T.let(:"Asia/Pyongyang", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_QATAR = T.let(:"Asia/Qatar", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_QYZYLORDA =
        T.let(:"Asia/Qyzylorda", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_RANGOON =
        T.let(:"Asia/Rangoon", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_RIYADH =
        T.let(:"Asia/Riyadh", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_SAKHALIN =
        T.let(:"Asia/Sakhalin", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_SAMARKAND =
        T.let(:"Asia/Samarkand", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_SEOUL = T.let(:"Asia/Seoul", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_SHANGHAI =
        T.let(:"Asia/Shanghai", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_SINGAPORE =
        T.let(:"Asia/Singapore", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_TAIPEI =
        T.let(:"Asia/Taipei", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_TASHKENT =
        T.let(:"Asia/Tashkent", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_TBILISI =
        T.let(:"Asia/Tbilisi", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_TEHRAN =
        T.let(:"Asia/Tehran", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_THIMPHU =
        T.let(:"Asia/Thimphu", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_TOKYO = T.let(:"Asia/Tokyo", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_ULAANBAATAR =
        T.let(:"Asia/Ulaanbaatar", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_URUMQI =
        T.let(:"Asia/Urumqi", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_VIENTIANE =
        T.let(:"Asia/Vientiane", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_VLADIVOSTOK =
        T.let(:"Asia/Vladivostok", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_YAKUTSK =
        T.let(:"Asia/Yakutsk", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_YEKATERINBURG =
        T.let(:"Asia/Yekaterinburg", Legalesign::TimezoneEnum::TaggedSymbol)
      ASIA_YEREVAN =
        T.let(:"Asia/Yerevan", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_AZORES =
        T.let(:"Atlantic/Azores", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_BERMUDA =
        T.let(:"Atlantic/Bermuda", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_CANARY =
        T.let(:"Atlantic/Canary", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_CAPE_VERDE =
        T.let(:"Atlantic/Cape_Verde", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_FAROE =
        T.let(:"Atlantic/Faroe", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_MADEIRA =
        T.let(:"Atlantic/Madeira", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_REYKJAVIK =
        T.let(:"Atlantic/Reykjavik", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_SOUTH_GEORGIA =
        T.let(:"Atlantic/South_Georgia", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_ST_HELENA =
        T.let(:"Atlantic/St_Helena", Legalesign::TimezoneEnum::TaggedSymbol)
      ATLANTIC_STANLEY =
        T.let(:"Atlantic/Stanley", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_ADELAIDE =
        T.let(:"Australia/Adelaide", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_BRISBANE =
        T.let(:"Australia/Brisbane", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_BROKEN_HILL =
        T.let(:"Australia/Broken_Hill", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_CURRIE =
        T.let(:"Australia/Currie", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_DARWIN =
        T.let(:"Australia/Darwin", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_EUCLA =
        T.let(:"Australia/Eucla", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_HOBART =
        T.let(:"Australia/Hobart", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_LINDEMAN =
        T.let(:"Australia/Lindeman", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_LORD_HOWE =
        T.let(:"Australia/Lord_Howe", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_MELBOURNE =
        T.let(:"Australia/Melbourne", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_PERTH =
        T.let(:"Australia/Perth", Legalesign::TimezoneEnum::TaggedSymbol)
      AUSTRALIA_SYDNEY =
        T.let(:"Australia/Sydney", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_ATLANTIC =
        T.let(:"Canada/Atlantic", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_CENTRAL =
        T.let(:"Canada/Central", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_EASTERN =
        T.let(:"Canada/Eastern", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_MOUNTAIN =
        T.let(:"Canada/Mountain", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_NEWFOUNDLAND =
        T.let(:"Canada/Newfoundland", Legalesign::TimezoneEnum::TaggedSymbol)
      CANADA_PACIFIC =
        T.let(:"Canada/Pacific", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_AMSTERDAM =
        T.let(:"Europe/Amsterdam", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ANDORRA =
        T.let(:"Europe/Andorra", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ATHENS =
        T.let(:"Europe/Athens", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BELGRADE =
        T.let(:"Europe/Belgrade", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BERLIN =
        T.let(:"Europe/Berlin", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BRATISLAVA =
        T.let(:"Europe/Bratislava", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BRUSSELS =
        T.let(:"Europe/Brussels", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BUCHAREST =
        T.let(:"Europe/Bucharest", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_BUDAPEST =
        T.let(:"Europe/Budapest", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_CHISINAU =
        T.let(:"Europe/Chisinau", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_COPENHAGEN =
        T.let(:"Europe/Copenhagen", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_DUBLIN =
        T.let(:"Europe/Dublin", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_GIBRALTAR =
        T.let(:"Europe/Gibraltar", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_GUERNSEY =
        T.let(:"Europe/Guernsey", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_HELSINKI =
        T.let(:"Europe/Helsinki", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ISLE_OF_MAN =
        T.let(:"Europe/Isle_of_Man", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ISTANBUL =
        T.let(:"Europe/Istanbul", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_JERSEY =
        T.let(:"Europe/Jersey", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_KALININGRAD =
        T.let(:"Europe/Kaliningrad", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_KIEV =
        T.let(:"Europe/Kiev", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_LISBON =
        T.let(:"Europe/Lisbon", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_LJUBLJANA =
        T.let(:"Europe/Ljubljana", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_LONDON =
        T.let(:"Europe/London", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_LUXEMBOURG =
        T.let(:"Europe/Luxembourg", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MADRID =
        T.let(:"Europe/Madrid", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MALTA =
        T.let(:"Europe/Malta", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MARIEHAMN =
        T.let(:"Europe/Mariehamn", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MINSK =
        T.let(:"Europe/Minsk", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MONACO =
        T.let(:"Europe/Monaco", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_MOSCOW =
        T.let(:"Europe/Moscow", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_OSLO =
        T.let(:"Europe/Oslo", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_PARIS =
        T.let(:"Europe/Paris", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_PODGORICA =
        T.let(:"Europe/Podgorica", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_PRAGUE =
        T.let(:"Europe/Prague", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_RIGA =
        T.let(:"Europe/Riga", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ROME =
        T.let(:"Europe/Rome", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SAMARA =
        T.let(:"Europe/Samara", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SAN_MARINO =
        T.let(:"Europe/San_Marino", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SARAJEVO =
        T.let(:"Europe/Sarajevo", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SIMFEROPOL =
        T.let(:"Europe/Simferopol", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SKOPJE =
        T.let(:"Europe/Skopje", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_SOFIA =
        T.let(:"Europe/Sofia", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_STOCKHOLM =
        T.let(:"Europe/Stockholm", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_TALLINN =
        T.let(:"Europe/Tallinn", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_TIRANE =
        T.let(:"Europe/Tirane", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_UZHGOROD =
        T.let(:"Europe/Uzhgorod", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_VADUZ =
        T.let(:"Europe/Vaduz", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_VATICAN =
        T.let(:"Europe/Vatican", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_VIENNA =
        T.let(:"Europe/Vienna", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_VILNIUS =
        T.let(:"Europe/Vilnius", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_VOLGOGRAD =
        T.let(:"Europe/Volgograd", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_WARSAW =
        T.let(:"Europe/Warsaw", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ZAGREB =
        T.let(:"Europe/Zagreb", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ZAPOROZHYE =
        T.let(:"Europe/Zaporozhye", Legalesign::TimezoneEnum::TaggedSymbol)
      EUROPE_ZURICH =
        T.let(:"Europe/Zurich", Legalesign::TimezoneEnum::TaggedSymbol)
      GMT = T.let(:GMT, Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_ANTANANARIVO =
        T.let(:"Indian/Antananarivo", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_CHAGOS =
        T.let(:"Indian/Chagos", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_CHRISTMAS =
        T.let(:"Indian/Christmas", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_COCOS =
        T.let(:"Indian/Cocos", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_COMORO =
        T.let(:"Indian/Comoro", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_KERGUELEN =
        T.let(:"Indian/Kerguelen", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_MAHE =
        T.let(:"Indian/Mahe", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_MALDIVES =
        T.let(:"Indian/Maldives", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_MAURITIUS =
        T.let(:"Indian/Mauritius", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_MAYOTTE =
        T.let(:"Indian/Mayotte", Legalesign::TimezoneEnum::TaggedSymbol)
      INDIAN_REUNION =
        T.let(:"Indian/Reunion", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_APIA =
        T.let(:"Pacific/Apia", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_AUCKLAND =
        T.let(:"Pacific/Auckland", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_CHATHAM =
        T.let(:"Pacific/Chatham", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_CHUUK =
        T.let(:"Pacific/Chuuk", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_EASTER =
        T.let(:"Pacific/Easter", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_EFATE =
        T.let(:"Pacific/Efate", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_ENDERBURY =
        T.let(:"Pacific/Enderbury", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_FAKAOFO =
        T.let(:"Pacific/Fakaofo", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_FIJI =
        T.let(:"Pacific/Fiji", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_FUNAFUTI =
        T.let(:"Pacific/Funafuti", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_GALAPAGOS =
        T.let(:"Pacific/Galapagos", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_GAMBIER =
        T.let(:"Pacific/Gambier", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_GUADALCANAL =
        T.let(:"Pacific/Guadalcanal", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_GUAM =
        T.let(:"Pacific/Guam", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_HONOLULU =
        T.let(:"Pacific/Honolulu", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_JOHNSTON =
        T.let(:"Pacific/Johnston", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_KIRITIMATI =
        T.let(:"Pacific/Kiritimati", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_KOSRAE =
        T.let(:"Pacific/Kosrae", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_KWAJALEIN =
        T.let(:"Pacific/Kwajalein", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_MAJURO =
        T.let(:"Pacific/Majuro", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_MARQUESAS =
        T.let(:"Pacific/Marquesas", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_MIDWAY =
        T.let(:"Pacific/Midway", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_NAURU =
        T.let(:"Pacific/Nauru", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_NIUE =
        T.let(:"Pacific/Niue", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_NORFOLK =
        T.let(:"Pacific/Norfolk", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_NOUMEA =
        T.let(:"Pacific/Noumea", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_PAGO_PAGO =
        T.let(:"Pacific/Pago_Pago", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_PALAU =
        T.let(:"Pacific/Palau", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_PITCAIRN =
        T.let(:"Pacific/Pitcairn", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_POHNPEI =
        T.let(:"Pacific/Pohnpei", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_PORT_MORESBY =
        T.let(:"Pacific/Port_Moresby", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_RAROTONGA =
        T.let(:"Pacific/Rarotonga", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_SAIPAN =
        T.let(:"Pacific/Saipan", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_TAHITI =
        T.let(:"Pacific/Tahiti", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_TARAWA =
        T.let(:"Pacific/Tarawa", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_TONGATAPU =
        T.let(:"Pacific/Tongatapu", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_WAKE =
        T.let(:"Pacific/Wake", Legalesign::TimezoneEnum::TaggedSymbol)
      PACIFIC_WALLIS =
        T.let(:"Pacific/Wallis", Legalesign::TimezoneEnum::TaggedSymbol)
      US_ALASKA = T.let(:"US/Alaska", Legalesign::TimezoneEnum::TaggedSymbol)
      US_ARIZONA = T.let(:"US/Arizona", Legalesign::TimezoneEnum::TaggedSymbol)
      US_CENTRAL = T.let(:"US/Central", Legalesign::TimezoneEnum::TaggedSymbol)
      US_EASTERN = T.let(:"US/Eastern", Legalesign::TimezoneEnum::TaggedSymbol)
      US_HAWAII = T.let(:"US/Hawaii", Legalesign::TimezoneEnum::TaggedSymbol)
      US_MOUNTAIN =
        T.let(:"US/Mountain", Legalesign::TimezoneEnum::TaggedSymbol)
      US_PACIFIC = T.let(:"US/Pacific", Legalesign::TimezoneEnum::TaggedSymbol)
      UTC = T.let(:UTC, Legalesign::TimezoneEnum::TaggedSymbol)

      sig { override.returns(T::Array[Legalesign::TimezoneEnum::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
