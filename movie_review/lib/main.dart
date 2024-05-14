import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 영화 제목, 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "파묘",
        "imgUrl": "https://img.hankyung.com/photo/202404/01.36302834.1.jpg",
      },
      {
        "category": "범죄도시4",
        "imgUrl":
            "https://upload.wikimedia.org/wikipedia/ko/thumb/6/6a/%EB%B2%94%EC%A3%84%EB%8F%84%EC%8B%9C4_%EB%A9%94%EC%9D%B8_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg/800px-%EB%B2%94%EC%A3%84%EB%8F%84%EC%8B%9C4_%EB%A9%94%EC%9D%B8_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg",
      },
      {
        "category": "엘리멘탈",
        "imgUrl":
            "https://play-lh.googleusercontent.com/8REDopbCqMSppHlgGiIvdIkTxce6b-Dlc7aZzTiBsZfUAH61v79mHgwOE7GE5-wgKuGpXsSKaFc0XIbdlcw=w240-h480-rw",
      },
      {
        "category": "듄:파트 2",
        "imgUrl":
            "https://i0.wp.com/www.heartcomplex.net/wp-content/uploads/2024/03/dune_p2.jpg?fit=1000%2C1445&ssl=1",
      },
      {
        "category": "30일",
        "imgUrl":
            "https://i.namu.wiki/i/GPKZBA5Q-eSsQR1R5a4xJZ5ZlY5w2jq25onz78wfJuabzDld38SM1Reqlyt6cHybXJlc4UWGAWCZEmW975nPIQ.webp",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Movie Reviews",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_outline),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "영화 제목을 검색해주세요.",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Divider(height: 1),
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                String category = dataList[index]['category'];
                String imgUrl = dataList[index]['imgUrl'];

                return Card(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        imgUrl,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text(
                        category,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
