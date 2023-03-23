import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';
import 'package:test/pages/m4/DetailScreen.dart';
import 'package:test/pages/m4/ListItem.dart';

class BandList extends StatefulWidget {
  final List<Band> doneListening;

  const BandList({
    Key? key,
    required this.doneListening,
  }) : super(key: key);

  @override
  _BandListState createState() => _BandListState(doneListening);
}

class _BandListState extends State<BandList> {
  List<Band> doneListening = [];
  final List<Band> bandList = [
    Band(
      name: 'Linkin Park',
      country: 'Agoura Hills, California',
      imageAsset: 'assets/images/linkin_park/lp.jpeg',
      date: '1996',
      detail: 'Linkin Park adalah grup musik rock Amerika yang berasal dari Agoura Hills, California. Saat ini, grup digawangi Mike Shinoda selaku vokalis/multi-instrumentalis, Brad Delson sebagai gitaris, Dave Farrell sebagai bassis, Joe Hahn sebagai DJ/pemrogram, dan Rob Bourdon sebagai drumer, yang merupakan pendiri grup tersebut.',
      genres: 'Rock, Alternative Rock, Nu Metal, Rap Rock, Electronic Rock',
      albums: [
        Album(name: 'Hybrid Theory', imageAsset: 'assets/images/linkin_park/hybrid_theory.jpeg', year: '2000'),
        Album(name: 'Meteora', imageAsset: 'assets/images/linkin_park/meteora.jpeg', year: '2003'),
        Album(name: 'Minutes to Midnight', imageAsset: 'assets/images/linkin_park/minutes_to_midnight.jpeg', year: '2007'),
        Album(name: 'A Thousand Suns', imageAsset: 'assets/images/linkin_park/a_thousand_suns.jpeg', year: '2010'),
        Album(name: 'Living Things', imageAsset: 'assets/images/linkin_park/living_things.jpeg', year: '2012'),
        Album(name: 'The Hunting Party', imageAsset: 'assets/images/linkin_park/the_hunting_party.jpeg', year: '2014'),
        Album(name: 'One More Light', imageAsset: 'assets/images/linkin_park/one_more_light.jpeg', year: '2017'),
      ],
    ),
    Band(
      name: 'Avenged Sevenfold',
      country: 'California, Amerika Serikat',
      imageAsset: 'assets/images/avenged_sevenfold/a7x.jpg',
      date: '1999',
      detail: 'Avenged Sevenfold adalah grup musik metalcore asal Huntington Beach, California, Amerika Serikat. Grup ini dibentuk pada tahun 1999 dan terdiri dari lima anggota, yaitu M. Shadows (vokalis), Zacky Vengeance (gitaris), Synyster Gates (gitaris), Johnny Christ (bassist), dan The Rev (drummer).',
      genres: 'Metalcore, Hard Rock, Heavy Metal',
      albums: [
        Album(name: 'Sounding the Seventh Trumpet', imageAsset: 'assets/images/avenged_sevenfold/sounding_the_seventh_trumpet.jpeg', year: '2001'),
        Album(name: 'Waking the Fallen', imageAsset: 'assets/images/avenged_sevenfold/waking_the_fallen.jpeg', year: '2003'),
        Album(name: 'City of Evil', imageAsset: 'assets/images/avenged_sevenfold/city_of_evil.jpeg', year: '2005'),
        Album(name: 'Avenged Sevenfold', imageAsset: 'assets/images/avenged_sevenfold/avenged_sevenfold.png', year: '2007'),
        Album(name: 'Nightmare', imageAsset: 'assets/images/avenged_sevenfold/nightmare.jpeg', year: '2010'),
        Album(name: 'Hail to the King', imageAsset: 'assets/images/avenged_sevenfold/hail_to_the_king.jpeg', year: '2013'),
        Album(name: 'The Stage', imageAsset: 'assets/images/avenged_sevenfold/the_stage.jpeg', year: '2016'),
      ],
    ),
    Band(
      name: 'Bring Me The Horizon',
      country: 'Sheffield, Inggris',
      imageAsset: 'assets/images/bring_me_the_horizon/bmth.jpg',
      date: '2004',
      detail: 'Bring Me the Horizon adalah grup musik metalcore asal Sheffield, Inggris. Grup ini dibentuk pada tahun 2004 dan terdiri dari lima anggota, yaitu Oliver Sykes (vokalis), Lee Malia (gitaris), Matt Kean (gitaris), Matt Nicholls (bassist), dan Matt Nicholls (drummer).',
      genres: 'Metalcore, Alternative Rock, Post-Hardcore, Electronic Rock',
      albums: [
        Album(name: 'Count Your Blessings', imageAsset: 'assets/images/bring_me_the_horizon/count_your_blessings.jpeg', year: '2006'),
        Album(name: 'Suicide Season', imageAsset: 'assets/images/bring_me_the_horizon/suicide_season.jpeg', year: '2008'),
        Album(name: 'There Is a Hell', imageAsset: 'assets/images/bring_me_the_horizon/there_is_a_hell.jpeg', year: '2010'),
        Album(name: 'Sempiternal', imageAsset: 'assets/images/bring_me_the_horizon/sempiternal.jpeg', year: '2013'),
        Album(name: 'That\'s the Spirit', imageAsset: 'assets/images/bring_me_the_horizon/thats_the_spirit.jpeg', year: '2015'),
        Album(name: 'amo', imageAsset: 'assets/images/bring_me_the_horizon/amo.jpeg', year: '2019'),
      ],
    ),
    Band(
      name: 'My Chemical Romance',
      country: 'New Jersey, Amerika Serikat',
      imageAsset: 'assets/images/my_chemical_romance/mcr.jpg',
      date: '2001',
      detail: 'My Chemical Romance adalah grup musik rock alternatif asal New Jersey, Amerika Serikat. Grup ini dibentuk pada tahun 2001 dan terdiri dari lima anggota, yaitu Gerard Way (vokalis), Ray Toro (gitaris), Frank Iero (gitaris), Mikey Way (bassist), dan Bob Bryar (drummer).',
      genres: 'Rock Alternatif, Emo, Punk Rock, Pop Punk',
      albums: [
        Album(name: 'I Brought You My Bullets, You Brought Me Your Love', imageAsset: 'assets/images/my_chemical_romance/i_brought_you_my_bullets.jpeg', year: '2002'),
        Album(name: 'Three Cheers for Sweet Revenge', imageAsset: 'assets/images/my_chemical_romance/three_cheers_for_sweet_revenge.jpeg', year: '2004'),
        Album(name: 'The Black Parade', imageAsset: 'assets/images/my_chemical_romance/the_black_parade.jpeg', year: '2006'),
        Album(name: 'Danger Days: The True Lives of the Fabulous Killjoys', imageAsset: 'assets/images/my_chemical_romance/danger_days.jpeg', year: '2010'),
        Album(name: 'May Death Never Stop You', imageAsset: 'assets/images/my_chemical_romance/may_death_never_stop_you.jpeg', year: '2014'),
      ],
    ),
    Band(
      name: 'Slipknot',
      country: 'Des Moines, Iowa, Amerika Serikat',
      imageAsset: 'assets/images/slipknot/slipknot.jpg',
      date: '1995',
      detail: 'Slipknot adalah grup musik metal alternatif asal Des Moines, Iowa, Amerika Serikat. Grup ini dibentuk pada tahun 1995 dan terdiri dari delapan anggota, yaitu Corey Taylor (vokalis), Sid Wilson (gitaris), Jim Root (gitaris), Mick Thomson (gitaris), Craig Jones (bassist), Chris Fehn (drummer), Shawn Crahan (drummer), dan Joey Jordison (drummer).',
      genres: 'Metal Alternatif, Nu Metal, Groove Metal, Industrial Metal',
      albums: [
        Album(name: 'Slipknot', imageAsset: 'assets/images/slipknot/slipknot.jpeg', year: '1999'),
        Album(name: 'Iowa', imageAsset: 'assets/images/slipknot/iowa.jpeg', year: '2001'),
        Album(name: 'Vol. 3: (The Subliminal Verses)', imageAsset: 'assets/images/slipknot/vol_3.jpg', year: '2004'),
        Album(name: 'All Hope Is Gone', imageAsset: 'assets/images/slipknot/all_hope_is_gone.jpeg', year: '2008'),
        Album(name: 'We Are Not Your Kind', imageAsset: 'assets/images/slipknot/we_are_not_your_kind.jpg', year: '2019'),
      ],
    ),
    Band(
      name: 'Papa Roach',
      country: 'Victorville, California, Amerika Serikat',
      imageAsset: 'assets/images/papa_roach/papa_roach.jpg',
      date: '1993',
      detail: 'Papa Roach adalah grup musik rock alternatif asal Victorville, California, Amerika Serikat. Grup ini dibentuk pada tahun 1993 dan terdiri dari lima anggota, yaitu Jacoby Shaddix (vokalis), Jerry Horton (gitaris), Tobin Esperance (gitaris), Dave Buckner (bassist), dan Tony Palermo (drummer).',
      genres: 'Rock Alternatif, Nu Metal, Hard Rock, Post-Grunge',
      albums: [
        Album(name: 'Infest', imageAsset: 'assets/images/papa_roach/infest.jpeg', year: '2000'),
        Album(name: 'Lovehatetragedy', imageAsset: 'assets/images/papa_roach/lovehatetragedy.jpeg', year: '2002'),
        Album(name: 'Getting Away with Murder', imageAsset: 'assets/images/papa_roach/getting_away_with_murder.jpeg', year: '2004'),
        Album(name: 'The Paramour Sessions', imageAsset: 'assets/images/papa_roach/the_paramour_sessions.jpeg', year: '2006'),
        Album(name: 'Metamorphosis', imageAsset: 'assets/images/papa_roach/metamorphosis.jpeg', year: '2009'),
        Album(name: 'F.E.A.R.', imageAsset: 'assets/images/papa_roach/fear.jpeg', year: '2015'),
      ],
    ),
    Band(
      name: 'Bullet for My Valentine',
      country: 'Wales, Britania Raya',
      imageAsset: 'assets/images/bullet_for_my_valentine/bullet_for_my_valentine.jpg',
      date: '1998',
      detail: 'Bullet for My Valentine adalah grup musik rock alternatif asal Wales, Britania Raya. Grup ini dibentuk pada tahun 1998 dan terdiri dari empat anggota, yaitu Matthew Tuck (vokalis, gitaris), Michael Paget (gitaris), Jason James (bassist), dan Michael Thomas (drummer).',
      genres: 'Rock Alternatif, Metalcore, Nu Metal, Post-Grunge',
      albums: [
        Album(name: 'The Poison', imageAsset: 'assets/images/bullet_for_my_valentine/the_poison.jpeg', year: '2005'),
        Album(name: 'Scream Aim Fire', imageAsset: 'assets/images/bullet_for_my_valentine/scream_aim_fire.jpeg', year: '2008'),
        Album(name: 'Fever', imageAsset: 'assets/images/bullet_for_my_valentine/fever.jpeg', year: '2010'),
        Album(name: 'Temper Temper', imageAsset: 'assets/images/bullet_for_my_valentine/temper_temper.jpeg', year: '2013'),
        Album(name: 'Venom', imageAsset: 'assets/images/bullet_for_my_valentine/venom.jpeg', year: '2015'),
        Album(name: 'Gravity', imageAsset: 'assets/images/bullet_for_my_valentine/gravity.jpeg', year: '2018'),
      ],
    ),
    Band(
      name: 'Simple Plan',
      country: 'Montreal, Quebec, Kanada',
      imageAsset: 'assets/images/simple_plan/simple_plan.jpg',
      date: '1999',
      detail: 'Simple Plan adalah grup musik rock alternatif asal Montreal, Quebec, Kanada. Grup ini dibentuk pada tahun 1999 dan terdiri dari lima anggota, yaitu Pierre Bouvier (vokalis), Jeff Stinco (gitaris), Sébastien Lefebvre (gitaris), David Desrosiers (bassist), dan Chuck Comeau (drummer).',
      genres: 'Rock Alternatif, Pop Punk, Emo, Pop Rock',
      albums: [
        Album(name: 'No Pads, No Helmets', imageAsset: 'assets/images/simple_plan/no_pads_no_helmets_just_balls.jpeg', year: '2002'),
        Album(name: 'Still Not Getting Any...', imageAsset: 'assets/images/simple_plan/still_not_getting_any.jpeg', year: '2004'),
        Album(name: 'Simple Plan', imageAsset: 'assets/images/simple_plan/simple_plan.jpeg', year: '2008'),
        Album(name: 'Get Your Heart On!', imageAsset: 'assets/images/simple_plan/get_your_heart_on.jpeg', year: '2011'),
        Album(name: 'Taking One for the Team', imageAsset: 'assets/images/simple_plan/taking_one_for_the_team.jpeg', year: '2014'),
      ],
    ),
    Band(
      name: 'Green Day',
      country: 'Berkeley, California, Amerika Serikat',
      imageAsset: 'assets/images/green_day/green_day.jpeg',
      date: '1986',
      detail: 'Green Day adalah grup musik punk rock asal Berkeley, California, Amerika Serikat. Grup ini dibentuk pada tahun 1986 dan terdiri dari tiga anggota, yaitu Billie Joe Armstrong (vokalis, gitaris), Mike Dirnt (bassist), dan Tré Cool (drummer).',
      genres: 'Punk Rock, Pop Punk, Emo, Pop Rock',
      albums: [
        Album(name: '39/Smooth', imageAsset: 'assets/images/green_day/39_smooth.jpeg', year: '1990'),
        Album(name: 'Kerplunk!', imageAsset: 'assets/images/green_day/kerplunk.jpeg', year: '1992'),
        Album(name: 'Dookie', imageAsset: 'assets/images/green_day/dookie.jpeg', year: '1994'),
        Album(name: 'Insomniac', imageAsset: 'assets/images/green_day/insomniac.jpeg', year: '1995'),
        Album(name: 'Nimrod', imageAsset: 'assets/images/green_day/nimrod.jpeg', year: '1997'),
        Album(name: 'Warning', imageAsset: 'assets/images/green_day/warning.jpeg', year: '2000'),
        Album(name: 'American Idiot', imageAsset: 'assets/images/green_day/american_idiot.jpeg', year: '2004'),
        Album(name: '21st Century Breakdown', imageAsset: 'assets/images/green_day/21st_century_breakdown.jpeg', year: '2009'),
        Album(name: 'Revolution Radio', imageAsset: 'assets/images/green_day/revolution_radio.jpeg', year: '2016'),
      ],
    ),
    Band(
      name: 'Gun N\' Roses',
      country: 'Los Angeles, California, Amerika Serikat',
      imageAsset: 'assets/images/gnr/gun_n_roses.jpg',
      date: '1985',
      detail: 'Gun N\' Roses adalah grup musik hard rock asal Los Angeles, California, Amerika Serikat. Grup ini dibentuk pada tahun 1985 dan terdiri dari lima anggota, yaitu Axl Rose (vokalis), Slash (gitaris), Duff McKagan (bassist), Izzy Stradlin (gitaris), dan Steven Adler (drummer).',
      genres: 'Hard Rock, Heavy Metal, Glam Metal, Blues Rock',
      albums: [
        Album(name: 'Appetite for Destruction', imageAsset: 'assets/images/gnr/appetite_for_destruction.jpeg', year: '1987'),
        Album(name: 'Use Your Illusion I', imageAsset: 'assets/images/gnr/use_your_illusion_i.jpeg', year: '1991'),
        Album(name: 'Use Your Illusion II', imageAsset: 'assets/images/gnr/use_your_illusion_ii.jpeg', year: '1991'),
        Album(name: 'The Spaghetti Incident?', imageAsset: 'assets/images/gnr/the_spaghetti_incident.jpeg', year: '1993'),
        Album(name: 'Chinese Democracy', imageAsset: 'assets/images/gnr/chinese_democracy.jpeg', year: '2008'),
      ],
    )
  ];

  _BandListState(this.doneListening);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Band band = bandList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(band: band),
              ),
            );
          },
          child: ListItem(
              band: band,
              isDone: doneListening.contains(band),
              onCheckboxClick: (bool? value) {
                setState(() {
                  if (value != null) {
                    value
                        ? doneListening.add(band)
                        : doneListening.remove(band);
                  }
                });
              },
          ),
        );
      },
      itemCount: bandList.length,
    );
  }
}