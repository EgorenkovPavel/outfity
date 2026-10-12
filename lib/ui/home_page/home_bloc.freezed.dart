// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CategoryFiltersChanged value)?  categoryFiltersChanged,TResult Function( _LocationFiltersChanged value)?  locationFiltersChanged,TResult Function( _FiltersCleared value)?  filtersCleared,TResult Function( _ClothsChanged value)?  clothsChanged,TResult Function( _CategoriesChanged value)?  categoriesChanged,TResult Function( _LocationsChanged value)?  locationsChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryFiltersChanged() when categoryFiltersChanged != null:
return categoryFiltersChanged(_that);case _LocationFiltersChanged() when locationFiltersChanged != null:
return locationFiltersChanged(_that);case _FiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _ClothsChanged() when clothsChanged != null:
return clothsChanged(_that);case _CategoriesChanged() when categoriesChanged != null:
return categoriesChanged(_that);case _LocationsChanged() when locationsChanged != null:
return locationsChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CategoryFiltersChanged value)  categoryFiltersChanged,required TResult Function( _LocationFiltersChanged value)  locationFiltersChanged,required TResult Function( _FiltersCleared value)  filtersCleared,required TResult Function( _ClothsChanged value)  clothsChanged,required TResult Function( _CategoriesChanged value)  categoriesChanged,required TResult Function( _LocationsChanged value)  locationsChanged,}){
final _that = this;
switch (_that) {
case _CategoryFiltersChanged():
return categoryFiltersChanged(_that);case _LocationFiltersChanged():
return locationFiltersChanged(_that);case _FiltersCleared():
return filtersCleared(_that);case _ClothsChanged():
return clothsChanged(_that);case _CategoriesChanged():
return categoriesChanged(_that);case _LocationsChanged():
return locationsChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CategoryFiltersChanged value)?  categoryFiltersChanged,TResult? Function( _LocationFiltersChanged value)?  locationFiltersChanged,TResult? Function( _FiltersCleared value)?  filtersCleared,TResult? Function( _ClothsChanged value)?  clothsChanged,TResult? Function( _CategoriesChanged value)?  categoriesChanged,TResult? Function( _LocationsChanged value)?  locationsChanged,}){
final _that = this;
switch (_that) {
case _CategoryFiltersChanged() when categoryFiltersChanged != null:
return categoryFiltersChanged(_that);case _LocationFiltersChanged() when locationFiltersChanged != null:
return locationFiltersChanged(_that);case _FiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _ClothsChanged() when clothsChanged != null:
return clothsChanged(_that);case _CategoriesChanged() when categoriesChanged != null:
return categoriesChanged(_that);case _LocationsChanged() when locationsChanged != null:
return locationsChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<int> categoryIds)?  categoryFiltersChanged,TResult Function( List<int> locationIds)?  locationFiltersChanged,TResult Function()?  filtersCleared,TResult Function( List<Cloth> clothes)?  clothsChanged,TResult Function( List<Category> categories)?  categoriesChanged,TResult Function( List<Location> locations)?  locationsChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryFiltersChanged() when categoryFiltersChanged != null:
return categoryFiltersChanged(_that.categoryIds);case _LocationFiltersChanged() when locationFiltersChanged != null:
return locationFiltersChanged(_that.locationIds);case _FiltersCleared() when filtersCleared != null:
return filtersCleared();case _ClothsChanged() when clothsChanged != null:
return clothsChanged(_that.clothes);case _CategoriesChanged() when categoriesChanged != null:
return categoriesChanged(_that.categories);case _LocationsChanged() when locationsChanged != null:
return locationsChanged(_that.locations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<int> categoryIds)  categoryFiltersChanged,required TResult Function( List<int> locationIds)  locationFiltersChanged,required TResult Function()  filtersCleared,required TResult Function( List<Cloth> clothes)  clothsChanged,required TResult Function( List<Category> categories)  categoriesChanged,required TResult Function( List<Location> locations)  locationsChanged,}) {final _that = this;
switch (_that) {
case _CategoryFiltersChanged():
return categoryFiltersChanged(_that.categoryIds);case _LocationFiltersChanged():
return locationFiltersChanged(_that.locationIds);case _FiltersCleared():
return filtersCleared();case _ClothsChanged():
return clothsChanged(_that.clothes);case _CategoriesChanged():
return categoriesChanged(_that.categories);case _LocationsChanged():
return locationsChanged(_that.locations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<int> categoryIds)?  categoryFiltersChanged,TResult? Function( List<int> locationIds)?  locationFiltersChanged,TResult? Function()?  filtersCleared,TResult? Function( List<Cloth> clothes)?  clothsChanged,TResult? Function( List<Category> categories)?  categoriesChanged,TResult? Function( List<Location> locations)?  locationsChanged,}) {final _that = this;
switch (_that) {
case _CategoryFiltersChanged() when categoryFiltersChanged != null:
return categoryFiltersChanged(_that.categoryIds);case _LocationFiltersChanged() when locationFiltersChanged != null:
return locationFiltersChanged(_that.locationIds);case _FiltersCleared() when filtersCleared != null:
return filtersCleared();case _ClothsChanged() when clothsChanged != null:
return clothsChanged(_that.clothes);case _CategoriesChanged() when categoriesChanged != null:
return categoriesChanged(_that.categories);case _LocationsChanged() when locationsChanged != null:
return locationsChanged(_that.locations);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryFiltersChanged implements HomeEvent {
  const _CategoryFiltersChanged( List<int> categoryIds): _categoryIds = categoryIds;
  

 final  List<int> _categoryIds;
 List<int> get categoryIds {
  if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryIds);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryFiltersChangedCopyWith<_CategoryFiltersChanged> get copyWith => __$CategoryFiltersChangedCopyWithImpl<_CategoryFiltersChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryFiltersChanged&&const DeepCollectionEquality().equals(other.categoryIds, _categoryIds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoryIds));
}

@override
String toString() {
    return 'HomeEvent.categoryFiltersChanged(categoryIds: $categoryIds)';
}


}

