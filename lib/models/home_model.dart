class HomeData {
  final int success;
  final String message;
  final List<BannerItem> banner1;
  final List<BannerItem> banner2;
  final List<BannerItem> banner3;
  final List<BannerItem> banner4;
  final List<BannerItem> banner5;
  final List<Product> recentviews;
  final List<Product> ourProducts;
  final List<Product> suggestedProducts;
  final List<Product> bestSeller;
  final List<Product> flashSail;
  final List<Product> newarrivals;
  final List<CategoryWrapper> categories;
  final List<FeaturedBrand> featuredbrands;
  final int cartcount;
  final int? wishlistcount;
  final Currency currency;
  final int notificationCount;

  HomeData({
    required this.success,
    required this.message,
    required this.banner1,
    required this.banner2,
    required this.banner3,
    required this.banner4,
    required this.banner5,
    required this.recentviews,
    required this.ourProducts,
    required this.suggestedProducts,
    required this.bestSeller,
    required this.flashSail,
    required this.newarrivals,
    required this.categories,
    required this.featuredbrands,
    required this.cartcount,
    required this.wishlistcount,
    required this.currency,
    required this.notificationCount,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return HomeData(
      success: json['success'] ?? 0,
      message: json['message'] ?? '',
      banner1: (json['banner1'] as List?)?.map((e) => BannerItem.fromJson(e)).toList() ?? [],
      banner2: (json['banner2'] as List?)?.map((e) => BannerItem.fromJson(e)).toList() ?? [],
      banner3: (json['banner3'] as List?)?.map((e) => BannerItem.fromJson(e)).toList() ?? [],
      banner4: (json['banner4'] as List?)?.map((e) => BannerItem.fromJson(e)).toList() ?? [],
      banner5: (json['banner5'] as List?)?.map((e) => BannerItem.fromJson(e)).toList() ?? [],
      recentviews: (json['recentviews'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      ourProducts: (json['our_products'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      suggestedProducts: (json['suggested_products'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      bestSeller: (json['best_seller'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      flashSail: (json['flash_sail'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      newarrivals: (json['newarrivals'] as List?)?.map((e) => Product.fromJson(e)).toList() ?? [],
      categories: (json['categories'] as List?)?.map((e) => CategoryWrapper.fromJson(e)).toList() ?? [],
      featuredbrands: (json['featuredbrands'] as List?)?.map((e) => FeaturedBrand.fromJson(e)).toList() ?? [],
      cartcount: json['cartcount'] ?? 0,
      wishlistcount: json['wishlistcount'],
      currency: Currency.fromJson(json['currency'] ?? {}),
      notificationCount: json['notification_count'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'banner1': banner1.map((e) => e.toJson()).toList(),
      'banner2': banner2.map((e) => e.toJson()).toList(),
      'banner3': banner3.map((e) => e.toJson()).toList(),
      'banner4': banner4.map((e) => e.toJson()).toList(),
      'banner5': banner5.map((e) => e.toJson()).toList(),
      'recentviews': recentviews.map((e) => e.toJson()).toList(),
      'our_products': ourProducts.map((e) => e.toJson()).toList(),
      'suggested_products': suggestedProducts.map((e) => e.toJson()).toList(),
      'best_seller': bestSeller.map((e) => e.toJson()).toList(),
      'flash_sail': flashSail.map((e) => e.toJson()).toList(),
      'newarrivals': newarrivals.map((e) => e.toJson()).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
      'featuredbrands': featuredbrands.map((e) => e.toJson()).toList(),
      'cartcount': cartcount,
      'wishlistcount': wishlistcount,
      'currency': currency.toJson(),
      'notification_count': notificationCount,
    };
  }
}

class BannerItem {
  final int id;
  final int linkType;
  final String linkValue;
  final String image;
  final String? video;
  final String title;
  final String subTitle;
  final String buttonText;
  final String? logo;

  BannerItem({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    this.video,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    this.logo,
  });

  factory BannerItem.fromJson(Map<String, dynamic> json) {
    return BannerItem(
      id: json['id'] ?? 0,
      linkType: json['link_type'] ?? 0,
      linkValue: json['link_value'] ?? '',
      image: json['image'] ?? '',
      video: json['video'],
      title: json['title'] ?? '',
      subTitle: json['sub_title'] ?? '',
      buttonText: json['button_text'] ?? '',
      logo: json['logo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'link_type': linkType,
      'link_value': linkValue,
      'image': image,
      'video': video,
      'title': title,
      'sub_title': subTitle,
      'button_text': buttonText,
      'logo': logo,
    };
  }
}

class Product {
  final int productId;
  final String slug;
  final String code;
  final String homeImg;
  final String name;
  final String? isGender;
  final String category;
  final String store;
  final String storeslug;
  final String manufacturer;
  final String symbolLeft;
  final String symbolRight;
  final String stock;
  final int minQty;
  final String oldprice;
  final String price;
  final String quantity;
  final String image;
  final int cart;
  final int wishlist;

  Product({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    this.isGender,
    required this.category,
    required this.store,
    required this.storeslug,
    required this.manufacturer,
    required this.symbolLeft,
    required this.symbolRight,
    required this.stock,
    required this.minQty,
    required this.oldprice,
    required this.price,
    required this.quantity,
    required this.image,
    required this.cart,
    required this.wishlist,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'] ?? 0,
      slug: json['slug'] ?? '',
      code: json['code'] ?? '',
      homeImg: json['home_img'] ?? '',
      name: json['name'] ?? '',
      isGender: json['is_gender'],
      category: json['category'] ?? '',
      store: json['store'] ?? '',
      storeslug: json['storeslug'] ?? '',
      manufacturer: json['manufacturer'] ?? '',
      symbolLeft: json['symbol_left'] ?? '',
      symbolRight: json['symbol_right'] ?? '',
      stock: json['stock']?.toString() ?? '0',
      minQty: json['min_qty'] ?? 0,
      oldprice: json['oldprice']?.toString() ?? '0',
      price: json['price']?.toString() ?? '0',
      quantity: json['quantity']?.toString() ?? '0',
      image: json['image'] ?? '',
      cart: json['cart'] ?? 0,
      wishlist: json['wishlist'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'slug': slug,
      'code': code,
      'home_img': homeImg,
      'name': name,
      'is_gender': isGender,
      'category': category,
      'store': store,
      'storeslug': storeslug,
      'manufacturer': manufacturer,
      'symbol_left': symbolLeft,
      'symbol_right': symbolRight,
      'stock': stock,
      'min_qty': minQty,
      'oldprice': oldprice,
      'price': price,
      'quantity': quantity,
      'image': image,
      'cart': cart,
      'wishlist': wishlist,
    };
  }
}

class CategoryWrapper {
  final Category category;
  final List<dynamic> subcategory;

  CategoryWrapper({
    required this.category,
    required this.subcategory,
  });

  factory CategoryWrapper.fromJson(Map<String, dynamic> json) {
    return CategoryWrapper(
      category: Category.fromJson(json['category'] ?? {}),
      subcategory: json['subcategory'] as List? ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category.toJson(),
      'subcategory': subcategory,
    };
  }
}

class Category {
  final int id;
  final String slug;
  final String image;
  final String name;
  final String description;

  Category({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    required this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 0,
      slug: json['slug'] ?? '',
      image: json['image'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'slug': slug,
      'image': image,
      'name': name,
      'description': description,
    };
  }
}

class FeaturedBrand {
  final int id;
  final String image;
  final String slug;
  final String name;

  FeaturedBrand({
    required this.id,
    required this.image,
    required this.slug,
    required this.name,
  });

  factory FeaturedBrand.fromJson(Map<String, dynamic> json) {
    return FeaturedBrand(
      id: json['id'] ?? 0,
      image: json['image'] ?? '',
      slug: json['slug'] ?? '',
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'slug': slug,
      'name': name,
    };
  }
}

class Currency {
  final String name;
  final String code;
  final String symbolLeft;
  final String symbolRight;
  final String value;
  final String currency;
  final int isDefault;
  final int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.currency,
    required this.isDefault,
    required this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      name: json['name'] ?? '',
      code: json['code'] ?? '',
      symbolLeft: json['symbol_left'] ?? '',
      symbolRight: json['symbol_right'] ?? '',
      value: json['value']?.toString() ?? '0',
      currency: json['currency'] ?? '',
      isDefault: json['is_default'] ?? 0,
      status: json['status'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'symbol_left': symbolLeft,
      'symbol_right': symbolRight,
      'value': value,
      'currency': currency,
      'is_default': isDefault,
      'status': status,
    };
  }
}