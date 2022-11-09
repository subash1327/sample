import 'package:flutter/material.dart';

final List<String> backStack = [];

extension NavigationUtils on BuildContext{
  Future push(String name, [Object? args]){
    backStack.add(name);
    return Navigator.of(this).pushNamed(name, arguments: args);
  }
  Future managedPush(String name, [Object? args]){
    if(backStack.contains(name)){
      Navigator.of(this).popUntil((route){
        final n = route.settings.name;
        if(n != name) {
          backStack.remove(n);
        }
        return n == name;
      });
      return Future(() => null);
    } else {
      backStack.add(name);
      return Navigator.of(this).pushNamed(name, arguments: args);
    }

  }
  Future replace(String name, [Object? args]){
    if(backStack.isNotEmpty) {
      backStack.removeLast();
    }
    backStack.add(name);
    return Navigator.of(this).pushReplacementNamed(name, arguments: args);
  }
  void pop([Object? result]){
    backStack.removeLast();
    return Navigator.of(this).pop(result);
  }
  void popDialog([Object? result]){
    return Navigator.of(this).pop(result);
  }
  Future pushAndRemoveUntil(String name, bool Function(Route) predicate, [Object? args]) => Navigator.of(this).pushNamedAndRemoveUntil(name, predicate, arguments: args);
}