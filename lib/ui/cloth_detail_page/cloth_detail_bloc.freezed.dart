// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloth_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClothDetailEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClothDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ClothDetailEvent()';
}


}

/// @nodoc
class $ClothDetailEventCopyWith<$Res>  {
$ClothDetailEventCopyWith(ClothDetailEvent _, $Res Function(ClothDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ClothDetailEvent].
extension ClothDetailEventPatterns on ClothDetailEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _TitleChanged value)?  titleChanged,TResult Function( _CommentChanged value)?  commentChanged,TResult Function( _ChangeCategory value)?  changeCategory,TResult Function( _ChangeLocation value)?  changeLocation,TResult Function( _SaveCategory value)?  saveCategory,TResult Function( _SaveLocation value)?  saveLocation,TResult Function( _SaveCloth value)?  saveCloth,TResult Function( _ChangeCategories value)?  changeCategories,TResult Function( _ChangeLocations value)?  changeLocations,TResult Function( _TakePhoto value)?  takePhoto,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _CommentChanged() when commentChanged != null:
return commentChanged(_that);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that);case _SaveCategory() when saveCategory != null:
return saveCategory(_that);case _SaveLocation() when saveLocation != null:
return saveLocation(_that);case _SaveCloth() when saveCloth != null:
return saveCloth(_that);case _ChangeCategories() when changeCategories != null:
return changeCategories(_that);case _ChangeLocations() when changeLocations != null:
return changeLocations(_that);case _TakePhoto() when takePhoto != null:
return takePhoto(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _TitleChanged value)  titleChanged,required TResult Function( _CommentChanged value)  commentChanged,required TResult Function( _ChangeCategory value)  changeCategory,required TResult Function( _ChangeLocation value)  changeLocation,required TResult Function( _SaveCategory value)  saveCategory,required TResult Function( _SaveLocation value)  saveLocation,required TResult Function( _SaveCloth value)  saveCloth,required TResult Function( _ChangeCategories value)  changeCategories,required TResult Function( _ChangeLocations value)  changeLocations,required TResult Function( _TakePhoto value)  takePhoto,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _TitleChanged():
return titleChanged(_that);case _CommentChanged():
return commentChanged(_that);case _ChangeCategory():
return changeCategory(_that);case _ChangeLocation():
return changeLocation(_that);case _SaveCategory():
return saveCategory(_that);case _SaveLocation():
return saveLocation(_that);case _SaveCloth():
return saveCloth(_that);case _ChangeCategories():
return changeCategories(_that);case _ChangeLocations():
return changeLocations(_that);case _TakePhoto():
return takePhoto(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _TitleChanged value)?  titleChanged,TResult? Function( _CommentChanged value)?  commentChanged,TResult? Function( _ChangeCategory value)?  changeCategory,TResult? Function( _ChangeLocation value)?  changeLocation,TResult? Function( _SaveCategory value)?  saveCategory,TResult? Function( _SaveLocation value)?  saveLocation,TResult? Function( _SaveCloth value)?  saveCloth,TResult? Function( _ChangeCategories value)?  changeCategories,TResult? Function( _ChangeLocations value)?  changeLocations,TResult? Function( _TakePhoto value)?  takePhoto,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _TitleChanged() when titleChanged != null:
return titleChanged(_that);case _CommentChanged() when commentChanged != null:
return commentChanged(_that);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that);case _SaveCategory() when saveCategory != null:
return saveCategory(_that);case _SaveLocation() when saveLocation != null:
return saveLocation(_that);case _SaveCloth() when saveCloth != null:
return saveCloth(_that);case _ChangeCategories() when changeCategories != null:
return changeCategories(_that);case _ChangeLocations() when changeLocations != null:
return changeLocations(_that);case _TakePhoto() when takePhoto != null:
return takePhoto(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? clothId)?  fetch,TResult Function( String title)?  titleChanged,TResult Function( String comment)?  commentChanged,TResult Function( Category? category)?  changeCategory,TResult Function( Location? location)?  changeLocation,TResult Function( String title)?  saveCategory,TResult Function( String title)?  saveLocation,TResult Function()?  saveCloth,TResult Function( List<Category> categories)?  changeCategories,TResult Function( List<Location> locations)?  changeLocations,TResult Function( XFile photo)?  takePhoto,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.clothId);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _CommentChanged() when commentChanged != null:
return commentChanged(_that.comment);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that.category);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that.location);case _SaveCategory() when saveCategory != null:
return saveCategory(_that.title);case _SaveLocation() when saveLocation != null:
return saveLocation(_that.title);case _SaveCloth() when saveCloth != null:
return saveCloth();case _ChangeCategories() when changeCategories != null:
return changeCategories(_that.categories);case _ChangeLocations() when changeLocations != null:
return changeLocations(_that.locations);case _TakePhoto() when takePhoto != null:
return takePhoto(_that.photo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? clothId)  fetch,required TResult Function( String title)  titleChanged,required TResult Function( String comment)  commentChanged,required TResult Function( Category? category)  changeCategory,required TResult Function( Location? location)  changeLocation,required TResult Function( String title)  saveCategory,required TResult Function( String title)  saveLocation,required TResult Function()  saveCloth,required TResult Function( List<Category> categories)  changeCategories,required TResult Function( List<Location> locations)  changeLocations,required TResult Function( XFile photo)  takePhoto,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.clothId);case _TitleChanged():
return titleChanged(_that.title);case _CommentChanged():
return commentChanged(_that.comment);case _ChangeCategory():
return changeCategory(_that.category);case _ChangeLocation():
return changeLocation(_that.location);case _SaveCategory():
return saveCategory(_that.title);case _SaveLocation():
return saveLocation(_that.title);case _SaveCloth():
return saveCloth();case _ChangeCategories():
return changeCategories(_that.categories);case _ChangeLocations():
return changeLocations(_that.locations);case _TakePhoto():
return takePhoto(_that.photo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? clothId)?  fetch,TResult? Function( String title)?  titleChanged,TResult? Function( String comment)?  commentChanged,TResult? Function( Category? category)?  changeCategory,TResult? Function( Location? location)?  changeLocation,TResult? Function( String title)?  saveCategory,TResult? Function( String title)?  saveLocation,TResult? Function()?  saveCloth,TResult? Function( List<Category> categories)?  changeCategories,TResult? Function( List<Location> locations)?  changeLocations,TResult? Function( XFile photo)?  takePhoto,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.clothId);case _TitleChanged() when titleChanged != null:
return titleChanged(_that.title);case _CommentChanged() when commentChanged != null:
return commentChanged(_that.comment);case _ChangeCategory() when changeCategory != null:
return changeCategory(_that.category);case _ChangeLocation() when changeLocation != null:
return changeLocation(_that.location);case _SaveCategory() when saveCategory != null:
return saveCategory(_that.title);case _SaveLocation() when saveLocation != null:
return saveLocation(_that.title);case _SaveCloth() when saveCloth != null:
return saveCloth();case _ChangeCategories() when changeCategories != null:
return changeCategories(_that.categories);case _ChangeLocations() when changeLocations != null:
return changeLocations(_that.locations);case _TakePhoto() when takePhoto != null:
return takePhoto(_that.photo);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements ClothDetailEvent {
  const _Fetch({this.clothId});
  

 final  int? clothId;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.clothId, clothId) || other.clothId == clothId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,clothId);
}

