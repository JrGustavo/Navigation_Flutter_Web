import 'package:fluro/fluro.dart';

import '../Views/counter_provider_view.dart';
import '../Views/counter_view.dart';
import '../Views/view_404.dart';

final   counterHandler =  Handler(
    handlerFunc: (context, params) {
      return CounterView(base: params['base']?.first??'5');
    }
);

final   counterProviderHandler =  Handler(
    handlerFunc: (context, params) {

      return CounterProviderView(base: params['base']?.first??'10' );
    }
);

final   dashboardUserHandler =  Handler(
    handlerFunc: (context, params) {
      print(params);
      return View404();
    }
);
//404
final   pageNotFound =  Handler(
    handlerFunc: (_ , __) => View404()
);


