/*
import '../Helper/String.dart';
import 'Section_Model.dart';

class SliderImages {
  String? id;
  String? style;
  String? offerIds;
  String? dateAdded;
  List<OfferImages>? offerImages;

  SliderImages(
      {this.id, this.style, this.offerIds, this.dateAdded, this.offerImages});

  factory SliderImages.fromJson(Map<String, dynamic> parsedJson) {
    List<OfferImages> offerList = (parsedJson[OFFER_IMAGES] as List)
        .map((data) => OfferImages.fromJson(data))
        .toList();

    return SliderImages(
        id: parsedJson[ID],
        style: parsedJson[STYLE],
        offerIds: parsedJson[OFFER_IDS],
        dateAdded: parsedJson[DATE_ADDED],
        offerImages: offerList);
  }
}

class OfferImages {
  String? id;
  String? type;
  String? typeId;
  String? minDiscount;
  String? maxDiscount;
  String? image;
  String? dateAdded;
  List<Data>? data;

  // OfferCategoryChildrenModel? categoryData;

  OfferImages({
    this.id,
    this.type,
    this.typeId,
    this.minDiscount,
    this.maxDiscount,
    this.image,
    this.dateAdded,
    this.data,
  });

  factory OfferImages.fromJson(Map<String, dynamic> parsedJson) {


    return OfferImages(
        id: parsedJson[ID],
        type: parsedJson[TYPE],
        typeId: parsedJson[TYPE_ID],
        minDiscount: parsedJson[MIN_DISC],
        maxDiscount: parsedJson[MAX_DISC],
        image: parsedJson[IMAGE],
        dateAdded: parsedJson[DATE_ADDED],
        data: (parsedJson["data"] as List)
            .map((data) => Data.fromJson(data))
            .toList()
        //  data: parsedJson[TYPE] == "categories"?catData!:product!,
        );
  }
}

class OfferCategoryChildrenModel {
  String? id;
  String? name;
  String? parentId;
  String? banner;
  String? text;
  String? image;
  List<OfferCategoryChildrenModel>? children;

  OfferCategoryChildrenModel({
    this.id,
    this.name,
    this.parentId,
    this.banner,
    this.text,
    this.image,
    this.children,
  });

  factory OfferCategoryChildrenModel.fromJson(Map<String, dynamic> parsedJson) {
    List<OfferCategoryChildrenModel> childrenList = [];
    if (parsedJson['children'] != null) {
      childrenList = (parsedJson["children"] as List)
          .map((data) => OfferCategoryChildrenModel.fromJson(data))
          .toList();
    } else {
      childrenList = [];
    }

    return OfferCategoryChildrenModel(
      id: parsedJson[ID],
      name: parsedJson[NAME],
      parentId: parsedJson[PARENT_ID],
      banner: parsedJson[BANNER],
      text: parsedJson[TEXT],
      image: parsedJson[IMAGE],
      children: childrenList,
    );
  }
}

class Data {
  String? id;
  String? name;
  String? parentId;
  String? slug;
  String? image;
  String? banner;
  String? rowOrder;
  String? status;
  String? clicks;
  List<OfferCategoryChildrenModel>? children;
  String? text;

//  List<String>? state;
  String? icon;
  int? level;

//  int? total;
  String? productId;
  Null? attributeValueIds;
  Null? attributeSet;
  String? price;
  String? specialPrice;
  Null? sku;
  String? stock;
  Null? images;
  String? availability;
  String? dateAdded;
  String? calDiscountPercentage;
  String? sales;
  String? stockType;
  String? isPricesInclusiveTax;
  String? type;
  String? attrValueIds;
  String? categoryId;
  String? shortDescription;
  String? description;
  String? isOnSale;
  String? saleDiscount;
  String? saleStartDate;
  String? saleEndDate;
  String? totalAllowedQuantity;
  String? deliverableType;
  String? isAttachmentRequired;
  String? productIdentity;
  String? deliverableZipcodes;
  String? minimumOrderQuantity;
  String? quantityStepSize;
  String? codAllowed;
  String? rating;
  String? noOfRatings;
  String? isReturnable;
  String? isCancelable;
  String? cancelableTill;
  String? indicator;
  List<String>? otherImages;
  String? videoType;
  String? video;
  List<String>? tags;
  String? warrantyPeriod;
  String? guaranteePeriod;
  String? brand;
  String? madeIn;
  String? categoryName;
  String? taxPercentage;
  String? taxId;
  List<ReviewImg>? reviewImages;
  List<Attribute>? attributes;
  List<Product_Varient>? variants;
  String? relativePath;
  String? videoRelativePath;
  String? serverTime;
  int? saleRemainingTime;
  String? deliverableZipcodesIds;
  bool? isDeliverable;
  bool? isPurchased;
  String? isFavorite;
  String? imageMd;
  String? imageSm;

  Data({
    this.id,
    this.name,
    this.parentId,
    this.slug,
    this.image,
    this.banner,
    this.rowOrder,
    this.status,
    this.clicks,
    this.children,
    this.text,
    // this.state,
    this.icon,
    this.level,
//    this.total,
    this.productId,
    this.attributeValueIds,
    this.attributeSet,
    this.price,
    this.specialPrice,
    this.sku,
    this.stock,
    this.images,
    this.availability,
    this.dateAdded,
    this.calDiscountPercentage,
    this.sales,
    this.stockType,
    this.isPricesInclusiveTax,
    this.type,
    this.attrValueIds,
    this.categoryId,
    this.shortDescription,
    this.description,
    this.isOnSale,
    this.saleDiscount,
    this.saleStartDate,
    this.saleEndDate,
    this.totalAllowedQuantity,
    this.deliverableType,
    this.isAttachmentRequired,
    this.productIdentity,
    this.deliverableZipcodes,
    this.minimumOrderQuantity,
    this.quantityStepSize,
    this.codAllowed,
    this.rating,
    this.noOfRatings,
    this.isReturnable,
    this.isCancelable,
    this.cancelableTill,
    this.indicator,
    this.otherImages,
    this.videoType,
    this.video,
    this.tags,
    this.warrantyPeriod,
    this.guaranteePeriod,
    this.brand,
    this.madeIn,
    this.categoryName,
    this.taxPercentage,
    this.taxId,
    this.reviewImages,
    this.attributes,
    this.variants,
    this.relativePath,
    this.videoRelativePath,
    this.serverTime,
    this.saleRemainingTime,
    this.deliverableZipcodesIds,
    this.isDeliverable,
    this.isPurchased,
    this.isFavorite,
    this.imageMd,
    this.imageSm,
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parent_id'];
    slug = json['slug'];
    image = json['image'];
    banner = json['banner'];
    rowOrder = json['row_order'];
    status = json['status'];
    clicks = json['clicks'];
    if (json['children'] != null) {
      children = (json["children"] as List)
          .map((data) => OfferCategoryChildrenModel.fromJson(data))
          .toList();
    }
    text = json['text'];
    */