@override
String toString() {
    return 'ClothDetailEvent.fetch(clothId: $clothId)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@useResult
$Res call({
 int? clothId
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? clothId = freezed,}) {
  return _then(_Fetch(
clothId: freezed == clothId ? _self.clothId : clothId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _TitleChanged implements ClothDetailEvent {
  const _TitleChanged(this.title);
  

 final  String title;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitleChangedCopyWith<_TitleChanged> get copyWith => __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title);
}

@override
String toString() {
    return 'ClothDetailEvent.titleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class _$TitleChangedCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$TitleChangedCopyWith(_TitleChanged value, $Res Function(_TitleChanged) _then) = __$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(this._self, this._then);

  final _TitleChanged _self;
  final $Res Function(_TitleChanged) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_TitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CommentChanged implements ClothDetailEvent {
  const _CommentChanged(this.comment);
  

 final  String comment;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentChangedCopyWith<_CommentChanged> get copyWith => __$CommentChangedCopyWithImpl<_CommentChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentChanged&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode {
    return Object.hash(runtimeType,comment);
}

@override
String toString() {
    return 'ClothDetailEvent.commentChanged(comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CommentChangedCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$CommentChangedCopyWith(_CommentChanged value, $Res Function(_CommentChanged) _then) = __$CommentChangedCopyWithImpl;
@useResult
$Res call({
 String comment
});




}
/// @nodoc
class __$CommentChangedCopyWithImpl<$Res>
    implements _$CommentChangedCopyWith<$Res> {
  __$CommentChangedCopyWithImpl(this._self, this._then);

  final _CommentChanged _self;
  final $Res Function(_CommentChanged) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(_CommentChanged(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangeCategory implements ClothDetailEvent {
  const _ChangeCategory({required this.category});
  

 final  Category? category;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCategoryCopyWith<_ChangeCategory> get copyWith => __$ChangeCategoryCopyWithImpl<_ChangeCategory>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode {
    return Object.hash(runtimeType,category);
}

@override
String toString() {
    return 'ClothDetailEvent.changeCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class _$ChangeCategoryCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$ChangeCategoryCopyWith(_ChangeCategory value, $Res Function(_ChangeCategory) _then) = __$ChangeCategoryCopyWithImpl;
@useResult
$Res call({
 Category? category
});




}
/// @nodoc
class __$ChangeCategoryCopyWithImpl<$Res>
    implements _$ChangeCategoryCopyWith<$Res> {
  __$ChangeCategoryCopyWithImpl(this._self, this._then);

  final _ChangeCategory _self;
  final $Res Function(_ChangeCategory) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(_ChangeCategory(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,
  ));
}


}

/// @nodoc


class _ChangeLocation implements ClothDetailEvent {
  const _ChangeLocation({required this.location});
  

 final  Location? location;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLocationCopyWith<_ChangeLocation> get copyWith => __$ChangeLocationCopyWithImpl<_ChangeLocation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLocation&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode {
    return Object.hash(runtimeType,location);
}

@override
String toString() {
    return 'ClothDetailEvent.changeLocation(location: $location)';
}


}

/// @nodoc
abstract mixin class _$ChangeLocationCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$ChangeLocationCopyWith(_ChangeLocation value, $Res Function(_ChangeLocation) _then) = __$ChangeLocationCopyWithImpl;
@useResult
$Res call({
 Location? location
});




}
/// @nodoc
class __$ChangeLocationCopyWithImpl<$Res>
    implements _$ChangeLocationCopyWith<$Res> {
  __$ChangeLocationCopyWithImpl(this._self, this._then);

  final _ChangeLocation _self;
  final $Res Function(_ChangeLocation) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = freezed,}) {
  return _then(_ChangeLocation(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,
  ));
}


}

/// @nodoc


class _SaveCategory implements ClothDetailEvent {
  const _SaveCategory({required this.title});
  

 final  String title;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveCategoryCopyWith<_SaveCategory> get copyWith => __$SaveCategoryCopyWithImpl<_SaveCategory>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCategory&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title);
}

@override
String toString() {
    return 'ClothDetailEvent.saveCategory(title: $title)';
}


}

/// @nodoc
abstract mixin class _$SaveCategoryCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$SaveCategoryCopyWith(_SaveCategory value, $Res Function(_SaveCategory) _then) = __$SaveCategoryCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$SaveCategoryCopyWithImpl<$Res>
    implements _$SaveCategoryCopyWith<$Res> {
  __$SaveCategoryCopyWithImpl(this._self, this._then);

  final _SaveCategory _self;
  final $Res Function(_SaveCategory) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_SaveCategory(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveLocation implements ClothDetailEvent {
  const _SaveLocation({required this.title});
  

 final  String title;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveLocationCopyWith<_SaveLocation> get copyWith => __$SaveLocationCopyWithImpl<_SaveLocation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveLocation&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title);
}

@override
String toString() {
    return 'ClothDetailEvent.saveLocation(title: $title)';
}


}

/// @nodoc
abstract mixin class _$SaveLocationCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$SaveLocationCopyWith(_SaveLocation value, $Res Function(_SaveLocation) _then) = __$SaveLocationCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$SaveLocationCopyWithImpl<$Res>
    implements _$SaveLocationCopyWith<$Res> {
  __$SaveLocationCopyWithImpl(this._self, this._then);

  final _SaveLocation _self;
  final $Res Function(_SaveLocation) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_SaveLocation(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SaveCloth implements ClothDetailEvent {
  const _SaveCloth();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveCloth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ClothDetailEvent.saveCloth()';
}


}




/// @nodoc


class _ChangeCategories implements ClothDetailEvent {
  const _ChangeCategories({required  List<Category> categories}): _categories = categories;
  

 final  List<Category> _categories;
 List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCategoriesCopyWith<_ChangeCategories> get copyWith => __$ChangeCategoriesCopyWithImpl<_ChangeCategories>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeCategories&&const DeepCollectionEquality().equals(other.categories, _categories));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'ClothDetailEvent.changeCategories(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$ChangeCategoriesCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$ChangeCategoriesCopyWith(_ChangeCategories value, $Res Function(_ChangeCategories) _then) = __$ChangeCategoriesCopyWithImpl;
@useResult
$Res call({
 List<Category> categories
});




}
/// @nodoc
class __$ChangeCategoriesCopyWithImpl<$Res>
    implements _$ChangeCategoriesCopyWith<$Res> {
  __$ChangeCategoriesCopyWithImpl(this._self, this._then);

  final _ChangeCategories _self;
  final $Res Function(_ChangeCategories) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_ChangeCategories(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

/// @nodoc


class _ChangeLocations implements ClothDetailEvent {
  const _ChangeLocations({required  List<Location> locations}): _locations = locations;
  

 final  List<Location> _locations;
 List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeLocationsCopyWith<_ChangeLocations> get copyWith => __$ChangeLocationsCopyWithImpl<_ChangeLocations>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeLocations&&const DeepCollectionEquality().equals(other.locations, _locations));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations));
}

@override
String toString() {
    return 'ClothDetailEvent.changeLocations(locations: $locations)';
}


}

/// @nodoc
abstract mixin class _$ChangeLocationsCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$ChangeLocationsCopyWith(_ChangeLocations value, $Res Function(_ChangeLocations) _then) = __$ChangeLocationsCopyWithImpl;
@useResult
$Res call({
 List<Location> locations
});




}
/// @nodoc
class __$ChangeLocationsCopyWithImpl<$Res>
    implements _$ChangeLocationsCopyWith<$Res> {
  __$ChangeLocationsCopyWithImpl(this._self, this._then);

  final _ChangeLocations _self;
  final $Res Function(_ChangeLocations) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locations = null,}) {
  return _then(_ChangeLocations(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,
  ));
}


}