/// @nodoc
abstract mixin class _$CategoryFiltersChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$CategoryFiltersChangedCopyWith(_CategoryFiltersChanged value, $Res Function(_CategoryFiltersChanged) _then) = __$CategoryFiltersChangedCopyWithImpl;
@useResult
$Res call({
 List<int> categoryIds
});




}
/// @nodoc
class __$CategoryFiltersChangedCopyWithImpl<$Res>
    implements _$CategoryFiltersChangedCopyWith<$Res> {
  __$CategoryFiltersChangedCopyWithImpl(this._self, this._then);

  final _CategoryFiltersChanged _self;
  final $Res Function(_CategoryFiltersChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryIds = null,}) {
  return _then(_CategoryFiltersChanged(
null == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _LocationFiltersChanged implements HomeEvent {
  const _LocationFiltersChanged( List<int> locationIds): _locationIds = locationIds;
  

 final  List<int> _locationIds;
 List<int> get locationIds {
  if (_locationIds is EqualUnmodifiableListView) return _locationIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locationIds);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationFiltersChangedCopyWith<_LocationFiltersChanged> get copyWith => __$LocationFiltersChangedCopyWithImpl<_LocationFiltersChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationFiltersChanged&&const DeepCollectionEquality().equals(other.locationIds, _locationIds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_locationIds));
}

@override
String toString() {
    return 'HomeEvent.locationFiltersChanged(locationIds: $locationIds)';
}


}

/// @nodoc
abstract mixin class _$LocationFiltersChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$LocationFiltersChangedCopyWith(_LocationFiltersChanged value, $Res Function(_LocationFiltersChanged) _then) = __$LocationFiltersChangedCopyWithImpl;
@useResult
$Res call({
 List<int> locationIds
});




}
/// @nodoc
class __$LocationFiltersChangedCopyWithImpl<$Res>
    implements _$LocationFiltersChangedCopyWith<$Res> {
  __$LocationFiltersChangedCopyWithImpl(this._self, this._then);

  final _LocationFiltersChanged _self;
  final $Res Function(_LocationFiltersChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationIds = null,}) {
  return _then(_LocationFiltersChanged(
null == locationIds ? _self._locationIds : locationIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc


class _FiltersCleared implements HomeEvent {
  const _FiltersCleared();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiltersCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'HomeEvent.filtersCleared()';
}


}




/// @nodoc


class _ClothsChanged implements HomeEvent {
  const _ClothsChanged( List<Cloth> clothes): _clothes = clothes;
  

 final  List<Cloth> _clothes;
 List<Cloth> get clothes {
  if (_clothes is EqualUnmodifiableListView) return _clothes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clothes);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClothsChangedCopyWith<_ClothsChanged> get copyWith => __$ClothsChangedCopyWithImpl<_ClothsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClothsChanged&&const DeepCollectionEquality().equals(other.clothes, _clothes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_clothes));
}

@override
String toString() {
    return 'HomeEvent.clothsChanged(clothes: $clothes)';
}


}

