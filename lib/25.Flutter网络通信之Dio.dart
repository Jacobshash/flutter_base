import 'package:dio/dio.dart';

void main(){
 Dio().get("https://geek.itheima.net/v1_0/channel").then((res){
   print(res);
 }).catchError((onError){
   print(onError);
 });

}