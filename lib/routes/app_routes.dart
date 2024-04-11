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
  travelPath('travel', '/travel'),
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

  /// Bottom Navigation Screens
  homePath("home", '/homePath'),
  calculatorPath('calculator', '/calculatorPath');

  const Routes(this.name, this.path);
  final String name;
  final String path;
}