/// @nodoc


class _TakePhoto implements ClothDetailEvent {
  const _TakePhoto({required this.photo});
  

 final  XFile photo;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TakePhotoCopyWith<_TakePhoto> get copyWith => __$TakePhotoCopyWithImpl<_TakePhoto>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TakePhoto&&(identical(other.photo, photo) || other.photo == photo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,photo);
}

@override
String toString() {
    return 'ClothDetailEvent.takePhoto(photo: $photo)';
}


}

/// @nodoc
abstract mixin class _$TakePhotoCopyWith<$Res> implements $ClothDetailEventCopyWith<$Res> {
  factory _$TakePhotoCopyWith(_TakePhoto value, $Res Function(_TakePhoto) _then) = __$TakePhotoCopyWithImpl;
@useResult
$Res call({
 XFile photo
});




}
/// @nodoc
class __$TakePhotoCopyWithImpl<$Res>
    implements _$TakePhotoCopyWith<$Res> {
  __$TakePhotoCopyWithImpl(this._self, this._then);

  final _TakePhoto _self;
  final $Res Function(_TakePhoto) _then;

/// Create a copy of ClothDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? photo = null,}) {
  return _then(_TakePhoto(
photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as XFile,
  ));
}


}

/// @nodoc
mixin _$ClothDetailState {

 String get pageTitle; String get title; String get comment; Category? get category; Location? get location; List<Category> get categories; List<Location> get locations; bool get isFirstInit; String? get imagePath; XFile? get selectedPhoto;
/// Create a copy of ClothDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClothDetailStateCopyWith<ClothDetailState> get copyWith => _$ClothDetailStateCopyWithImpl<ClothDetailState>(this as ClothDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClothDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClothDetailState&&(identical(other.pageTitle, _this.pageTitle) || other.pageTitle == _this.pageTitle)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.location, _this.location) || other.location == _this.location)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.locations, _this.locations)&&(identical(other.isFirstInit, _this.isFirstInit) || other.isFirstInit == _this.isFirstInit)&&(identical(other.imagePath, _this.imagePath) || other.imagePath == _this.imagePath)&&(identical(other.selectedPhoto, _this.selectedPhoto) || other.selectedPhoto == _this.selectedPhoto));
}


