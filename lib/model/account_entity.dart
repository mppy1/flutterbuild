import 'package:flutterbuild/generated/json/base/json_convert_content.dart';

class AccountEntity with JsonConvert<AccountEntity> {
	int code;
	AccountData data;
	String token;
}

class AccountData with JsonConvert<AccountData> {
	String account;
	String createTime;
	String department;
	String id;
	bool isDelete;
	String memberName;
	String password;
	String phone;
	List<AccountDataRoleList> roleList;
	String updateTime;
}

class AccountDataRoleList with JsonConvert<AccountDataRoleList> {
	String createTime;
	String id;
	bool isDelete;
	String organizationId;
	String parentId;
	String roleCode;
	String roleName;
	String status;
	String updateTime;
}
