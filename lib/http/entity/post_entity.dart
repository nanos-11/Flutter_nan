class PostEntity {
	int id;
	String title;
	String body;
	int userId;

	PostEntity({this.id, this.title, this.body, this.userId});

	PostEntity.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		title = json['title'];
		body = json['body'];
		userId = json['userId'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['title'] = this.title;
		data['body'] = this.body;
		data['userId'] = this.userId;
		return data;
	}
}
