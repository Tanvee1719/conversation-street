import 'package:flutter/material.dart';
import '../helper/post.dart';
import '../helper/widgets.dart';

class SearchPost extends StatefulWidget {
  final String postSearch;

  SearchPost({this.postSearch});

  @override
  _SearchPostState createState() => _SearchPostState();
}

class Post {
  final String searchTerm;
  Post(this.searchTerm);
}

class _SearchPostState extends State<SearchPost> {
  var postlist;
  bool _loading = true;

  @override
  void initState() {
    getPost();
    // TODO: implement initState
    super.initState();
  }

  void getPost() async {
    PostSearch post = PostSearch();
    await post.getPostForSearch(widget.postSearch);
    postlist = post.post;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Conversation",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "Street",
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.share,
                )),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ListView.builder(
                      itemCount: postlist.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PostTile(
                          imgURL: postlist[index].urlToImage ?? "",
                          title: postlist[index].title ?? "",
                          desc: postlist[index].description ?? "",
                          content: postlist[index].content ?? "",
                          posturl: postlist[index].articleUrl ?? "",
                        );
                      }),
                ),
              ),
            ),
    );
  }
}
