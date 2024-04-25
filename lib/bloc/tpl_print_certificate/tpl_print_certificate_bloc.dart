import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'tpl_print_certificate_event.dart';
part 'tpl_print_certificate_state.dart';

class TplPrintCertificateBloc extends Bloc<TplPrintCertificateEvent, TplPrintCertificateState> {
  TplPrintCertificateBloc() : super(TplPrintCertificateInitial()) {
    // on<TplPrintCertificateEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<VehicleNoChangedEvent>(_vehicleNoChanged);
  }

  void _vehicleNoChanged(VehicleNoChangedEvent event, Emitter<TplPrintCertificateState> emitter){
    print('Vehicle No is ==> ${event.vehicleNo}');
  }
}
