import 'package:flutter/material.dart';

class HeaderArea extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;
  const HeaderArea(this.horizontalPadding, this.verticalPadding, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Country : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "Myanmar",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Year : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: "2020",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search by Holiday Name...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade200,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Sort By",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    color: Colors.grey.shade200,
                    shape: StadiumBorder(
                      side: BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Holiday Name",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade200,
                    shape: StadiumBorder(
                      side: BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Month",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade200,
                    shape: StadiumBorder(
                      side: BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Date",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.grey.shade200,
                    shape: StadiumBorder(
                      side: BorderSide(
                        width: 0,
                        color: Colors.transparent,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Day",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