@override
int get hashCode {
  final _this = this as ClothDetailState;
  return Object.hash(runtimeType,_this.pageTitle,_this.title,_this.comment,_this.category,_this.location,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.locations),_this.isFirstInit,_this.imagePath,_this.selectedPhoto);
}

@override
String toString() {
  final _this = this as ClothDetailState;
  return 'ClothDetailState(pageTitle: ${_this.pageTitle}, title: ${_this.title}, comment: ${_this.comment}, category: ${_this.category}, location: ${_this.location}, categories: ${_this.categories}, locations: ${_this.locations}, isFirstInit: ${_this.isFirstInit}, imagePath: ${_this.imagePath}, selectedPhoto: ${_this.selectedPhoto})';
}


}

/// @nodoc
abstract mixin class $ClothDetailStateCopyWith<$Res>  {
  factory $ClothDetailStateCopyWith(ClothDetailState value, $Res Function(ClothDetailState) _then) = _$ClothDetailStateCopyWithImpl;
@useResult
$Res call({
 String pageTitle, String title, String comment, Category? category, Location? location, List<Category> categories, List<Location> locations, bool isFirstInit, String? imagePath, XFile? selectedPhoto
});




}
/// @nodoc
class _$ClothDetailStateCopyWithImpl<$Res>
    implements $ClothDetailStateCopyWith<$Res> {
  _$ClothDetailStateCopyWithImpl(this._self, this._then);

  final ClothDetailState _self;
  final $Res Function(ClothDetailState) _then;

/// Create a copy of ClothDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageTitle = null,Object? title = null,Object? comment = null,Object? category = freezed,Object? location = freezed,Object? categories = null,Object? locations = null,Object? isFirstInit = null,Object? imagePath = freezed,Object? selectedPhoto = freezed,}) {
  return _then(ClothDetailState(
pageTitle: null == pageTitle ? _self.pageTitle : pageTitle // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,isFirstInit: null == isFirstInit ? _self.isFirstInit : isFirstInit // ignore: cast_nullable_to_non_nullable
as bool,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,selectedPhoto: freezed == selectedPhoto ? _self.selectedPhoto : selectedPhoto // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClothDetailState].
extension ClothDetailStatePatterns on ClothDetailState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClothDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClothDetailState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClothDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ClothDetailState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClothDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ClothDetailState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pageTitle,  String title,  String comment,  Category? category,  Location? location,  List<Category> categories,  List<Location> locations,  bool isFirstInit,  String? imagePath,  XFile? selectedPhoto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClothDetailState() when $default != null:
return $default(_that.pageTitle,_that.title,_that.comment,_that.category,_that.location,_that.categories,_that.locations,_that.isFirstInit,_that.imagePath,_that.selectedPhoto);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pageTitle,  String title,  String comment,  Category? category,  Location? location,  List<Category> categories,  List<Location> locations,  bool isFirstInit,  String? imagePath,  XFile? selectedPhoto)  $default,) {final _that = this;
switch (_that) {
case _ClothDetailState():
return $default(_that.pageTitle,_that.title,_that.comment,_that.category,_that.location,_that.categories,_that.locations,_that.isFirstInit,_that.imagePath,_that.selectedPhoto);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pageTitle,  String title,  String comment,  Category? category,  Location? location,  List<Category> categories,  List<Location> locations,  bool isFirstInit,  String? imagePath,  XFile? selectedPhoto)?  $default,) {final _that = this;
switch (_that) {
case _ClothDetailState() when $default != null:
return $default(_that.pageTitle,_that.title,_that.comment,_that.category,_that.location,_that.categories,_that.locations,_that.isFirstInit,_that.imagePath,_that.selectedPhoto);case _:
  return null;

}
}

}

