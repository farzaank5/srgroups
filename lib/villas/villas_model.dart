import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'villas_widget.dart' show VillasWidget;
import 'package:flutter/material.dart';

class VillasModel extends FlutterFlowModel<VillasWidget> {
  ///  Local state fields for this page.

  List<String> sss = [];
  void addToSss(String item) => sss.add(item);
  void removeFromSss(String item) => sss.remove(item);
  void removeAtIndexFromSss(int index) => sss.removeAt(index);
  void insertAtIndexInSss(int index, String item) => sss.insert(index, item);
  void updateSssAtIndex(int index, Function(String) updateFn) =>
      sss[index] = updateFn(sss[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Villas widget.
  List<BookingsRecord>? listOFBookings;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