/// @nodoc
abstract mixin class _$ClothsChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$ClothsChangedCopyWith(_ClothsChanged value, $Res Function(_ClothsChanged) _then) = __$ClothsChangedCopyWithImpl;
@useResult
$Res call({
 List<Cloth> clothes
});




}
/// @nodoc
class __$ClothsChangedCopyWithImpl<$Res>
    implements _$ClothsChangedCopyWith<$Res> {
  __$ClothsChangedCopyWithImpl(this._self, this._then);

  final _ClothsChanged _self;
  final $Res Function(_ClothsChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? clothes = null,}) {
  return _then(_ClothsChanged(
null == clothes ? _self._clothes : clothes // ignore: cast_nullable_to_non_nullable
as List<Cloth>,
  ));
}


}

/// @nodoc


class _CategoriesChanged implements HomeEvent {
  const _CategoriesChanged( List<Category> categories): _categories = categories;
  

 final  List<Category> _categories;
 List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesChangedCopyWith<_CategoriesChanged> get copyWith => __$CategoriesChangedCopyWithImpl<_CategoriesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoriesChanged&&const DeepCollectionEquality().equals(other.categories, _categories));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'HomeEvent.categoriesChanged(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$CategoriesChangedCopyWith(_CategoriesChanged value, $Res Function(_CategoriesChanged) _then) = __$CategoriesChangedCopyWithImpl;
@useResult
$Res call({
 List<Category> categories
});




}
/// @nodoc
class __$CategoriesChangedCopyWithImpl<$Res>
    implements _$CategoriesChangedCopyWith<$Res> {
  __$CategoriesChangedCopyWithImpl(this._self, this._then);

  final _CategoriesChanged _self;
  final $Res Function(_CategoriesChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_CategoriesChanged(
null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

/// @nodoc


class _LocationsChanged implements HomeEvent {
  const _LocationsChanged( List<Location> locations): _locations = locations;
  

 final  List<Location> _locations;
 List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationsChangedCopyWith<_LocationsChanged> get copyWith => __$LocationsChangedCopyWithImpl<_LocationsChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationsChanged&&const DeepCollectionEquality().equals(other.locations, _locations));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations));
}

@override
String toString() {
    return 'HomeEvent.locationsChanged(locations: $locations)';
}


}

/// @nodoc
abstract mixin class _$LocationsChangedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$LocationsChangedCopyWith(_LocationsChanged value, $Res Function(_LocationsChanged) _then) = __$LocationsChangedCopyWithImpl;
@useResult
$Res call({
 List<Location> locations
});




}
/// @nodoc
class __$LocationsChangedCopyWithImpl<$Res>
    implements _$LocationsChangedCopyWith<$Res> {
  __$LocationsChangedCopyWithImpl(this._self, this._then);

  final _LocationsChanged _self;
  final $Res Function(_LocationsChanged) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locations = null,}) {
  return _then(_LocationsChanged(
null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 List<Cloth> get clothes; List<Cloth> get allClothes; List<Category> get categories; List<Location> get locations; List<int> get selectedCategoryIds; List<int> get selectedLocationIds;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.clothes, _this.clothes)&&const DeepCollectionEquality().equals(other.allClothes, _this.allClothes)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.locations, _this.locations)&&const DeepCollectionEquality().equals(other.selectedCategoryIds, _this.selectedCategoryIds)&&const DeepCollectionEquality().equals(other.selectedLocationIds, _this.selectedLocationIds));
}


@override
int get hashCode {
  final _this = this as HomeState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.clothes),const DeepCollectionEquality().hash(_this.allClothes),const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.locations),const DeepCollectionEquality().hash(_this.selectedCategoryIds),const DeepCollectionEquality().hash(_this.selectedLocationIds));
}