/// @nodoc


class _ClothDetailState extends ClothDetailState {
  const _ClothDetailState({required this.pageTitle, required this.title, required this.comment, required this.category, required this.location, required  List<Category> categories, required  List<Location> locations, required this.isFirstInit, this.imagePath, this.selectedPhoto}): _categories = categories,_locations = locations,super._();
  

@override final  String pageTitle;
@override final  String title;
@override final  String comment;
@override final  Category? category;
@override final  Location? location;
 final  List<Category> _categories;
@override List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Location> _locations;
@override List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

@override final  bool isFirstInit;
@override final  String? imagePath;
@override final  XFile? selectedPhoto;

/// Create a copy of ClothDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClothDetailStateCopyWith<_ClothDetailState> get copyWith => __$ClothDetailStateCopyWithImpl<_ClothDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClothDetailState&&(identical(other.pageTitle, pageTitle) || other.pageTitle == pageTitle)&&(identical(other.title, title) || other.title == title)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.locations, _locations)&&(identical(other.isFirstInit, isFirstInit) || other.isFirstInit == isFirstInit)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&(identical(other.selectedPhoto, selectedPhoto) || other.selectedPhoto == selectedPhoto));
}


@override
int get hashCode {
    return Object.hash(runtimeType,pageTitle,title,comment,category,location,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_locations),isFirstInit,imagePath,selectedPhoto);
}

