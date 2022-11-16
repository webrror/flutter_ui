import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ProfileUI/options.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/heroicons_solid.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.teal,
      //useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const Profile(),
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: IconButton(
            onPressed: () {}, icon: const Iconify(Ic.outline_arrow_back)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Iconify(HeroiconsSolid.menu_alt_3)),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1567186937675-a5131c8a89ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: size.width * 0.1,
                ),
                Image.asset(
                  'assets/images/fb.png',
                  width: 40,
                  height: 40,
                ),
                Image.asset(
                  'assets/images/twitter-blue.png',
                  width: 40,
                  height: 40,
                ),
                SvgPicture.network(
                  'https://raw.githubusercontent.com/sreedeviluminar/sepflut/730c9cf932ae42d5744604b0e970e62773e88a35/assets/svg/linkedin.svg',
                  width: 40,
                  height: 40,
                ),
                Image.asset(
                  'assets/images/git.png',
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.045,
          ),
          const Center(
            child: Text(
              'Jerin',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
          ),
          const Center(
            child: Text(
              '@webrror',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Center(
            child: Text(
              'Mobile App Developer',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: size.height * 0.02,
              );
            },
            physics: const BouncingScrollPhysics(),
            itemCount: options.length,
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black12.withOpacity(0.05)),
                child: ListTile(
                  leading: options[index][0],
                  title: Text(
                    options[index][1],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
