// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operations.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFetchShopListData> _$gFetchShopListDataSerializer =
    new _$GFetchShopListDataSerializer();
Serializer<GFetchShopListData_shops> _$gFetchShopListDataShopsSerializer =
    new _$GFetchShopListData_shopsSerializer();

class _$GFetchShopListDataSerializer
    implements StructuredSerializer<GFetchShopListData> {
  @override
  final Iterable<Type> types = const [GFetchShopListData, _$GFetchShopListData];
  @override
  final String wireName = 'GFetchShopListData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchShopListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'shops',
      serializers.serialize(object.shops,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GFetchShopListData_shops)])),
    ];

    return result;
  }

  @override
  GFetchShopListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchShopListDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shops':
          result.shops.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFetchShopListData_shops)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchShopListData_shopsSerializer
    implements StructuredSerializer<GFetchShopListData_shops> {
  @override
  final Iterable<Type> types = const [
    GFetchShopListData_shops,
    _$GFetchShopListData_shops
  ];
  @override
  final String wireName = 'GFetchShopListData_shops';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFetchShopListData_shops object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.open;
    if (value != null) {
      result
        ..add('open')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.close;
    if (value != null) {
      result
        ..add('close')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parking;
    if (value != null) {
      result
        ..add('parking')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wifi;
    if (value != null) {
      result
        ..add('wifi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFetchShopListData_shops deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFetchShopListData_shopsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'close':
          result.close = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parking':
          result.parking = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wifi':
          result.wifi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFetchShopListData extends GFetchShopListData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFetchShopListData_shops> shops;

  factory _$GFetchShopListData(
          [void Function(GFetchShopListDataBuilder)? updates]) =>
      (new GFetchShopListDataBuilder()..update(updates)).build();

  _$GFetchShopListData._({required this.G__typename, required this.shops})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchShopListData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(shops, 'GFetchShopListData', 'shops');
  }

  @override
  GFetchShopListData rebuild(
          void Function(GFetchShopListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchShopListDataBuilder toBuilder() =>
      new GFetchShopListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchShopListData &&
        G__typename == other.G__typename &&
        shops == other.shops;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), shops.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchShopListData')
          ..add('G__typename', G__typename)
          ..add('shops', shops))
        .toString();
  }
}

class GFetchShopListDataBuilder
    implements Builder<GFetchShopListData, GFetchShopListDataBuilder> {
  _$GFetchShopListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFetchShopListData_shops>? _shops;
  ListBuilder<GFetchShopListData_shops> get shops =>
      _$this._shops ??= new ListBuilder<GFetchShopListData_shops>();
  set shops(ListBuilder<GFetchShopListData_shops>? shops) =>
      _$this._shops = shops;

  GFetchShopListDataBuilder() {
    GFetchShopListData._initializeBuilder(this);
  }

  GFetchShopListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _shops = $v.shops.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchShopListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchShopListData;
  }

  @override
  void update(void Function(GFetchShopListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchShopListData build() {
    _$GFetchShopListData _$result;
    try {
      _$result = _$v ??
          new _$GFetchShopListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFetchShopListData', 'G__typename'),
              shops: shops.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'shops';
        shops.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFetchShopListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFetchShopListData_shops extends GFetchShopListData_shops {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final String? open;
  @override
  final String? close;
  @override
  final String? parking;
  @override
  final String? photo;
  @override
  final String? url;
  @override
  final String? wifi;

  factory _$GFetchShopListData_shops(
          [void Function(GFetchShopListData_shopsBuilder)? updates]) =>
      (new GFetchShopListData_shopsBuilder()..update(updates)).build();

  _$GFetchShopListData_shops._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description,
      this.address,
      this.open,
      this.close,
      this.parking,
      this.photo,
      this.url,
      this.wifi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFetchShopListData_shops', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFetchShopListData_shops', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GFetchShopListData_shops', 'name');
  }

  @override
  GFetchShopListData_shops rebuild(
          void Function(GFetchShopListData_shopsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFetchShopListData_shopsBuilder toBuilder() =>
      new GFetchShopListData_shopsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFetchShopListData_shops &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        address == other.address &&
        open == other.open &&
        close == other.close &&
        parking == other.parking &&
        photo == other.photo &&
        url == other.url &&
        wifi == other.wifi;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, G__typename.hashCode),
                                            id.hashCode),
                                        name.hashCode),
                                    description.hashCode),
                                address.hashCode),
                            open.hashCode),
                        close.hashCode),
                    parking.hashCode),
                photo.hashCode),
            url.hashCode),
        wifi.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFetchShopListData_shops')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('address', address)
          ..add('open', open)
          ..add('close', close)
          ..add('parking', parking)
          ..add('photo', photo)
          ..add('url', url)
          ..add('wifi', wifi))
        .toString();
  }
}

class GFetchShopListData_shopsBuilder
    implements
        Builder<GFetchShopListData_shops, GFetchShopListData_shopsBuilder> {
  _$GFetchShopListData_shops? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _open;
  String? get open => _$this._open;
  set open(String? open) => _$this._open = open;

  String? _close;
  String? get close => _$this._close;
  set close(String? close) => _$this._close = close;

  String? _parking;
  String? get parking => _$this._parking;
  set parking(String? parking) => _$this._parking = parking;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _wifi;
  String? get wifi => _$this._wifi;
  set wifi(String? wifi) => _$this._wifi = wifi;

  GFetchShopListData_shopsBuilder() {
    GFetchShopListData_shops._initializeBuilder(this);
  }

  GFetchShopListData_shopsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _address = $v.address;
      _open = $v.open;
      _close = $v.close;
      _parking = $v.parking;
      _photo = $v.photo;
      _url = $v.url;
      _wifi = $v.wifi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFetchShopListData_shops other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFetchShopListData_shops;
  }

  @override
  void update(void Function(GFetchShopListData_shopsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFetchShopListData_shops build() {
    final _$result = _$v ??
        new _$GFetchShopListData_shops._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFetchShopListData_shops', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFetchShopListData_shops', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GFetchShopListData_shops', 'name'),
            description: description,
            address: address,
            open: open,
            close: close,
            parking: parking,
            photo: photo,
            url: url,
            wifi: wifi);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
