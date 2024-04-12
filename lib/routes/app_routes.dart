enum Routes {
  root('home', '/'),

  ///Home Screens
  visionAndMission('vision', '/vision'),
  homeGeneralInsurance('homeGeneralInsurance', '/homeGeneralInsurance'),
  homeLifeInsurance('homeLifeInsurance', '/homeLifeInsurance'),
  homeBuyOnline('homeBuyOnline', '/homeBuyOnline'),
  homeOnlineBiller('homeOnlineBiller', '/homeOnlineBiller'),
  homePrintCertificate('homePrintCertificate', '/homePrintCertificate'),

  /// Drawer Screens
  aboutUs('aboutUs', '/aboutUs'),
  contactPath('contact', '/contactPath'),
  faqs('faqs', '/faqs'),
  settings('setting', '/setting'),
  login('login', '/login'),
  googleMapScreen('googleMapScreen', '/googleMapScreen'),

  ///General Insurance
  tplPath('tpl', '/tpl'),
  motorPath('motor', '/motor'),
  fireAndAlliedPath('fire', '/fire'),
  burglaryPath('burglary', '/burglary'),
  fidelityPath('fidelity', '/fidelity'),
  cashInSafePath('cashInSafe', '/cashInSafe'),
  cashInTransitPath('cashInTransit', '/cashInTransit'),
  personalAccidentPath('personalAccident', '/personalAccident'),
  personalAccidentAndDisease(
      'personalAccidentAndDisease', '/personalAccidentAndDisease'),
  workmenPath('workmen', '/workmen'),
  liabilityPath('liability', '/liability'),
  contractorPath('contractor', '/contractor'),
  machineryPath('machinery', '/machinery'),
  depositPath('deposit', '/deposit'),
  marineCargoPath('marineCargo', '/marineCargo'),
  marineHullPath('marineHull', '/marineHull'),
  // travelPath('travel', '/travel'),
  shipOwnerPath('shipOwner', '/shipOwner'),
  kyarFishingPath('kyarFishing', '/kyarFishing'),
  creditGuaranteePath('creditGuarantee', '/creditGuarantee'),
  reinsurancePath('reinsurance', '/reinsurance'),
  electronicEquipmentPath('electronicEquipment', '/electronicEquipment'),
  minerLiabilityPath('minerLiability', '/minerLiability'),
  erectionAllRisk('erectionAllRisk', '/erectionAllRisk'),
  contractorAllRisk('contractorAllRisk', '/contractorAllRisk'),

  /// Life Insurance
  govPersonalShortTermPath('govPersonalShortTerm', '/govPersonalShortTerm'),
  govPersonalPath('govPersonal', '/govPersonal'),
  militaryPath('military', '/military'),
  publicPath('public', '/public'),
  shortTermEndowmentPath('shortTermEndowment', '/shortTermEndowment'),
  educationPath('education', '/education'),
  studentPath('student', '/student'),
  shoreJobPath('shoreJob', '/shoreJob'),
  seamanPath('seaman', '/seaman'),
  farmerPath('farmer', '/farmer'),
  snakeBitePath('snakeBite', '/snakeBite'),
  groupPath('group', '/group'),
  publicTermPath('publicTerm', '/publicTerm'),
  sportMenPath('sportMen', '/sportMen'),
  healthPath('health', '/health'),
  criticalIllnessPath('criticalIllness', '/criticalIllness'),
  microHealthPath('microHealth', '/microHealth'),
  singlePremiumCreditPath('singlePremiumCredit', '/singlePremiumCredit'),
  shortTermSinglePremiumPath(
      'shortTermSinglePremium', '/shortTermSinglePremium'),
  singlePremiumEndowmentPath(
      'singlePremiumEndowment', '/singlePremiumEndowment'),
  smartSavingPath('smartSaving', '/smartSaving'),
  seamanPlanPath('seamanPlan', '/seamanPlan'),

  ///Container Route
  containerRoutePath('containerRoute', '/containerRoute'),
  branchesMapPath('branchesMap','/branchesMap'),

  ///Login
  forgetPwdPath('forgetPwd', '/forgetPwd'),
  registrationPath('registration','/registration'),
  enterCodePath('enterCode', '/enterCode'),

  /// General Insurance Premium Calculator (TPL)
  userGuidePath('UserGuide','/UserGuide'),
  tplOwnerInfoPath('tplOwnerInfo', '/tplOwnerInfo'),
  tplPaymentPath('tplPayment','/tplPayment'),
  tplPaymentInfoDetailsPath('tplPaymentInfoDetails', '/tplPaymentInfoDetails'),
  tplPremiumHistoryPath('tplPremiumHistory', '/tplPremiumHistory'),

  /// Online Biller
  onlineBillerPaymentInfoPath('onlineBillerPaymentInfo','/onlineBillerPaymentInfo'),
  onlineBillerPaymentInfoDetailsPath('onlineBillerPaymentInfoDetails', '/onlineBillerPaymentInfoDetails'),

  /// General Insurance Premium Calculator
  generalInsPremiumDetailsAndCoverageAddOnPath('premiumDetailsAndCalculator', '/premiumDetailsAndCalculator'),
  generalInsPremiumDetailsAndCoveragePath('premiumDetailsAndCoverage', '/premiumDetailsAndCoverage'),
  generalInsAdditionalRiskCoverPath('generalInsAdditionalRiskCover', '/generalInsAdditionalRiskCover'),

  /// General Insurance Premium Calculator (Motor)
  motorPremiumCalculatorAdditionalRiskCoverPath('motorPCAdditionalRiskCover', '/motorPCAdditionalRiskCover'),
  motorPremiumDetailPath('motorPremiumDetail', '/motorPremiumDetail'),
  motorCycleUSDAdditionalRiskCoverPath('motorCyclePCAdditionalRiskCover', '/motorCyclePCAdditionalRiskCover'),

  ///General Insurance Premium Calculator (Fire)
  fireAdditionalCoverPath('fireAdditionalCover','/fireAdditionalCover'),
  fireAdditionalRiskCoverPath('fireAdditionalRiskCover', '/fireAdditionalRiskCover'),

  /// Life Insurance Premium Calculator
  lifePremiumDetailsPath('lifePremiumDetails', '/lifePremiumDetails'),
  coverageTypePickerPath('coverageTypePicker', '/coverageTypePicker'),

  /// General Insurance Premium Calculator (Travel)
  travelPClLocalPath('travelPCLocal', '/travelPCLocal'),
  travelPCForeignPath('travelPCForeign', '/travelPCForeign'),
  travelPath('travel', '/travel'),
  travelPCUnderPath('travelPCUnder', '/travelPCUnder'),
  travelPremiumDetailsPath('travelPremiumDetails', '/travelPremiumDetails'),

  /// Life Insurance PC (Government Personnel Short Term)
  lifeGovPersonalShortTermPaymentPath('lifeGovPersonalShortTermPayment', '/lifeGovPersonalShortTermPayment'),

  /// Life Insurance PC (Health)
  healthAdditionalCoverPath('healthAdditionalCover','/healthAdditionalCover'),

  /// Life Insurance PC (Shore Job)
  lifeShoreJobPaymentPath('lifeShoreJobPayment','/lifeShoreJobPayment'),

  /// Life Insurance PC (Shore Term)
  lifeShortTermPaymentPath('lifeShortTermPayment','/lifeShortTermPayment'),

  /// Inbound
  inboundHospitalNetworkPath('inboundHospitalNetwork', '/inboundHospitalNetwork'),
  inboundEnquiryPath('inboundEnquiry','/inboundEnquiry'),
  countryScreenPath('countryScreen', '/countryScreen'),
  countryCodeScreenPath('countryCodeScreen','/countryCodeScreen'),
  inboundEnquiryHistoryPath('inboundEnquiryHistory','/inboundEnquiryHistory'),
  inboundTermsAndConditionPath('inboundTermsAndCondition', '/inboundTermsAndCondition'),
  inboundPassportInfoPath('inboundPassportInfo', '/inboundPassportInfo'),
  inboundInsurePersonPath('inboundInsurePerson', '/inboundInsurePerson'),
  inboundBeneficiaryPath('inboundBeneficiary', '/inboundBeneficiary'),
  inboundAgentPath('inboundAgent', '/inboundAgent'),
  inboundPremiumAndPaymentPath('inboundPremiumAndPayment', '/inboundPremiumAndPayment'),
  inboundPaymentInfoDetailsPath('inboundPaymentInfoDetails', '/inboundPaymentInfoDetails'),

  /// Outbound
  outboundMMKTermsAndConditionPath('outboundMMKTermsAndCondition', '/outboundMMKTermsAndCondition'),
  outboundMMKPassportInfoPath('outboundMMKPassportInfo', '/outboundMMKPassportInfo'),
  outboundMMKInsurePersonPath('outboundMMKInsurePerson', '/outboundMMKInsurePerson'),
  outboundMMKBeneficiaryInfoPath('outboundMMKBeneficiaryInfo', '/outboundMMKBeneficiaryInfo'),
  outboundMMKAgentPath('outboundMMKAgent', '/outboundMMKAgent'),
  outboundMMKPremiumAndPaymentPath('outboundMMKPremiumAndPayment', '/outboundMMKPremiumAndPayment'),
  outboundMMKPaymentInfoDetailsPath('outboundMMKPaymentInfoDetails', '/outboundMMKPaymentInfoDetails'),

  /// Outbound USD
  outboundTermsAndConditionsPath('outboundTermsAndConditions', '/outboundTermsAndConditions'),
  outboundPassportInfoPath('outboundPassportInfo', '/outboundPassportInfo'),
  outboundInsureInfoPath('outboundInsureInfo', '/outboundInsureInfo'),
  outboundBeneficiaryInfoPath('outboundBeneficiaryInfo', '/outboundBeneficiaryInfo'),
  outboundAgentPath('outboundAgent', '/outboundAgent'),
  outboundPremiumAndPaymentPath('outboundPremiumAndPayment', '/outboundPremiumAndPayment'),
  outboundPaymentInfoDetailsPath('outboundPaymentInfoDetails','/outboundPaymentInfoDetails'),

  /// Seaman Buy Online
  seamanTermsAndConditionsPath('seamanTermsAndConditions', '/seamanTermsAndConditions'),
  seamanEnquiryPath('seamanEnquiry', '/seamanEnquiry'),
  seamanInsureInfoPath('seamanInsureInfo', '/seamanInsureInfo'),
  seamanBeneficiaryPath('seamanBeneficiary', '/seamanBeneficiary'),
  seamanAgentPath('seamanAgent', '/seamanAgent'),
  seamanPremiumAndPaymentPath('seamanPremiumAndPayment', '/seamanPremiumAndPayment'),
  seamanPaymentInfoDetailsPath('seamanPaymentInfoDetails', '/seamanPaymentInfoDetails'),

  /// Air Travel Insurance
  airTravelProposalPath('airTravelProposal', '/airTravelProposal'),
  airTravelBuyProposalPath('airTravelBuyProposal', '/airTravelBuyProposal'),

  /// Travel Insurance
  travelProposalPath('travelProposal', '/travelProposal'),
  travelBuyProposalPath('travelBuyProposal', '/travelBuyProposal'),

  /// Health Insurance
  healthInsurePersonInfo1Path('healthInsurePersonInfo1', '/healthInsurePersonInfo1'),
  healthInsurePersonInfo2Path('healthInsurePersonInfo2', '/healthInsurePersonInfo2'),
  healthInsurePersonInfo3Path('healthInsurePersonInfo3', '/healthInsurePersonInfo3'),
  healthBuyOnlineAdditionalCoverPath('healthBuyOnlineAdditionalCover', '/healthBuyOnlineAdditionalCover'),
  healthSurveyPath('healthSurveyPath', '/healthSurveyPath'),
  healthBeneficiaryHomePath('healthBeneficiaryHome', '/healthBeneficiaryHome'),
  healthBeneficiaryInfo1Path('healthBeneficiaryInfo1', '/healthBeneficiaryInfo1'),
  healthBeneficiaryInfo2Path('healthBeneficiaryInfo2', '/healthBeneficiaryInfo2'),
  healthBeneficiaryInfo3Path('healthBeneficiaryInfo3', '/healthBeneficiaryInfo3'),
  healthConfirmPath('healthConfirm', '/healthConfirm'),

  /// Personal Accident
  paInsurePersonInfo1Path('paInsurePersonInfo1', '/paInsurePersonInfo1'),
  paInsurePersonInfo2Path('paInsurePersonInfo2', '/paInsurePersonInfo2'),
  paInsurePersonInfo3Path('paInsurePersonInfo3', '/paInsurePersonInfo3'),
  paConfirmPath('paConfirm','/paConfirm'),

  /// Driver
  tplDriverPremiumAndPaymentPath('tplDriverPremiumAndPayment', '/tplDriverPremiumAndPayment'),
  tplDriverPaymentInfoDetailsPath('tplDriverPaymentInfoDetails', '/tplDriverPaymentInfoDetails'),

  /// Bottom Navigation Screens
  homePath("home", '/homePath'),
  calculatorPath('calculator', '/calculatorPath');

  const Routes(this.name, this.path);
  final String name;
  final String path;
}