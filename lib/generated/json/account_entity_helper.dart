import 'package:flutterbuild/model/account_entity.dart';

accountEntityFromJson(AccountEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new AccountData().fromJson(json['data']);
	}
	if (json['token'] != null) {
		data.token = json['token']?.toString();
	}
	return data;
}

Map<String, dynamic> accountEntityToJson(AccountEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['token'] = entity.token;
	return data;
}

accountDataFromJson(AccountData data, Map<String, dynamic> json) {
	if (json['account'] != null) {
		data.account = json['account']?.toString();
	}
	if (json['createTime'] != null) {
		data.createTime = json['createTime']?.toString();
	}
	if (json['department'] != null) {
		data.department = json['department']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['isDelete'] != null) {
		data.isDelete = json['isDelete'];
	}
	if (json['memberName'] != null) {
		data.memberName = json['memberName']?.toString();
	}
	if (json['password'] != null) {
		data.password = json['password']?.toString();
	}
	if (json['phone'] != null) {
		data.phone = json['phone']?.toString();
	}
	if (json['roleList'] != null) {
		data.roleList = new List<AccountDataRoleList>();
		(json['roleList'] as List).forEach((v) {
			data.roleList.add(new AccountDataRoleList().fromJson(v));
		});
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime']?.toString();
	}
	return data;
}

Map<String, dynamic> accountDataToJson(AccountData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['account'] = entity.account;
	data['createTime'] = entity.createTime;
	data['department'] = entity.department;
	data['id'] = entity.id;
	data['isDelete'] = entity.isDelete;
	data['memberName'] = entity.memberName;
	data['password'] = entity.password;
	data['phone'] = entity.phone;
	if (entity.roleList != null) {
		data['roleList'] =  entity.roleList.map((v) => v.toJson()).toList();
	}
	data['updateTime'] = entity.updateTime;
	return data;
}

accountDataRoleListFromJson(AccountDataRoleList data, Map<String, dynamic> json) {
	if (json['createTime'] != null) {
		data.createTime = json['createTime']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['isDelete'] != null) {
		data.isDelete = json['isDelete'];
	}
	if (json['organizationId'] != null) {
		data.organizationId = json['organizationId']?.toString();
	}
	if (json['parentId'] != null) {
		data.parentId = json['parentId']?.toString();
	}
	if (json['roleCode'] != null) {
		data.roleCode = json['roleCode']?.toString();
	}
	if (json['roleName'] != null) {
		data.roleName = json['roleName']?.toString();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime']?.toString();
	}
	return data;
}

Map<String, dynamic> accountDataRoleListToJson(AccountDataRoleList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['createTime'] = entity.createTime;
	data['id'] = entity.id;
	data['isDelete'] = entity.isDelete;
	data['organizationId'] = entity.organizationId;
	data['parentId'] = entity.parentId;
	data['roleCode'] = entity.roleCode;
	data['roleName'] = entity.roleName;
	data['status'] = entity.status;
	data['updateTime'] = entity.updateTime;
	return data;
}