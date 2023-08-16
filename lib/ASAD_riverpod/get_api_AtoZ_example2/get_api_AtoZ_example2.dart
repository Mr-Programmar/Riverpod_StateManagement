import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_api_AtoZ_example2.g.dart';

final RepostryProvider = Provider<UniversityRepostry>((ref) {
  return UniversityRepostry();
});

final getApiProvider = FutureProvider<List<University>>((ref) async {
  return UniversityRepostry().getApi();
});

@JsonSerializable()
class University {
  final List<String> domains;
  @JsonKey(name: "state-province")
  final dynamic stateProvince;
  final String country;
  @JsonKey(name: "alpha_two_code")
  final String alphaTwoCode;
  @JsonKey(name: "web_pages")
  final List<String> webPages;
  final String name;

  University({
    required this.domains,
    required this.stateProvince,
    required this.country,
    required this.alphaTwoCode,
    required this.webPages,
    required this.name,
  });

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);

  /// Connect the generated [_$UniversityToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UniversityToJson(this);
}

class UniversityRepostry {
  Future<List<University>> getApi() async {
    String url =
        "http://universities.hipolabs.com/search?country=United+States";

    final response = await Dio().get<List>(url);
    final apiUniData = response.data!.cast<Map<String, dynamic>>();
    print("hiiiii");
    print(apiUniData);
//-----------------------------------------e-------- yaha par apiUnidata kae har element ko  show kr rha ha
    var hi = apiUniData.map((e) => University.fromJson(e)).toList();

    return hi;
  }
}

class UniversityUi extends ConsumerWidget {
  const UniversityUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: ref.watch(getApiProvider).when(data: (dataa) {
          return Scaffold(
              body: SafeArea(
                  child: Column(children: [
                    Text("Name:-------------------${dataa[0].name} "),


                    for(var a in dataa)
...[

  Text("Domain:   ${a.domains}"),
  Text("Country    ${a.country}")
]



          ])));
        }, error: (object, StackTrace) {
          return Text("Erroe-----------------aaaaaaaaaaaaa------------$object");
        }, loading: () {
          return CircularProgressIndicator();
        }),
      ),
    );
  }
}
