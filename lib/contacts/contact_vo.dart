
import 'package:flutter/cupertino.dart';

class ContactVO{
  String seationKey;
  String name;
  String avatarUrl;

  ContactVO({@required this.seationKey, this.name, this.avatarUrl});

}

List<ContactVO> contactData = [
  new ContactVO(seationKey: 'A',
    name: 'A 张三',
    avatarUrl: 'http://hbimg.b0.upaiyun.com/da259a863112af98ad7b73c63d74c79e5c16b66c22074-hkngy5_fw658',
  ),
  new ContactVO(seationKey: 'A',
    name: '阿黄',
    avatarUrl: 'http://b-ssl.duitang.com/uploads/item/201512/05/20151205110805_cAeLH.jpeg',
  ),
  new ContactVO(seationKey: 'B',
      name: '啵啵',
      avatarUrl: 'http://b-ssl.duitang.com/uploads/item/201405/24/20140524085717_HxaPc.jpeg'
  ),

];