@override
String toString() {
    return 'ClothDetailState(pageTitle: $pageTitle, title: $title, comment: $comment, category: $category, location: $location, categories: $categories, locations: $locations, isFirstInit: $isFirstInit, imagePath: $imagePath, selectedPhoto: $selectedPhoto)';
}


}

/// @nodoc
abstract mixin class _$ClothDetailStateCopyWith<$Res> implements $ClothDetailStateCopyWith<$Res> {
  factory _$ClothDetailStateCopyWith(_ClothDetailState value, $Res Function(_ClothDetailState) _then) = __$ClothDetailStateCopyWithImpl;
@override @useResult
$Res call({
 String pageTitle, String title, String comment, Category? category, Location? location, List<Category> categories, List<Location> locations, bool isFirstInit, String? imagePath, XFile? selectedPhoto
});




}
/// @nodoc
class __$ClothDetailStateCopyWithImpl<$Res>
    implements _$ClothDetailStateCopyWith<$Res> {
  __$ClothDetailStateCopyWithImpl(this._self, this._then);

  final _ClothDetailState _self;
  final $Res Function(_ClothDetailState) _then;

/// Create a copy of ClothDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageTitle = null,Object? title = null,Object? comment = null,Object? category = freezed,Object? location = freezed,Object? categories = null,Object? locations = null,Object? isFirstInit = null,Object? imagePath = freezed,Object? selectedPhoto = freezed,}) {
  return _then(_ClothDetailState(
pageTitle: null == pageTitle ? _self.pageTitle : pageTitle // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,isFirstInit: null == isFirstInit ? _self.isFirstInit : isFirstInit // ignore: cast_nullable_to_non_nullable
as bool,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,selectedPhoto: freezed == selectedPhoto ? _self.selectedPhoto : selectedPhoto // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
