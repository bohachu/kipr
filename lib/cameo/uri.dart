import 'dart:js' as js;

String getCurrentUri(){
  return js.context['location']['href'];
}