/* state = (json['state'] as List?) == null
        ? []
        : List<String>.from(json['state']);*//*

    icon = json['icon'];
    level = json['level'];
//    total = json['total'];
    productId = json['product_id'];
    attributeValueIds = json['attribute_value_ids'];
    attributeSet = json['attribute_set'];
    price = json['price'];
    specialPrice = json['special_price'];
    sku = json['sku'];
    stock = json['stock'];
    images = json['images'];
    availability = json['availability'];
    dateAdded = json['date_added'];
    calDiscountPercentage = json['cal_discount_percentage'];
    sales = json['sales'];
    stockType = json['stock_type'];
    isPricesInclusiveTax = json['is_prices_inclusive_tax'];
    type = json['type'];
    attrValueIds = json['attr_value_ids'];
    categoryId = json['category_id'];
    shortDescription = json['short_description'];
    description = json['description'];
    isOnSale = json['is_on_sale'];
    saleDiscount = json['sale_discount'];
    saleStartDate = json['sale_start_date'];
    saleEndDate = json['sale_end_date'];
    totalAllowedQuantity = json['total_allowed_quantity'];
    deliverableType = json['deliverable_type'];
    isAttachmentRequired = json['is_attachment_required'];
    productIdentity = json['product_identity'];
    deliverableZipcodes = json['deliverable_zipcodes'];
    minimumOrderQuantity = json['minimum_order_quantity'];
    quantityStepSize = json['quantity_step_size'];
    codAllowed = json['cod_allowed'];
    rating = json['rating'];
    noOfRatings = json['no_of_ratings'];
    isReturnable = json['is_returnable'];
    isCancelable = json['is_cancelable'];
    cancelableTill = json['cancelable_till'];
    indicator = json['indicator'];
    otherImages = (json[OTHER_IMAGE] as List?) == null
        ? []
        : List<String>.from(json[OTHER_IMAGE]);
    videoType = json['video_type'];
    video = json['video'];
    tags = (json[TAG] as List?) == null ? [] : List<String>.from(json[TAG]);
    warrantyPeriod = json['warranty_period'];
    guaranteePeriod = json['guarantee_period'];
    brand = json['brand'];
    madeIn = json['made_in'];
    categoryName = json['category_name'];
    taxPercentage = json['tax_percentage'];
    taxId = json['tax_id'];

    var reviewImg = (json[REV_IMG] as List?);
    //  List<ReviewImg> reviewList = [];
    if (reviewImg == null || reviewImg.isEmpty) {
      reviewImages = [];
    } else {
      reviewImages = reviewImg.map((data) => ReviewImg.fromJson(data)).toList();
    }

    var atList = (json[PRODUCT_VARIENT] as List?);

    if (atList == null || atList.isEmpty) {
      attributes = [];
    } else {
      attributes = (json[ATTRIBUTES] as List)
          .map((data) => Attribute.fromJson(data))
          .toList();
    }
    var vList = (json[PRODUCT_VARIENT] as List?);

    if (vList == null || vList.isEmpty) {
      variants = [];
    } else {
      variants = (json[PRODUCT_VARIENT] as List)
          .map((data) => Product_Varient.fromJson(data))
          .toList();
    }

    relativePath = json['relative_path'];

    videoRelativePath = json['video_relative_path'];
    serverTime = json['server_time'];
    saleRemainingTime = json['sale_remaining_time'];
    deliverableZipcodesIds = json['deliverable_zipcodes_ids'];
    isDeliverable = json['is_deliverable'];
    isPurchased = json['is_purchased'];
    isFavorite = json['is_favorite'];
    imageMd = json['image_md'];
    imageSm = json['image_sm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['parent_id'] = this.parentId;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['banner'] = this.banner;
    data['row_order'] = this.rowOrder;
    data['status'] = this.status;
    data['clicks'] = this.clicks;
    if (this.children != null) {
      data['children'] = this.children!;
    }
    data['text'] = this.text;
    */
