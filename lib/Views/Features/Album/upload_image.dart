import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            "assests/images/logo3.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width * 0.60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1H353EhNjMdSW4JyXaFs-rsJuImdFT5m8Mw&s"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Container(
              width: 250,
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                    hintText: "Enter a Caption", border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.all(10), // Adds spacing around the button
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), // Rounded corners
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple], // Gradient effect
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.transparent, // Transparent to keep gradient
                shadowColor: Colors.black26, // Soft shadow
                padding: EdgeInsets.symmetric(
                    vertical: 15, horizontal: 30), // Button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Matches container
                ),
              ),
              child: Text(
                "POST Picture",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text for contrast
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
