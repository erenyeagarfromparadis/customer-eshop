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
  var data;

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
    //var dataL = (parsedJson["data"] as List?);
    var listContent = parsedJson["data"];
    /*List<Data> dataList = (parsedJson["data"] as List)
        .map((data) => Data.fromJson(data))
        .toList();*/
  //  List<Data> dataList = [];
    if (listContent == null) {
      listContent = [];
    } else {
      if (parsedJson[TYPE] == "categories") {
        listContent = listContent[0];

        listContent = Product.fromCat(listContent);
      } else {
        listContent = listContent.map((data) => Data.fromJson(data)).toList();
      }
    }


    return OfferImages(
        id: parsedJson[ID],
        type: parsedJson[TYPE],
        typeId: parsedJson[TYPE_ID],
        minDiscount: parsedJson[MIN_DISC],
        maxDiscount: parsedJson[MAX_DISC],
        image: parsedJson[IMAGE],
        dateAdded: parsedJson[DATE_ADDED],
        data:
            listContent /* parsedJson["data"] != null
          ? Data.fromJson(parsedJson["data"])
          : null,*/
        /*parsedJson["data"] != [] && parsedJson["data"] != null
            ? (parsedJson["data"] as List)g
                .map((data) => Data.fromJson(data))
                .toList()
            : null*/

        //  data: parsedJson[TYPE] == "categories"?catData!:product!,
        );
  }
}

class Data {
  String? id;
  String? image;
  String? banner;

  // var list;
  // List? children;

  Data({
    this.id,
    this.image,
    this.banner,
    /*this.list*/
  });

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      id: parsedJson[ID],
      image: parsedJson[IMAGE],
      banner: parsedJson[
          BANNER], /*children: createSubList(parsedJson["children"])*/
    );
  }

/*  static List<Children>? createSubList(List? parsedJson) {
    if (parsedJson == null || parsedJson.isEmpty) return null;

    return parsedJson.map((data) => Children.fromJson(data)).toList();
  }*/
}

/*class Children {
  String? id;
  String? name;
  String? parentId;
  String? slug;
  String? image;
  String? banner;
  List<Children>? children;
  String? text;

  Children(
      {this.id,
      this.name,
      this.parentId,
      this.slug,
      this.image,
      this.banner,
      this.children,
      this.text});

  factory Children.fromJson(Map<String, dynamic> parsedJson) {
    return Children(
        id: parsedJson[ID],
        name: parsedJson[NAME],
        parentId: parsedJson[PARENT_ID],
        slug: parsedJson[SLUG],
        banner: parsedJson[BANNER],
        image: parsedJson[IMAGE],
        text: parsedJson[TEXT],
        children: createSubList(parsedJson["children"]));
  }

  static List<Children>? createSubList(List? parsedJson) {
    if (parsedJson == null || parsedJson.isEmpty) return null;

    return parsedJson.map((data) => Children.fromJson(data)).toList();
  }
}*/
