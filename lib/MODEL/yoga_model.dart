import 'package:flutter/material.dart';
class YogaModel{
  static String IDName="ID";
  static String YogaName="YogaName";
  static String SecondsOrNot="SecondsOrNot";
  static String ImageNme="ImageName";
  static String FirstYoga="YOGAFORBEGINNERS";
  static String SecondYoga="WEIGHTLOSS";
  static String YogaWorkOutSummary="YOGASUMMARY";
  static String   ThirdYoga="YogaForKids";
  static String BackImage="BackImage";
  static String TimeTaken="TimeTaken";
  static String TotalNoOfWorkout="TotalNoOfWorkout";
  static String YogaWorkOutName="YogaWorkOutName";

  static List<String> FirstYogaColumnName=[YogaModel.YogaName,YogaModel.IDName,
  YogaModel.ImageNme,YogaModel.SecondsOrNot];
}
class Yoga{
  final int? id;
  final String YogaTitle;
  final String YogaImageUrl;
  final bool Seconds;
  Yoga({
    this.id,
    required this.Seconds,
    required this.YogaImageUrl,
    required this.YogaTitle
  });
  Yoga Copy({
    int ? id,
    String? YogaImageUrl,
    bool ?Seconds,
    String ?YogaTitle

})
  {
    return Copy(
      id: id?? this.id,
     YogaTitle: YogaTitle?? this.YogaTitle,
        YogaImageUrl: YogaImageUrl?? this.YogaImageUrl,
      Seconds: Seconds?? this.Seconds

    );
  }
  static Yoga fromJason(Map<String, Object?> jason){
    return Yoga(
      id: jason[YogaModel.IDName] as int,
        Seconds:jason[YogaModel.SecondsOrNot] ==1,
         YogaImageUrl:jason[YogaModel.ImageNme] as String ,
        YogaTitle:jason[YogaModel.YogaName] as String);
  }
  Map<String,Object?> toJason(){
    return{
      YogaModel.YogaName:YogaTitle,
      YogaModel.IDName:id,
      YogaModel.ImageNme:YogaImageUrl,
      YogaModel.SecondsOrNot:Seconds?1:0
    };
  }
}
class YogaSummary{
  final int? id;
  final String TimeTaken;
  final String BackImage;
  final String TotalNoOfWorkout;
  final String YogaWorkOutName;

  YogaSummary({
    this.id,
    required this.BackImage,
    required this.TimeTaken,
    required this.YogaWorkOutName,
    required this.TotalNoOfWorkout
  });
  YogaSummary Copy({
    int ? id,
    String? YogaWorkOutName,
    String ?BackImage,
    String ?TimeTaken,
    String? TotalNoOfWorkout

  })
  {
    return Copy(
        id: id?? this.id,
        YogaWorkOutName: YogaWorkOutName?? this.YogaWorkOutName,
        TotalNoOfWorkout: TotalNoOfWorkout?? this.TotalNoOfWorkout,
        TimeTaken: TimeTaken?? this.TimeTaken,
        BackImage: BackImage??this.BackImage
    );
  }
  static YogaSummary fromJason(Map<String, Object?> jason){
    return YogaSummary(
        id: jason[YogaModel.IDName] as int,
        TimeTaken:jason[YogaModel.TimeTaken] as String,
        BackImage:jason[YogaModel.BackImage] as String ,
        TotalNoOfWorkout:jason[YogaModel.TotalNoOfWorkout] as String,
    YogaWorkOutName: jason[YogaModel.YogaWorkOutName] as String);
  }
  Map<String,Object?> toJason(){
    return{
      YogaModel.YogaWorkOutName:YogaWorkOutName,
      YogaModel.TotalNoOfWorkout:TotalNoOfWorkout,
      YogaModel.BackImage:BackImage,
      YogaModel.TimeTaken:TimeTaken
    };
  }
}