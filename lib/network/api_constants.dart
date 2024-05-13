/// Base URL
// const String baseUrl= "http://37.111.50.42:8484";
const String baseUrl= "https://mionlineapi.com:8443";

/// End Points
const String endPointGetPrintCertificateForTpl = "/miwsp/ws/recordsHistory";
const String endPointLifePremiumCalculator = "/milifeapi/ws/getLifeProductPremium";
const String endPointHealthLifePremiumPc = "/milifeapi/ws/getHealthProductPremium";

/// Header
const String headerAccept = "Accept";
const String headerContentType = "Content-Type";
const String applicationJson = "application/json";
const Map<String,String> header={
  "Accept":"application/json"
};

/// Parameters
const String paramVehicleNoForPrintCertificateTpl = "vehicle_no";
