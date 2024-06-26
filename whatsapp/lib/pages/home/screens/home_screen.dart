import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home/screens/on_click_chat_screen.dart';
import 'package:whatsapp/pages/home/widgets/appbar_popup_button.dart';
import 'package:whatsapp/themes/color.dart';
import 'package:whatsapp/pages/home/widgets/archived.dart';
import 'package:whatsapp/pages/home/widgets/below_search_bar.dart';
import 'package:whatsapp/pages/home/widgets/chat_list.dart';
import 'package:whatsapp/widgets/spacer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearch = false;
  bool isSearchingg = false;
  TextEditingController _search = TextEditingController();
  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  void checkController(String text) {
    isSearchingg = text.isNotEmpty;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),

      //app bar
      appBar: !isSearch
          ? AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                "WhatsApp",
                style: TextStyle(
                    color: Colors.green.withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              actions: [
                //qr
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.qr_code_scanner),
                ),
                //photo
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_camera_outlined),
                ),
                //more option
                AppbarPopupButton(),
              ],
            )
          : AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                // margin:
                // const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.tertiary(context),
                ),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => setState(() {
                              isSearch = false;
                            }),
                        child: Icon(
                          Icons.arrow_back,
                        )),
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          checkController(value);
                        },
                        controller: _search,
                        decoration: InputDecoration(
                          hintText: "Search...",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    isSearchingg
                        ? InkWell(
                            onTap: () => setState(() {
                              _search.clear();
                              isSearchingg = false;
                            }),
                            child: Icon(
                              Icons.clear_outlined,
                            ),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            ),

      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //search
            !isSearch
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearch = true;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding:
                          const EdgeInsets.only(left: 23, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.tertiary(context),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 25,
                          ),
                          AddHorizontalSpace(width: 5),
                          Text(
                            "Search...",
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            BelowSearchBar(),
            Archived(),
            AddVerticleSpace(height: 10),
            ChatList(
              seaching: _search.text.toString(),
            ),
          ],
        ),
      ),

      //floating action

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.withOpacity(0.9),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return OnClickChatScreen();
            },
          ));
        },
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
