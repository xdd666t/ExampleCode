class ItemDetailBean {
	Data? data;
	int? errorCode;
	String? errorMsg;

	ItemDetailBean({this.data, this.errorCode, this.errorMsg});

	ItemDetailBean.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? Data.fromJson(json['data']) : null;
		errorCode = json['errorCode'];
		errorMsg = json['errorMsg'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		if (this.data != null) {
			data['data'] = this.data!.toJson();
		}
		data['errorCode'] = errorCode;
		data['errorMsg'] = errorMsg;
		return data;
	}
}

class Data {
	int? curPage;
	List<Datas>? datas;
	int? offset;
	bool? over;
	int? pageCount;
	int? size;
	int? total;

	Data(
			{this.curPage,
				this.datas,
				this.offset,
				this.over,
				this.pageCount,
				this.size,
				this.total});

	Data.fromJson(Map<String, dynamic> json) {
		curPage = json['curPage'];
		if (json['datas'] != null) {
			datas = <Datas>[];
			json['datas'].forEach((v) {
				datas!.add(Datas.fromJson(v));
			});
		}
		offset = json['offset'];
		over = json['over'];
		pageCount = json['pageCount'];
		size = json['size'];
		total = json['total'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['curPage'] = curPage;
		if (datas != null) {
			data['datas'] = datas!.map((v) => v.toJson()).toList();
		}
		data['offset'] = offset;
		data['over'] = over;
		data['pageCount'] = pageCount;
		data['size'] = size;
		data['total'] = total;
		return data;
	}
}

class Datas {
	String? apkLink;
	int? audit;
	String? author;
	bool? canEdit;
	int? chapterId;
	String? chapterName;
	bool? collect;
	int? courseId;
	String? desc;
	String? descMd;
	String? envelopePic;
	bool? fresh;
	int? id;
	String? link;
	String? niceDate;
	String? niceShareDate;
	String? origin;
	String? prefix;
	String? projectLink;
	int? publishTime;
	int? realSuperChapterId;
	int? selfVisible;
	int? shareDate;
	String? shareUser;
	int? superChapterId;
	String? superChapterName;
	List<Tags>? tags;
	String? title;
	int? type;
	int? userId;
	int? visible;
	int? zan;

	Datas(
			{this.apkLink,
				this.audit,
				this.author,
				this.canEdit,
				this.chapterId,
				this.chapterName,
				this.collect,
				this.courseId,
				this.desc,
				this.descMd,
				this.envelopePic,
				this.fresh,
				this.id,
				this.link,
				this.niceDate,
				this.niceShareDate,
				this.origin,
				this.prefix,
				this.projectLink,
				this.publishTime,
				this.realSuperChapterId,
				this.selfVisible,
				this.shareDate,
				this.shareUser,
				this.superChapterId,
				this.superChapterName,
				this.tags,
				this.title,
				this.type,
				this.userId,
				this.visible,
				this.zan});

	Datas.fromJson(Map<String, dynamic> json) {
		apkLink = json['apkLink'];
		audit = json['audit'];
		author = json['author'];
		canEdit = json['canEdit'];
		chapterId = json['chapterId'];
		chapterName = json['chapterName'];
		collect = json['collect'];
		courseId = json['courseId'];
		desc = json['desc'];
		descMd = json['descMd'];
		envelopePic = json['envelopePic'];
		fresh = json['fresh'];
		id = json['id'];
		link = json['link'];
		niceDate = json['niceDate'];
		niceShareDate = json['niceShareDate'];
		origin = json['origin'];
		prefix = json['prefix'];
		projectLink = json['projectLink'];
		publishTime = json['publishTime'];
		realSuperChapterId = json['realSuperChapterId'];
		selfVisible = json['selfVisible'];
		shareDate = json['shareDate'];
		shareUser = json['shareUser'];
		superChapterId = json['superChapterId'];
		superChapterName = json['superChapterName'];
		if (json['tags'] != null) {
			tags = <Tags>[];
			json['tags'].forEach((v) {
				tags!.add(Tags.fromJson(v));
			});
		}
		title = json['title'];
		type = json['type'];
		userId = json['userId'];
		visible = json['visible'];
		zan = json['zan'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['apkLink'] = apkLink;
		data['audit'] = audit;
		data['author'] = author;
		data['canEdit'] = canEdit;
		data['chapterId'] = chapterId;
		data['chapterName'] = chapterName;
		data['collect'] = collect;
		data['courseId'] = courseId;
		data['desc'] = desc;
		data['descMd'] = descMd;
		data['envelopePic'] = envelopePic;
		data['fresh'] = fresh;
		data['id'] = id;
		data['link'] = link;
		data['niceDate'] = niceDate;
		data['niceShareDate'] = niceShareDate;
		data['origin'] = origin;
		data['prefix'] = prefix;
		data['projectLink'] = projectLink;
		data['publishTime'] = publishTime;
		data['realSuperChapterId'] = realSuperChapterId;
		data['selfVisible'] = selfVisible;
		data['shareDate'] = shareDate;
		data['shareUser'] = shareUser;
		data['superChapterId'] = superChapterId;
		data['superChapterName'] = superChapterName;
		if (tags != null) {
			data['tags'] = tags!.map((v) => v.toJson()).toList();
		}
		data['title'] = title;
		data['type'] = type;
		data['userId'] = userId;
		data['visible'] = visible;
		data['zan'] = zan;
		return data;
	}
}

class Tags {
	String? name;
	String? url;

	Tags({this.name, this.url});

	Tags.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['name'] = name;
		data['url'] = url;
		return data;
	}
}
