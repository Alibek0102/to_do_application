// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TasksStartEventImplCopyWith<$Res> {
  factory _$$TasksStartEventImplCopyWith(_$TasksStartEventImpl value,
          $Res Function(_$TasksStartEventImpl) then) =
      __$$TasksStartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksStatus? status});
}

/// @nodoc
class __$$TasksStartEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksStartEventImpl>
    implements _$$TasksStartEventImplCopyWith<$Res> {
  __$$TasksStartEventImplCopyWithImpl(
      _$TasksStartEventImpl _value, $Res Function(_$TasksStartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$TasksStartEventImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TasksStatus?,
    ));
  }
}

/// @nodoc

class _$TasksStartEventImpl
    with DiagnosticableTreeMixin
    implements _TasksStartEvent {
  const _$TasksStartEventImpl({this.status});

  @override
  final TasksStatus? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.start(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.start'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStartEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStartEventImplCopyWith<_$TasksStartEventImpl> get copyWith =>
      __$$TasksStartEventImplCopyWithImpl<_$TasksStartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) {
    return start(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) {
    return start?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _TasksStartEvent implements TasksEvent {
  const factory _TasksStartEvent({final TasksStatus? status}) =
      _$TasksStartEventImpl;

  TasksStatus? get status;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksStartEventImplCopyWith<_$TasksStartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskCreateEventImplCopyWith<$Res> {
  factory _$$TaskCreateEventImplCopyWith(_$TaskCreateEventImpl value,
          $Res Function(_$TaskCreateEventImpl) then) =
      __$$TaskCreateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String? text});
}

/// @nodoc
class __$$TaskCreateEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TaskCreateEventImpl>
    implements _$$TaskCreateEventImplCopyWith<$Res> {
  __$$TaskCreateEventImplCopyWithImpl(
      _$TaskCreateEventImpl _value, $Res Function(_$TaskCreateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? text = freezed,
  }) {
    return _then(_$TaskCreateEventImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskCreateEventImpl
    with DiagnosticableTreeMixin
    implements _TaskCreateEvent {
  const _$TaskCreateEventImpl({this.title, this.text});

  @override
  final String? title;
  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.create(title: $title, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.create'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCreateEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, text);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCreateEventImplCopyWith<_$TaskCreateEventImpl> get copyWith =>
      __$$TaskCreateEventImplCopyWithImpl<_$TaskCreateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) {
    return create(title, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) {
    return create?.call(title, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(title, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _TaskCreateEvent implements TasksEvent {
  const factory _TaskCreateEvent({final String? title, final String? text}) =
      _$TaskCreateEventImpl;

  String? get title;
  String? get text;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCreateEventImplCopyWith<_$TaskCreateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskRemoveEventImplCopyWith<$Res> {
  factory _$$TaskRemoveEventImplCopyWith(_$TaskRemoveEventImpl value,
          $Res Function(_$TaskRemoveEventImpl) then) =
      __$$TaskRemoveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$TaskRemoveEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TaskRemoveEventImpl>
    implements _$$TaskRemoveEventImplCopyWith<$Res> {
  __$$TaskRemoveEventImplCopyWithImpl(
      _$TaskRemoveEventImpl _value, $Res Function(_$TaskRemoveEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$TaskRemoveEventImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskRemoveEventImpl
    with DiagnosticableTreeMixin
    implements _TaskRemoveEvent {
  const _$TaskRemoveEventImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.remove(taskId: $taskId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.remove'))
      ..add(DiagnosticsProperty('taskId', taskId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskRemoveEventImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskRemoveEventImplCopyWith<_$TaskRemoveEventImpl> get copyWith =>
      __$$TaskRemoveEventImplCopyWithImpl<_$TaskRemoveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) {
    return remove(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) {
    return remove?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _TaskRemoveEvent implements TasksEvent {
  const factory _TaskRemoveEvent({required final String taskId}) =
      _$TaskRemoveEventImpl;

  String get taskId;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskRemoveEventImplCopyWith<_$TaskRemoveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskToogleStatusEventImplCopyWith<$Res> {
  factory _$$TaskToogleStatusEventImplCopyWith(
          _$TaskToogleStatusEventImpl value,
          $Res Function(_$TaskToogleStatusEventImpl) then) =
      __$$TaskToogleStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskIndex});
}

/// @nodoc
class __$$TaskToogleStatusEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TaskToogleStatusEventImpl>
    implements _$$TaskToogleStatusEventImplCopyWith<$Res> {
  __$$TaskToogleStatusEventImplCopyWithImpl(_$TaskToogleStatusEventImpl _value,
      $Res Function(_$TaskToogleStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIndex = null,
  }) {
    return _then(_$TaskToogleStatusEventImpl(
      taskIndex: null == taskIndex
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskToogleStatusEventImpl
    with DiagnosticableTreeMixin
    implements _TaskToogleStatusEvent {
  const _$TaskToogleStatusEventImpl({required this.taskIndex});

  @override
  final int taskIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.toogleTaskStatus(taskIndex: $taskIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.toogleTaskStatus'))
      ..add(DiagnosticsProperty('taskIndex', taskIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskToogleStatusEventImpl &&
            (identical(other.taskIndex, taskIndex) ||
                other.taskIndex == taskIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIndex);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskToogleStatusEventImplCopyWith<_$TaskToogleStatusEventImpl>
      get copyWith => __$$TaskToogleStatusEventImplCopyWithImpl<
          _$TaskToogleStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) {
    return toogleTaskStatus(taskIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) {
    return toogleTaskStatus?.call(taskIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) {
    if (toogleTaskStatus != null) {
      return toogleTaskStatus(taskIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) {
    return toogleTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) {
    return toogleTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) {
    if (toogleTaskStatus != null) {
      return toogleTaskStatus(this);
    }
    return orElse();
  }
}

abstract class _TaskToogleStatusEvent implements TasksEvent {
  const factory _TaskToogleStatusEvent({required final int taskIndex}) =
      _$TaskToogleStatusEventImpl;

  int get taskIndex;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskToogleStatusEventImplCopyWith<_$TaskToogleStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskUpdateEventImplCopyWith<$Res> {
  factory _$$TaskUpdateEventImplCopyWith(_$TaskUpdateEventImpl value,
          $Res Function(_$TaskUpdateEventImpl) then) =
      __$$TaskUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String text, int taskIndex});
}

/// @nodoc
class __$$TaskUpdateEventImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TaskUpdateEventImpl>
    implements _$$TaskUpdateEventImplCopyWith<$Res> {
  __$$TaskUpdateEventImplCopyWithImpl(
      _$TaskUpdateEventImpl _value, $Res Function(_$TaskUpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? taskIndex = null,
  }) {
    return _then(_$TaskUpdateEventImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      taskIndex: null == taskIndex
          ? _value.taskIndex
          : taskIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskUpdateEventImpl
    with DiagnosticableTreeMixin
    implements _TaskUpdateEvent {
  const _$TaskUpdateEventImpl(
      {required this.title, required this.text, required this.taskIndex});

  @override
  final String title;
  @override
  final String text;
  @override
  final int taskIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.updateTask(title: $title, text: $text, taskIndex: $taskIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.updateTask'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('taskIndex', taskIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUpdateEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.taskIndex, taskIndex) ||
                other.taskIndex == taskIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, text, taskIndex);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUpdateEventImplCopyWith<_$TaskUpdateEventImpl> get copyWith =>
      __$$TaskUpdateEventImplCopyWithImpl<_$TaskUpdateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksStatus? status) start,
    required TResult Function(String? title, String? text) create,
    required TResult Function(String taskId) remove,
    required TResult Function(int taskIndex) toogleTaskStatus,
    required TResult Function(String title, String text, int taskIndex)
        updateTask,
  }) {
    return updateTask(title, text, taskIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksStatus? status)? start,
    TResult? Function(String? title, String? text)? create,
    TResult? Function(String taskId)? remove,
    TResult? Function(int taskIndex)? toogleTaskStatus,
    TResult? Function(String title, String text, int taskIndex)? updateTask,
  }) {
    return updateTask?.call(title, text, taskIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksStatus? status)? start,
    TResult Function(String? title, String? text)? create,
    TResult Function(String taskId)? remove,
    TResult Function(int taskIndex)? toogleTaskStatus,
    TResult Function(String title, String text, int taskIndex)? updateTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(title, text, taskIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStartEvent value) start,
    required TResult Function(_TaskCreateEvent value) create,
    required TResult Function(_TaskRemoveEvent value) remove,
    required TResult Function(_TaskToogleStatusEvent value) toogleTaskStatus,
    required TResult Function(_TaskUpdateEvent value) updateTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStartEvent value)? start,
    TResult? Function(_TaskCreateEvent value)? create,
    TResult? Function(_TaskRemoveEvent value)? remove,
    TResult? Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult? Function(_TaskUpdateEvent value)? updateTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStartEvent value)? start,
    TResult Function(_TaskCreateEvent value)? create,
    TResult Function(_TaskRemoveEvent value)? remove,
    TResult Function(_TaskToogleStatusEvent value)? toogleTaskStatus,
    TResult Function(_TaskUpdateEvent value)? updateTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _TaskUpdateEvent implements TasksEvent {
  const factory _TaskUpdateEvent(
      {required final String title,
      required final String text,
      required final int taskIndex}) = _$TaskUpdateEventImpl;

  String get title;
  String get text;
  int get taskIndex;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskUpdateEventImplCopyWith<_$TaskUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<TaskEntity> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<TaskEntity> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<TaskEntity> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksInitialState value) initial,
    required TResult Function(_TasksLoaderState value) loader,
    required TResult Function(_TaskLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksInitialState value)? initial,
    TResult? Function(_TasksLoaderState value)? loader,
    TResult? Function(_TaskLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksInitialState value)? initial,
    TResult Function(_TasksLoaderState value)? loader,
    TResult Function(_TaskLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TasksInitialStateImplCopyWith<$Res> {
  factory _$$TasksInitialStateImplCopyWith(_$TasksInitialStateImpl value,
          $Res Function(_$TasksInitialStateImpl) then) =
      __$$TasksInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksInitialStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksInitialStateImpl>
    implements _$$TasksInitialStateImplCopyWith<$Res> {
  __$$TasksInitialStateImplCopyWithImpl(_$TasksInitialStateImpl _value,
      $Res Function(_$TasksInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TasksInitialStateImpl
    with DiagnosticableTreeMixin
    implements _TasksInitialState {
  const _$TasksInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TasksState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<TaskEntity> tasks) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<TaskEntity> tasks)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<TaskEntity> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksInitialState value) initial,
    required TResult Function(_TasksLoaderState value) loader,
    required TResult Function(_TaskLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksInitialState value)? initial,
    TResult? Function(_TasksLoaderState value)? loader,
    TResult? Function(_TaskLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksInitialState value)? initial,
    TResult Function(_TasksLoaderState value)? loader,
    TResult Function(_TaskLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TasksInitialState implements TasksState {
  const factory _TasksInitialState() = _$TasksInitialStateImpl;
}

/// @nodoc
abstract class _$$TasksLoaderStateImplCopyWith<$Res> {
  factory _$$TasksLoaderStateImplCopyWith(_$TasksLoaderStateImpl value,
          $Res Function(_$TasksLoaderStateImpl) then) =
      __$$TasksLoaderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksLoaderStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksLoaderStateImpl>
    implements _$$TasksLoaderStateImplCopyWith<$Res> {
  __$$TasksLoaderStateImplCopyWithImpl(_$TasksLoaderStateImpl _value,
      $Res Function(_$TasksLoaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TasksLoaderStateImpl
    with DiagnosticableTreeMixin
    implements _TasksLoaderState {
  const _$TasksLoaderStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksState.loader()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TasksState.loader'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksLoaderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<TaskEntity> tasks) loaded,
  }) {
    return loader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<TaskEntity> tasks)? loaded,
  }) {
    return loader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<TaskEntity> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksInitialState value) initial,
    required TResult Function(_TasksLoaderState value) loader,
    required TResult Function(_TaskLoadedState value) loaded,
  }) {
    return loader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksInitialState value)? initial,
    TResult? Function(_TasksLoaderState value)? loader,
    TResult? Function(_TaskLoadedState value)? loaded,
  }) {
    return loader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksInitialState value)? initial,
    TResult Function(_TasksLoaderState value)? loader,
    TResult Function(_TaskLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loader != null) {
      return loader(this);
    }
    return orElse();
  }
}

abstract class _TasksLoaderState implements TasksState {
  const factory _TasksLoaderState() = _$TasksLoaderStateImpl;
}

/// @nodoc
abstract class _$$TaskLoadedStateImplCopyWith<$Res> {
  factory _$$TaskLoadedStateImplCopyWith(_$TaskLoadedStateImpl value,
          $Res Function(_$TaskLoadedStateImpl) then) =
      __$$TaskLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskEntity> tasks});
}

/// @nodoc
class __$$TaskLoadedStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TaskLoadedStateImpl>
    implements _$$TaskLoadedStateImplCopyWith<$Res> {
  __$$TaskLoadedStateImplCopyWithImpl(
      _$TaskLoadedStateImpl _value, $Res Function(_$TaskLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TaskLoadedStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$TaskLoadedStateImpl
    with DiagnosticableTreeMixin
    implements _TaskLoadedState {
  const _$TaskLoadedStateImpl({final List<TaskEntity> tasks = const []})
      : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  @JsonKey()
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksState.loaded(tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksState.loaded'))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLoadedStateImplCopyWith<_$TaskLoadedStateImpl> get copyWith =>
      __$$TaskLoadedStateImplCopyWithImpl<_$TaskLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loader,
    required TResult Function(List<TaskEntity> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loader,
    TResult? Function(List<TaskEntity> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loader,
    TResult Function(List<TaskEntity> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksInitialState value) initial,
    required TResult Function(_TasksLoaderState value) loader,
    required TResult Function(_TaskLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksInitialState value)? initial,
    TResult? Function(_TasksLoaderState value)? loader,
    TResult? Function(_TaskLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksInitialState value)? initial,
    TResult Function(_TasksLoaderState value)? loader,
    TResult Function(_TaskLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TaskLoadedState implements TasksState {
  const factory _TaskLoadedState({final List<TaskEntity> tasks}) =
      _$TaskLoadedStateImpl;

  List<TaskEntity> get tasks;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskLoadedStateImplCopyWith<_$TaskLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