@override
String toString() {
  final _this = this as HomeState;
  return 'HomeState(clothes: ${_this.clothes}, allClothes: ${_this.allClothes}, categories: ${_this.categories}, locations: ${_this.locations}, selectedCategoryIds: ${_this.selectedCategoryIds}, selectedLocationIds: ${_this.selectedLocationIds})';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<Cloth> clothes, List<Cloth> allClothes, List<Category> categories, List<Location> locations, List<int> selectedCategoryIds, List<int> selectedLocationIds
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clothes = null,Object? allClothes = null,Object? categories = null,Object? locations = null,Object? selectedCategoryIds = null,Object? selectedLocationIds = null,}) {
  return _then(HomeState(
clothes: null == clothes ? _self.clothes : clothes // ignore: cast_nullable_to_non_nullable
as List<Cloth>,allClothes: null == allClothes ? _self.allClothes : allClothes // ignore: cast_nullable_to_non_nullable
as List<Cloth>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,selectedCategoryIds: null == selectedCategoryIds ? _self.selectedCategoryIds : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedLocationIds: null == selectedLocationIds ? _self.selectedLocationIds : selectedLocationIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Cloth> clothes,  List<Cloth> allClothes,  List<Category> categories,  List<Location> locations,  List<int> selectedCategoryIds,  List<int> selectedLocationIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.clothes,_that.allClothes,_that.categories,_that.locations,_that.selectedCategoryIds,_that.selectedLocationIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Cloth> clothes,  List<Cloth> allClothes,  List<Category> categories,  List<Location> locations,  List<int> selectedCategoryIds,  List<int> selectedLocationIds)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.clothes,_that.allClothes,_that.categories,_that.locations,_that.selectedCategoryIds,_that.selectedLocationIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Cloth> clothes,  List<Cloth> allClothes,  List<Category> categories,  List<Location> locations,  List<int> selectedCategoryIds,  List<int> selectedLocationIds)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.clothes,_that.allClothes,_that.categories,_that.locations,_that.selectedCategoryIds,_that.selectedLocationIds);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required  List<Cloth> clothes, required  List<Cloth> allClothes, required  List<Category> categories, required  List<Location> locations, required  List<int> selectedCategoryIds, required  List<int> selectedLocationIds}): _clothes = clothes,_allClothes = allClothes,_categories = categories,_locations = locations,_selectedCategoryIds = selectedCategoryIds,_selectedLocationIds = selectedLocationIds;
  

 final  List<Cloth> _clothes;
@override List<Cloth> get clothes {
  if (_clothes is EqualUnmodifiableListView) return _clothes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clothes);
}

 final  List<Cloth> _allClothes;
@override List<Cloth> get allClothes {
  if (_allClothes is EqualUnmodifiableListView) return _allClothes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allClothes);
}

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

 final  List<int> _selectedCategoryIds;
@override List<int> get selectedCategoryIds {
  if (_selectedCategoryIds is EqualUnmodifiableListView) return _selectedCategoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedCategoryIds);
}

 final  List<int> _selectedLocationIds;
@override List<int> get selectedLocationIds {
  if (_selectedLocationIds is EqualUnmodifiableListView) return _selectedLocationIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedLocationIds);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other.clothes, _clothes)&&const DeepCollectionEquality().equals(other.allClothes, _allClothes)&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.locations, _locations)&&const DeepCollectionEquality().equals(other.selectedCategoryIds, _selectedCategoryIds)&&const DeepCollectionEquality().equals(other.selectedLocationIds, _selectedLocationIds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_clothes),const DeepCollectionEquality().hash(_allClothes),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_selectedCategoryIds),const DeepCollectionEquality().hash(_selectedLocationIds));
}

@override
String toString() {
    return 'HomeState(clothes: $clothes, allClothes: $allClothes, categories: $categories, locations: $locations, selectedCategoryIds: $selectedCategoryIds, selectedLocationIds: $selectedLocationIds)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<Cloth> clothes, List<Cloth> allClothes, List<Category> categories, List<Location> locations, List<int> selectedCategoryIds, List<int> selectedLocationIds
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clothes = null,Object? allClothes = null,Object? categories = null,Object? locations = null,Object? selectedCategoryIds = null,Object? selectedLocationIds = null,}) {
  return _then(_HomeState(
clothes: null == clothes ? _self._clothes : clothes // ignore: cast_nullable_to_non_nullable
as List<Cloth>,allClothes: null == allClothes ? _self._allClothes : allClothes // ignore: cast_nullable_to_non_nullable
as List<Cloth>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,selectedCategoryIds: null == selectedCategoryIds ? _self._selectedCategoryIds : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedLocationIds: null == selectedLocationIds ? _self._selectedLocationIds : selectedLocationIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
