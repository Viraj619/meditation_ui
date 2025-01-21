import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';

class Resource{
  /// horizontal
  static List<Map<String,dynamic>> homeHorizontalList=[
    {
      'image':'assert/home ic and im/self_Help_ici.png',
      'title':tr("homeScreen.titleText1"),
      'dec':tr("homeScreen.descText1"),
    },
    {
      'image':'assert/home ic and im/medical_care_ic.png',
      'title':tr("homeScreen.titleText2"),
      'dec':tr("homeScreen.descText2"),
    },

  ];
  /// vertical list
 static List<Map<String,dynamic>> homeVerticalList=[
   {
   'image':'assert/home ic and im/story_and_mine_ic.png',
   'title':tr("groupSupport.title1"),
   'dec':tr("groupSupport.desc1")
 },
   {
     'image':'assert/home ic and im/resource_ic.png',
     'title':tr("groupSupport.title2"),
     'dec':tr("groupSupport.desc2"),
   },
   {
     'image':'assert/home ic and im/journal_ic.png',
     'title':tr("groupSupport.title3"),
     'dec':tr("groupSupport.desc3")
   }
 ];

 /// resources hub
  static  List<Map<String, dynamic>> resourceHub=[
    {
  'image':'assert/resources ic and im/meditation_ic.png',
  'title':tr("selfResources.title1"),
  'dec':tr("selfResources.desc1"),
},
  {
    'image':'assert/resources ic and im/guided_breathing_ic.png',
    'title':tr("selfResources.title2"),
    'dec':tr("selfResources.desc2"),
  'meditation':{
  'mtitle':[
  'Deep Breathing',
  'Easy Breathing',
  ],
  'mdec':[
  'A Guided deep breathing technique that can help you slow down your breathing and clam you down.',
  'A quick and easy breathing technique for achieving deep relaxation.'
  ],
  },
  },
  {
    'image':'assert/resources ic and im/calming_ic.png',
    'title':tr("selfResources.title3"),
    'dec':tr("selfResources.desc3"),
    'meditation':{
      'mtitle':[
        'A Beautiful and calming',
        'Calming music',
        'Relaxing Sound for Mind',
        'A Beautiful and calming'
      ],
      'mdec':[
        'A beautiful and calming musical journey',
        'Calming music for relaxation',
        'Relaxing Sound for mind and soul',
        'A beautiful and calming music journey',
      ]

    }
  },
  {
    'image':'assert/resources ic and im/relaxationg.png',
    'title':tr("selfResources.title4"),
    'dec':tr("selfResources.desc4"),
    'meditation':{
      'mtitle':[
        'A Beautiful and calming',
        'Calming music',
        'Relaxing Sound for Mind',
        'A Beautiful and calming'
      ],
      'mdec':[
        'A beautiful and calming musical journey',
        'Calming music for relaxation',
        'Relaxing Sound for mind and soul',
        'A beautiful and calming music journey',
      ]

    }
  }
];
  /// meditation list
  static List<Map<String,dynamic>> meditationList=[
    {
      'image':'assert/meditation/meditation_ic.png',
      'mtitle':tr("meditation.title1"),
      'mdec': tr("meditation.desc1"),
    },
    {
      'image':'assert/meditation/meditation_music_ic.png',
      'mtitle':tr("meditation.title2"),
      'mdec': tr("meditation.desc2"),
    },
    {
      'image':'assert/meditation/deep_relaxing_ic.png',
      'mtitle':tr("meditation.title3"),
      'mdec':tr("meditation.desc3"),
    },
    {
      'image':'assert/meditation/meditation__for_focus_ic.png',
      'mtitle':tr("meditation.title4"),
      'mdec': tr("meditation.desc4"),
    },
  ];
  /// your story and mine
static List<Map<String,dynamic>> data=[
  {
  'title':tr("yourStoryAndMine.title1"),
  'subtitle':tr("yourStoryAndMine.subtitle1"),
  'days':tr("yourStoryAndMine.days1"),
  'poem':tr("yourStoryAndMine.poem1"),
  'des':tr("yourStoryAndMine.des1"),
},
  {
  'title':tr("yourStoryAndMine.title2"),
  'subtitle':tr("yourStoryAndMine.subtitle2"),
  'days':tr("yourStoryAndMine.days2"),
  'poem':tr("yourStoryAndMine.poem2"),
  'des':tr("yourStoryAndMine.des2"),
},
  {
    'title':tr("yourStoryAndMine.title3"),
    'subtitle':tr("yourStoryAndMine.subtitle3"),
    'days':tr("yourStoryAndMine.days3"),
    'poem':tr("yourStoryAndMine.poem3"),
    'des':tr("yourStoryAndMine.des3"),
},
  {
    'title':tr("yourStoryAndMine.title4"),
    'subtitle':tr("yourStoryAndMine.subtitle4"),
    'days':tr("yourStoryAndMine.days4"),
    'poem':tr("yourStoryAndMine.poem4"),
    'des':tr("yourStoryAndMine.des4"),
},
];
/// resource hub main
  static List<Map<String,dynamic>> resourcehubmain=[
    {
      'image':'assert/resource hub/library/mental_health_ic.png',
      'title':tr("resourceHub.title1"),
      'dec':tr("resourceHub.dec1")
    },
    {
      'image':'assert/resource hub/library/work_ic.png',
      'title':tr("resourceHub.title2"),
      'dec':tr("resourceHub.dec2")
    },
  ];
/// resource hub
static List<Map<String,dynamic>> resourcehub=[
  {
  'image':'assert/resource hub/library/college_ic.png',
  'title':tr("library.mainTitle1"),
  'detail':{
    'title':[
      tr("library.subTitle1"),
      tr("library.subTitle2"),
      tr("library.subTitle3"),
      tr("library.subTitle4"),
      tr("library.subTitle5"),
      tr("library.subTitle6"),
      tr("library.subTitle7"),
      tr("library.subTitle8"),
      tr("library.subTitle9"),

    ],
    'dec':[
      tr("library.desc1"),
      tr("library.desc2"),
      tr("library.desc3"),
      tr("library.desc4"),
      tr("library.desc5"),
      tr("library.desc6"),
      tr("library.desc7"),
      tr("library.desc8"),
      tr("library.desc9"),
    ]
  }
},
  {
    'image':"assert/resource hub/library/work_ic.png",
    'title':tr("library.mainTitle2"),
    'detail':{
      'title':[
        tr("library.subTitle10"),
        tr("library.subTitle11"),
        tr("library.subTitle12"),
        tr("library.subTitle13"),
        tr("library.subTitle14"),
        tr("library.subTitle15"),
        tr("library.subTitle16"),
        tr("library.subTitle17"),
        tr("library.subTitle18"),
      ],
      'dec':[
        tr("library.desc10"),
        tr("library.desc11"),
        tr("library.desc12"),
        tr("library.desc13"),
        tr("library.desc14"),
        tr("library.desc15"),
        tr("library.desc16"),
        tr("library.desc17"),
        tr("library.desc18"),
      ]
    }
  },
  {
    'image':'assert/resource hub/library/relationship.png',
    'title':tr("library.mainTitle3"),
    'detail':{
      'title':[
      tr("library.subTitle19"),
      tr("library.subTitle20"),
      tr("library.subTitle21"),
      tr("library.subTitle22"),
      tr("library.subTitle23"),
      tr("library.subTitle24"),
      tr("library.subTitle25"),
      tr("library.subTitle26"),
      tr("library.subTitle27"),
      ],
      'dec':[
        tr("library.desc19"),
        tr("library.desc20"),
        tr("library.desc21"),
        tr("library.desc22"),
        tr("library.desc23"),
        tr("library.desc24"),
        tr("library.desc25"),
        tr("library.desc26"),
        tr("library.desc27"),
      ]
    }
  },
  {
    'image':'assert/resource hub/library/personal_growth_ic.png',
    'title':tr("library.mainTitle4"),
    'detail':{
      'title':[
        tr("library.subTitle28"),
        tr("library.subTitle29"),
        tr("library.subTitle30"),
        tr("library.subTitle31"),
        tr("library.subTitle32"),
        tr("library.subTitle33"),
        tr("library.subTitle34"),
        tr("library.subTitle35"),
        tr("library.subTitle36"),
      ],
      'dec':[
        tr("library.desc28"),
        tr("library.desc29"),
        tr("library.desc30"),
        tr("library.desc31"),
        tr("library.desc32"),
        tr("library.desc33"),
        tr("library.desc34"),
        tr("library.desc35"),
        tr("library.desc36"),
      ]
    }
  },
  {
    'image':'assert/resource hub/library/mental_health_ic.png',
    'title':tr("library.mainTitle5"),
    'detail':{
      'title':[
        tr("library.subTitle37"),
        tr("library.subTitle38"),
        tr("library.subTitle39"),
        tr("library.subTitle40"),
        tr("library.subTitle41"),
        tr("library.subTitle42"),
        tr("library.subTitle43"),
        tr("library.subTitle44"),
        tr("library.subTitle45"),
      ],
      'dec':[
        tr("library.desc37"),
        tr("library.desc38"),
        tr("library.desc39"),
        tr("library.desc40"),
        tr("library.desc41"),
        tr("library.desc42"),
        tr("library.desc43"),
        tr("library.desc44"),
        tr("library.desc45"),
      ]
    }
  }
];
/// states list
static List<String>stateList=[
  tr("state.state1"),
  tr("state.state2"),
  tr("state.state3"),
  tr("state.state4"),
  tr("state.state5"),
  tr("state.state6"),
  tr("state.state7"),
  tr("state.state8"),
  tr("state.state9"),
  tr("state.state10"),
  tr("state.state11"),
  tr("state.state12"),
  tr("state.state13"),
  tr("state.state14"),
];
/// language list
static List<String>languageList=[
  tr("language.lan1"),
  tr("language.lan2"),
  tr("language.lan3"),
  tr("language.lan4"),
  tr("language.lan5"),
  tr("language.lan6"),
  tr("language.lan7"),
  tr("language.lan8"),
  tr("language.lan9"),
];
/// category list
static List<String>categoryList=[
  'Leave it With Us',
  'Feel Better in 15'
 ];
/// boarding list
static List<Map<String,dynamic>> boarding=[
  {
    'image':'assert/image/bord_1_bc.png',
    'title':'Welcome to Mental health and wellness',
    'desc':'Your personal coach thet will guide you through ypur mental wellness journey, helping you feel better about yourself and the future.'
  },
  {
   'image':'assert/image/bord_2_bc.png',
   'title':'Personalised Guidance',
    'desc':'Tailor made programs to help yu better understand the challenges you face and find what solutions work best for you.'
  },
  {
    'image':'assert/image/bord_3_bc.png',
    'title':'Private and Secure',
    'desc':"Your information is completely safe and your thoughts private.We dont't read your words.and we'll never,ever sell your data to anyone."
  },
  {
    'image':'assert/image/bord_4_bc.png',
    'title':'Backed by Science',
    'desc':"Our Leading team of experts have curated a large library of proven tools. There's something for you."
  }
];
///  main goal selection
static List<Map<String,dynamic>> choiceList=[
  {
    'title':'Reduce Stress',
  },
  {
    'title':'Boost Confidence',
  },
  {
    'title':'improve Mood',
  },
  {
    'title':'Develop a Meditation Habit',
  },
  {
    'title':'Think Positive',
  },
  {
    'title':'Control Anxiety',
  },
  {
    'title': 'Heal From Heartbreak',
  },
  {
    'title':'Body Positive'
  },
  {
    'title':'Other',
  }

];
///  minutes list
 static List<Map<String,dynamic>> minutesList=[
   {
     'title':tr("minutes.mini1"),
   },
   {
     'title':tr("minutes.mini2"),
   },
   {
     'title':tr("minutes.mini3"),
   },
   {
     'title':tr("minutes.mini3"),
   },

 ];
 /// gender list
static List<Map<String,dynamic>> genderList=[
  {
    'image':'assert/gender_male.png',
    'gender':'Male',

  },
  {
    'image':'assert/gender_female.png',
    'gender':'Female',

  },
  {
    'image':'assert/gender_others.png',
    'gender':'Other',

  },
];
/// age list
static   List<int>age=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,31,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100];
/// mood list
static List<Map<String,dynamic>>moodList=[
  {
    'image':'assert/mood tracker/good_mood_ic.png',
    'title':tr("moodTracker.moods1"),
  },
  {
    'image':'assert/mood tracker/happy_mood_ic.png',
    'title':tr("moodTracker.moods2"),
  },
  {
    'image':'assert/mood tracker/meh_mood_ic.png',
    'title':tr("moodTracker.moods3"),
  },
  {
    'image':'assert/mood tracker/sad_mood_ic.png',
    'title':tr("moodTracker.moods4"),
  },
  {
    'image':'assert/mood tracker/angry_mood_ic.png',
    'title':tr("moodTracker.moods5"),
  },
  {
    'image':'assert/mood tracker/anxious_mood_ic.png',
    'title':tr("moodTracker.moods6"),
  },
];
/// minutes
static List<String>minutes=[
  '1 minutes',
  '2 minutes',
  '3 minutes',
  '4 minutes',
  '5 minutes',
  '6 minutes',
  '7 minutes',
  '8 minutes',
  '9 minutes',
  '10 minutes',
  '11 minutes',
  '12 minutes',
  '13 minutes',
  '14 minutes',
  '15 minutes',
  '16 minutes',
  '17 minutes',
  '18 minutes',
  '19 minutes',
  '20 minutes',
];
/// month date day
static List<Map<String,dynamic>>calenderList=[
  {
    'date':tr("addJournal.date1"),
    'day':tr("addJournal.day1"),
  },
  {
    'date':tr("addJournal.date2"),
    'day':tr("addJournal.day2"),
  },
  {
    'date':tr("addJournal.date3"),
    'day':tr("addJournal.day3"),
  },
  {
    'date':tr("addJournal.date4"),
    'day':tr("addJournal.day4"),
  },
  {
    'date':tr("addJournal.date5"),
    'day':tr("addJournal.day5"),
  },
  {
    'date':tr("addJournal.date6"),
    'day':tr("addJournal.day6"),
  },
  {
    'date':tr("addJournal.date7"),
    'day':tr("addJournal.day7"),
  },
];
/// dashboerd list
static List<Map<String,dynamic>> dashbordList=[
  {
    'icon':'assert/desboard/profile_ic_.png',
    'title':tr("dashboard.title1")
  },
  {
    'icon':'assert/desboard/message_ic.png',
    'title':tr("dashboard.title2")
  },
  {
    'icon':'assert/desboard/language_ic.png',
    'title':tr("dashboard.title3")
  },
  {
    'icon':'assert/desboard/privacy_ic.png',
    'title':tr("dashboard.title4")
  },
  {
    'icon':'assert/desboard/frequently_ic.png',
    'title':tr("dashboard.title5")
  },
  {
    'icon':'assert/desboard/contact_ic.png',
    'title':tr("dashboard.title6")
  },
];
}