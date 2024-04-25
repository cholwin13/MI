part of 'tpl_print_certificate_bloc.dart';

@immutable
abstract class TplPrintCertificateEvent {}

class VehicleNoChangedEvent extends TplPrintCertificateEvent{
  String vehicleNo;

  VehicleNoChangedEvent(this.vehicleNo);
}