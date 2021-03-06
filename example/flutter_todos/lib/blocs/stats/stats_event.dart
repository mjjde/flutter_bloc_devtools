import 'package:equatable/equatable.dart';
import 'package:flutter_todos/models/models.dart';
import 'package:flutter_bloc_devtools/flutter_bloc_devtools.dart';

abstract class StatsEvent extends Equatable implements Mappable {
  const StatsEvent();

  @override
  Map<String, dynamic> toMap() => {};
}

class StatsUpdated extends StatsEvent {
  final List<Todo> todos;

  const StatsUpdated(this.todos);

  @override
  List<Object> get props => [todos];

  @override
  Map<String, dynamic> toMap() => {
        'todos': todos.map((e) => e.toEntity().toJson()).toList(),
      };
}
