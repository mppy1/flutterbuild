import 'package:flutter/material.dart';

enum MessageType{
  SYSTEM,PUBLIC,CHAT,GROUP
}

class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

List<MessageData> messageData = [
  new MessageData('http://b-ssl.duitang.com/uploads/item/201608/29/20160829174159_cL2S4.thumb.700_0.jpeg', '一休哥', '突然想到的', new DateTime.now(), MessageType.CHAT),
  new MessageData('http://b-ssl.duitang.com/uploads/item/201708/06/20170806162229_fGVZm.jpeg', '多啦a梦', '机器猫！！！', new DateTime.now(), MessageType.CHAT),
];