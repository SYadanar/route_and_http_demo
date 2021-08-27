// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_and_http_demo/models/holiday_response.dart';
import 'package:route_and_http_demo/pages/head_area.dart';
// import 'package:route_and_http_demo/router/router.gr.dart';
import 'package:route_and_http_demo/service/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 20.0;
  final double verticalPadding = 8.0;
  @override
  void initState() {
    super.initState();
    // ApiService().getHolidayResponse("MM", "2020").then((response) {
    //   print(response.toString());
    // }).catchError((e) {
    //   print(e.toString());
    // });
  }
  // app sa run yin initState() ka sa run..so, ko lote chin tr twy add htr lox ya

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Holidays Around The World"),
      ),
      /*
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Detail Page"),
          onPressed: () {
            // Go to Detail Page
            // Push > add another layer on it
            // Pop > remove that added layer
            // AutoRouter.of(context).push(DetailRoute());
            AutoRouter.of(context).push(DetailRoute(id: 123));
          },
        ),
      ),
      */
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderArea(horizontalPadding, verticalPadding),
            FutureBuilder<HolidayResponse>(
              future: ApiService().getHolidayResponse("MM", "2020"),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  default:
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          "ERROR: ${snapshot.error.toString()}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.red,
                          ),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data?.holidays.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            color: Colors.grey.shade200,
                            shape: Border(
                              left: BorderSide(
                                  color: Colors.cyanAccent, width: 10),
                            ),
                            child: ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  snapshot.data!.holidays[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.cyan.shade800,
                                  ),
                                ),
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Date : ",
                                        ),
                                        TextSpan(
                                          text: snapshot
                                              .data!.holidays[index].date,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Day : ",
                                        ),
                                        TextSpan(
                                          text: snapshot.data!.holidays[index]
                                              .weekday.date.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