/*  if (this.state != null) {
      data['state'] = this.state!;
    }*//*

    data['icon'] = this.icon;
    data['level'] = this.level;
    //   data['total'] = this.total;
    data['product_id'] = this.productId;
    data['attribute_value_ids'] = this.attributeValueIds;
    data['attribute_set'] = this.attributeSet;
    data['price'] = this.price;
    data['special_price'] = this.specialPrice;
    data['sku'] = this.sku;
    data['stock'] = this.stock;
    data['images'] = this.images;
    data['availability'] = this.availability;
    data['date_added'] = this.dateAdded;
    data['cal_discount_percentage'] = this.calDiscountPercentage;
    data['sales'] = this.sales;
    data['stock_type'] = this.stockType;
    data['is_prices_inclusive_tax'] = this.isPricesInclusiveTax;
    data['type'] = this.type;
    data['attr_value_ids'] = this.attrValueIds;
    data['category_id'] = this.categoryId;
    data['short_description'] = this.shortDescription;
    data['description'] = this.description;
    data['is_on_sale'] = this.isOnSale;
    data['sale_discount'] = this.saleDiscount;
    data['sale_start_date'] = this.saleStartDate;
    data['sale_end_date'] = this.saleEndDate;
    data['total_allowed_quantity'] = this.totalAllowedQuantity;
    data['deliverable_type'] = this.deliverableType;
    data['is_attachment_required'] = this.isAttachmentRequired;
    data['product_identity'] = this.productIdentity;
    data['deliverable_zipcodes'] = this.deliverableZipcodes;
    data['minimum_order_quantity'] = this.minimumOrderQuantity;
    data['quantity_step_size'] = this.quantityStepSize;
    data['cod_allowed'] = this.codAllowed;
    data['rating'] = this.rating;
    data['no_of_ratings'] = this.noOfRatings;
    data['is_returnable'] = this.isReturnable;
    data['is_cancelable'] = this.isCancelable;
    data['cancelable_till'] = this.cancelableTill;
    data['indicator'] = this.indicator;
    data['other_images'] = this.otherImages;
    data['video_type'] = this.videoType;
    data['video'] = this.video;
    data['tags'] = this.tags;
    data['warranty_period'] = this.warrantyPeriod;
    data['guarantee_period'] = this.guaranteePeriod;
    data['brand'] = this.brand;
    data['made_in'] = this.madeIn;
    data['category_name'] = this.categoryName;
    data['tax_percentage'] = this.taxPercentage;
    data['tax_id'] = this.taxId;
    if (this.reviewImages != null) {
      data['review_images'] = this.reviewImages!;
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!;
    }
    if (this.variants != null) {
      data['variants'] = this.variants!;
    }

    data['relative_path'] = this.relativePath;

    data['video_relative_path'] = this.videoRelativePath;
    data['server_time'] = this.serverTime;
    data['sale_remaining_time'] = this.saleRemainingTime;
    data['deliverable_zipcodes_ids'] = this.deliverableZipcodesIds;
    data['is_deliverable'] = this.isDeliverable;
    data['is_purchased'] = this.isPurchased;
    data['is_favorite'] = this.isFavorite;
    data['image_md'] = this.imageMd;
    data['image_sm'] = this.imageSm;

    return data;
  }
}
*/
