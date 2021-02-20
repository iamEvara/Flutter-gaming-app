import 'package:flutter/material.dart';
import 'package:gaming/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List categories = [
      "Popular",
      "For Kids",
      "MOBA",
      "FPS",
      "Strategy",
      "Shooter",
      "Adventure",
      "Action"
    ];
    final List games = [
      {
        "name": "Valorant",
        "gamers": "3M+",
        "poster": "assets/valorant-poster.jpg",
        "wallpaper": "assets/valorant-wallpaper.jpg",
        "desc":
            "Valorant is a free-to-play multiplayer tactical first-person hero shooter developed and published by Riot Games, for Microsoft Windows. First teased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020, followed by official release on June 2, 2020.",
      },
      {
        "name": "PUBG",
        "gamers": "400M+",
        "poster": "assets/pubg-poster.jpg",
        "wallpaper": "assets/pubg-wallpaper.jpg",
        "desc":
            "The official PLAYERUNKNOWN'S BATTLEGROUNDS designed exclusively for mobile. Play free anywhere, anytime. PUBG MOBILE delivers the most intense free-to-play multiplayer action on mobile. Drop in, gear up, and compete.",
      },
      {
        "name": "Minecraft",
        "gamers": "126M+",
        "poster": "assets/minecraft-poster.jpg",
        "wallpaper": "assets/minecraft-wallpaper.jpg",
        "desc":
            "Minecraft is a sandbox video game developed by Mojang. The game was created by Markus 'Notch' Persson in the Java programming language. ",
      },
      {
        "name": "Cyberpunk",
        "gamers": "158K+",
        "poster": "assets/cyberpunk-poster.jpg",
        "wallpaper": "assets/cyberpunk-wallpaper.jpg",
        "desc":
            "Cyberpunk 2077 is a 2020 action role-playing video game developed and published by CD Projekt. The story takes place in Night City, an open world set in the Cyberpunk universe.",
      },
      {
        "name": "CS:GO",
        "gamers": "4.7M+",
        "poster": "assets/csgo-wallpaper.jpg",
        "wallpaper": "assets/csgo-wallpaper.jpg",
        "desc":
            "Counter-Strike: Global Offensive is a multiplayer first-person shooter video game developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series and was released for Windows, macOS, Xbox 360, and PlayStation 3 in August 2012, while the Linux version was released in 2014.",
      },
      {
        "name": "Fall Guys",
        "gamers": "120K+",
        "poster": "assets/Fall-Guys-poster.png",
        "wallpaper": "assets/Fall-Guys-wallpaper.jpg",
        "desc":
            "Fall Guys: Ultimate Knockout is a platformer battle royale game developed by Mediatonic and published by Devolver Digital. It released for Microsoft Windows and PlayStation 4 on 4 August 2020. The game is coming to Nintendo Switch, Xbox One and Xbox Series X/S in mid 2021.",
      },
      {
        "name": "Call of Duty",
        "gamers": "80M+",
        "poster": "assets/cod-poster.jpg",
        "wallpaper": "assets/cod-wallpaper.jpg",
        "desc":
            "Call of Duty: Warzone is a free-to-play battle royale video game released on March 10, 2020, for PlayStation 4, Xbox One, and Microsoft Windows. The game is a part of the 2019 title Call of Duty: Modern Warfare but does not require purchase of it and was introduced during Season 2 of Modern Warfare content.",
      },
      {
        "name": "Among Us",
        "gamers": "60M+",
        "poster": "assets/among-us-wallpaper.jpg",
        "wallpaper": "assets/among-us-wallpaper.jpg",
        "desc":
            "Among Us is an online multiplayer social deduction game developed and published by American game studio Innersloth. It was released on iOS and Android devices in June 2018 and on Windows in November 2018, featuring cross-platform play between these platforms.",
      },
      {
        "name": "Brawlhalla",
        "gamers": "50M+",
        "poster": "assets/brawlhalla-poster.jpg",
        "wallpaper": "assets/brawlhalla-wallpaper.jpg",
        "desc":
            "Brawlhalla is a free-to-play 2D fighting game developed by Blue Mammoth Games for Microsoft Windows, macOS, PlayStation 4, Xbox One, Nintendo Switch, Android, and iOS, with full cross-play across all platforms. The game was shown at PAX East in April 2014, and went into alpha later that month.",
      },
      {
        "name": "Fortnite",
        "gamers": "350M+",
        "poster": "assets/fortnite-poster.jpg",
        "wallpaper": "assets/fortnite-wallpaper.jpg",
        "desc":
            "Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine: Fortnite: Save the World, a cooperative hybrid-tower defense-shooter-survival game for up to four players to fight off zombie-like creatures and defend objects with traps and fortifications they can build; Fortnite Battle Royale, a free-to-play battle royale game in which up to 100 players fight to be the last person standing; and Fortnite Creative, in which players are given complete freedom to create worlds and battle arenas",
      },
      {
        "name": "Rogue Company",
        "gamers": "15M+",
        "poster": "assets/rouge-company-wallpaper.jpg",
        "wallpaper": "assets/rouge-company-wallpaper.jpg",
        "desc":
            "Rogue Company is a free-to-play multiplayer tactical third-person hero shooter video game developed by First Watch Games and published by Hi-Rez Studios. ",
      },
      {
        "name": "Hitman 3",
        "gamers": "50K+",
        "poster": "assets/hitman-poster.jpg",
        "wallpaper": "assets/hitman-wallpaper.jpg",
        "desc":
            "Hitman 3 is a stealth game developed and published by IO Interactive for Microsoft Windows, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, Stadia, and Nintendo Switch on 20 January 2021.",
      },
      {
        "name": "Free Fire",
        "gamers": "80M+",
        "poster": "assets/freefire-wallpaper.jpg",
        "wallpaper": "assets/freefire-wallpaper.jpg",
        "desc":
            "Garena Free Fire is a battle royale game, developed by 111 Dots Studio and published by Garena for Android and iOS. It became the most downloaded mobile game globally in 2019. Due to its popularity, the game received the award for the 'Best Popular Vote Game' by the Google Play Store in 2019. ",
      },
      {
        "name": "League of Legends",
        "gamers": "115M+",
        "poster": "assets/league-of-legends-poster.jpg",
        "wallpaper": "assets/league-of-legends-wallpaper.jpg",
        "desc":
            "League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre.",
      },
    ];
    final List recommended = [
      {
        "name": "Valorant",
        "gamers": "3M+",
        "poster": "assets/valorant-poster.jpg",
        "wallpaper": "assets/valorant-wallpaper.jpg",
        "desc":
            "Valorant is a free-to-play multiplayer tactical first-person hero shooter developed and published by Riot Games, for Microsoft Windows. First teased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020, followed by official release on June 2, 2020.",
      },
      {
        "name": "PUBG",
        "gamers": "400M+",
        "poster": "assets/pubg-poster.jpg",
        "wallpaper": "assets/pubg-wallpaper.jpg",
        "desc":
            "The official PLAYERUNKNOWN'S BATTLEGROUNDS designed exclusively for mobile. Play free anywhere, anytime. PUBG MOBILE delivers the most intense free-to-play multiplayer action on mobile. Drop in, gear up, and compete.",
      },
      {
        "name": "Minecraft",
        "gamers": "126M+",
        "poster": "assets/minecraft-poster.jpg",
        "wallpaper": "assets/minecraft-wallpaper.jpg",
        "desc":
            "Minecraft is a sandbox video game developed by Mojang. The game was created by Markus 'Notch' Persson in the Java programming language. ",
      },
      {
        "name": "Cyberpunk",
        "gamers": "158K+",
        "poster": "assets/cyberpunk-poster.jpg",
        "wallpaper": "assets/cyberpunk-wallpaper.jpg",
        "desc":
            "Cyberpunk 2077 is a 2020 action role-playing video game developed and published by CD Projekt. The story takes place in Night City, an open world set in the Cyberpunk universe.",
      },
      {
        "name": "CS:GO",
        "gamers": "4.7M+",
        "poster": "assets/csgo-wallpaper.jpg",
        "wallpaper": "assets/csgo-wallpaper.jpg",
        "desc":
            "Counter-Strike: Global Offensive is a multiplayer first-person shooter video game developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series and was released for Windows, macOS, Xbox 360, and PlayStation 3 in August 2012, while the Linux version was released in 2014.",
      },
      {
        "name": "Fall Guys",
        "gamers": "120K+",
        "poster": "assets/Fall-Guys-poster.png",
        "wallpaper": "assets/Fall-Guys-wallpaper.jpg",
        "desc":
            "Fall Guys: Ultimate Knockout is a platformer battle royale game developed by Mediatonic and published by Devolver Digital. It released for Microsoft Windows and PlayStation 4 on 4 August 2020. The game is coming to Nintendo Switch, Xbox One and Xbox Series X/S in mid 2021.",
      },
      {
        "name": "Call of Duty",
        "gamers": "80M+",
        "poster": "assets/cod-poster.jpg",
        "wallpaper": "assets/cod-wallpaper.jpg",
        "desc":
            "Call of Duty: Warzone is a free-to-play battle royale video game released on March 10, 2020, for PlayStation 4, Xbox One, and Microsoft Windows. The game is a part of the 2019 title Call of Duty: Modern Warfare but does not require purchase of it and was introduced during Season 2 of Modern Warfare content.",
      },
      {
        "name": "Among Us",
        "gamers": "60M+",
        "poster": "assets/among-us-wallpaper.jpg",
        "wallpaper": "assets/among-us-wallpaper.jpg",
        "desc":
            "Among Us is an online multiplayer social deduction game developed and published by American game studio Innersloth. It was released on iOS and Android devices in June 2018 and on Windows in November 2018, featuring cross-platform play between these platforms.",
      },
      {
        "name": "Brawlhalla",
        "gamers": "50M+",
        "poster": "assets/brawlhalla-poster.jpg",
        "wallpaper": "assets/brawlhalla-wallpaper.jpg",
        "desc":
            "Brawlhalla is a free-to-play 2D fighting game developed by Blue Mammoth Games for Microsoft Windows, macOS, PlayStation 4, Xbox One, Nintendo Switch, Android, and iOS, with full cross-play across all platforms. The game was shown at PAX East in April 2014, and went into alpha later that month.",
      },
      {
        "name": "Fortnite",
        "gamers": "350M+",
        "poster": "assets/fortnite-poster.jpg",
        "wallpaper": "assets/fortnite-wallpaper.jpg",
        "desc":
            "Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine: Fortnite: Save the World, a cooperative hybrid-tower defense-shooter-survival game for up to four players to fight off zombie-like creatures and defend objects with traps and fortifications they can build; Fortnite Battle Royale, a free-to-play battle royale game in which up to 100 players fight to be the last person standing; and Fortnite Creative, in which players are given complete freedom to create worlds and battle arenas",
      },
      {
        "name": "Rogue Company",
        "gamers": "15M+",
        "poster": "assets/rouge-company-wallpaper.jpg",
        "wallpaper": "assets/rouge-company-wallpaper.jpg",
        "desc":
            "Rogue Company is a free-to-play multiplayer tactical third-person hero shooter video game developed by First Watch Games and published by Hi-Rez Studios. ",
      },
      {
        "name": "Hitman 3",
        "gamers": "50K+",
        "poster": "assets/hitman-poster.jpg",
        "wallpaper": "assets/hitman-wallpaper.jpg",
        "desc":
            "Hitman 3 is a stealth game developed and published by IO Interactive for Microsoft Windows, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, Stadia, and Nintendo Switch on 20 January 2021.",
      },
      {
        "name": "Free Fire",
        "gamers": "80M+",
        "poster": "assets/freefire-wallpaper.jpg",
        "wallpaper": "assets/freefire-wallpaper.jpg",
        "desc":
            "Garena Free Fire is a battle royale game, developed by 111 Dots Studio and published by Garena for Android and iOS. It became the most downloaded mobile game globally in 2019. Due to its popularity, the game received the award for the 'Best Popular Vote Game' by the Google Play Store in 2019. ",
      },
      {
        "name": "League of Legends",
        "gamers": "115M+",
        "poster": "assets/league-of-legends-poster.jpg",
        "wallpaper": "assets/league-of-legends-wallpaper.jpg",
        "desc":
            "League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot's founders sought to develop a stand-alone game in the same genre.",
      },
    ];
    recommended.shuffle();
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Palette.bg,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        "assets/profile.jpg",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          border: Border.all(
                            width: 1,
                            color: Palette.caption,
                          )),
                      child: CircleAvatar(
                        backgroundColor: Palette.bg,
                        radius: 25,
                        child: Icon(
                          Icons.filter_alt_outlined,
                          color: Palette.caption,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Hey there, Evara",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Roboto',
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  "Get better at Gaming!",
                  style: GoogleFonts.getFont('Roboto',
                      color: Palette.extra,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: index != 0
                          ? Text(
                              categories[index],
                              style: TextStyle(
                                color:
                                    index == 0 ? Palette.accent : Colors.grey,
                              ),
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  categories[index],
                                  style: TextStyle(
                                    color: index == 0
                                        ? Palette.accent
                                        : Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Container(
                                      width: 5,
                                      height: 5,
                                      color: Palette.extra,
                                    ))
                              ],
                            ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 290,
                width: size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: games.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Detail(list: games[index]))),
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          image: DecorationImage(
                            image: AssetImage(games[index]['poster']),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.black.withOpacity(0.6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                games[index]['name'],
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.getFont('Roboto',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                games[index]['gamers'],
                                textAlign: TextAlign.left,
                                style: GoogleFonts.getFont('Roboto',
                                    color: Palette.caption,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Recommended for you",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.getFont('Roboto',
                      color: Palette.extra,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 120.0 * recommended.length,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: recommended.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Detail(list: recommended[index]))),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: size.width,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          image: DecorationImage(
                            image: AssetImage(recommended[index]['wallpaper']),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.black.withOpacity(0.6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommended[index]['name'],
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.getFont('Roboto',
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                recommended[index]['gamers'],
                                textAlign: TextAlign.left,
                                style: GoogleFonts.getFont('Roboto',
                                    color: Palette.caption,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
