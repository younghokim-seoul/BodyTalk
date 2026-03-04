import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

/// {@category Components}
/// [StateFlow] is wrapper of RxDart [BehaviorSubject],
class StateFlow<T> {
  StateFlow({T? seed}) {
    if (seed != null) {
      subject = BehaviorSubject<T>.seeded(seed);
    } else {
      subject = BehaviorSubject<T>();
    }
  }

  late BehaviorSubject<T> subject;

  Stream<T> get stream => subject.stream;

  set val(event) => subject.add(event);

  get val => subject.valueOrNull;

  StreamBuilder<T> ui({
    required Widget Function(BuildContext, AsyncSnapshot<T?>) builder,
  }) => StreamBuilder(stream: stream, builder: builder);

  close() {
    subject.close();
  }

  Stream<R> combine2<A, B, R>(Stream<B> withB, R Function(T? a, B b) function) {
    return Rx.combineLatest2(stream, withB, function);
  }

  Stream<R> combine3<A, B, C, R>(
    Stream<B> withB,
    Stream<C> withC,
    R Function(T? a, B b, C c) function,
  ) {
    return Rx.combineLatest3(stream, withB, withC, function);
  }

  @override
  String toString() {
    return stream.toList().toString();
  }
}

extension StateFlowT<T> on T {
  StateFlow<T> get sbj => StateFlow<T>(seed: this);
}
