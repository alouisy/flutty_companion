class User {
  final int id;
  final String login, url;

  User({
    required this.id,
    required this.login,
    required this.url,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      login: json['login'] as String,
      url: json['url'] as String,
    );
  }
}

class UserProfile {
  final int id;
  final String login;
  final String url;
  final String image_url;
  final int wallet;
  final int correction_point;
  final String displayname;
  final double level;
  final List<Map<String, dynamic>> cursus_users;
  final List<Map<String, dynamic>> projects_users;

  UserProfile({
    required this.id,
    required this.login,
    required this.url,
    required this.image_url,
    required this.wallet,
    required this.correction_point,
    required this.displayname,
    required this.level,
    required this.cursus_users,
    required this.projects_users,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as int,
      login: json['login'] as String,
      url: json['url'] as String,
      image_url: json['image_url'] as String,
      wallet: json['wallet'] as int,
      correction_point: json['correction_point'] as int,
      displayname: json['displayname'] as String,
      level: json['level'] as double,
      cursus_users: json['cursus_users'] as List<Map<String, dynamic>>,
      projects_users: json['projects_users'] as List<Map<String, dynamic>>,
    );
  }
}

List<UserProfile> users = [
  UserProfile(
    id: 16008,
    login: "alouisy-",
    url: "https://api.intra.42.fr/v2/users/alouisy-",
    image_url: "https://cdn.intra.42.fr/users/alouisy-.jpg",
    wallet: 40,
    correction_point: 13,
    displayname: "Axel Louisy Louis",
    level: 12.23,
    cursus_users: [
      {
        "grade": "Commander",
        "level": 12.23,
        "skills": [
          {"id": 16, "name": "Company experience", "level": 11.22},
          {"id": 1, "name": "Algorithms \u0026 AI", "level": 10.14},
          {"id": 7, "name": "Group \u0026 interpersonal", "level": 8.54},
          {"id": 3, "name": "Rigor", "level": 4.64},
          {"id": 2, "name": "Imperative programming", "level": 3.62},
          {"id": 6, "name": "Web", "level": 2.34},
          {
            "id": 14,
            "name": "Adaptation \u0026 creativity",
            "level": 2.2800000000000002
          },
          {"id": 4, "name": "Unix", "level": 2.22},
          {
            "id": 10,
            "name": "Network \u0026 system administration",
            "level": 2.03
          },
          {"id": 5, "name": "Graphics", "level": 1.28},
          {"id": 13, "name": "Organization", "level": 1.21},
          {"id": 12, "name": "DB \u0026 Data", "level": 0.92},
          {"id": 15, "name": "Technology integration", "level": 0.69},
          {"id": 11, "name": "Security", "level": 0.47},
          {"id": 17, "name": "Object-oriented programming", "level": 0.39}
        ],
        "blackholed_at": null,
        "id": 16404,
        "begin_at": "2016-11-02T08:00:00.000Z",
        "end_at": "2020-02-25T00:00:00.000Z",
        "cursus_id": 1,
        "has_coalition": true,
        "user": {
          "id": 16008,
          "login": "alouisy-",
          "url": "https://api.intra.42.fr/v2/users/alouisy-"
        },
        "cursus": {
          "id": 1,
          "created_at": "2014-11-02T16:43:38.480Z",
          "name": "42",
          "slug": "42"
        }
      },
    ],
    projects_users: [
      {
        "id": 2130446,
        "occurrence": 0,
        "final_mark": null,
        "status": "in_progress",
        "validated?": null,
        "current_team_id": 3506877,
        "project": {
          "id": 1395,
          "name": "swifty-companion",
          "slug": "42cursus-swifty-companion",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": null,
        "marked": false,
        "retriable_at": null
      },
      {
        "id": 2112494,
        "occurrence": 0,
        "final_mark": null,
        "status": "in_progress",
        "validated?": null,
        "current_team_id": 3482344,
        "project": {
          "id": 1391,
          "name": "ft_linear_regression",
          "slug": "42cursus-ft_linear_regression",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": null,
        "marked": false,
        "retriable_at": null
      },
      {
        "id": 1181835,
        "occurrence": 0,
        "final_mark": 80,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2352616,
        "project": {
          "id": 1190,
          "name": "roger-skyline-1",
          "slug": "roger-skyline-1",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2019-01-02T17:23:38.851Z",
        "marked": true,
        "retriable_at": "2019-01-05T17:23:39.373Z"
      },
      {
        "id": 796511,
        "occurrence": 1,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2344954,
        "project": {
          "id": 22,
          "name": "Corewar",
          "slug": "corewar",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2018-11-29T14:36:49.073Z",
        "marked": true,
        "retriable_at": "2018-12-06T14:36:49.554Z"
      },
      {
        "id": 777054,
        "occurrence": 1,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2002101,
        "project": {
          "id": 687,
          "name": "init",
          "slug": "init",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2018-12-21T11:17:09.145Z",
        "marked": true,
        "retriable_at": "2018-12-22T11:17:09.798Z"
      },
      {
        "id": 810727,
        "occurrence": 0,
        "final_mark": 120,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1921505,
        "project": {
          "id": 537,
          "name": "Camagru",
          "slug": "camagru",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2018-02-27T13:58:00.570Z",
        "marked": true,
        "retriable_at": "2018-03-03T13:57:58.592Z"
      },
      {
        "id": 746101,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1844972,
        "project": {
          "id": 599,
          "name": "Mexican Standoff",
          "slug": "rushes-mexican-standoff",
          "parent_id": 61
        },
        "cursus_ids": [1],
        "marked_at": "2018-01-10T22:42:38.658Z",
        "marked": true,
        "retriable_at": "2017-11-27T16:49:41.454Z"
      },
      {
        "id": 471171,
        "occurrence": 1,
        "final_mark": 109,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1547375,
        "project": {
          "id": 111,
          "name": "ComputorV1",
          "slug": "computorv1",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-13T21:09:27.958Z",
        "marked": true,
        "retriable_at": "2017-04-17T21:09:26.361Z"
      },
      {
        "id": 495043,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1544324,
        "project": {
          "id": 58,
          "name": "Day 09",
          "slug": "42-piscine-c-formation-piscine-php-day-09",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:48:42.946Z",
        "marked": true,
        "retriable_at": "2017-04-27T19:22:51.232Z"
      },
      {
        "id": 493962,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1542981,
        "project": {
          "id": 57,
          "name": "Day 08",
          "slug": "42-piscine-c-formation-piscine-php-day-08",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:48:45.013Z",
        "marked": true,
        "retriable_at": "2017-04-27T19:22:39.470Z"
      },
      {
        "id": 493961,
        "occurrence": 0,
        "final_mark": 18,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1542980,
        "project": {
          "id": 56,
          "name": "Day 07",
          "slug": "42-piscine-c-formation-piscine-php-day-07",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:50:47.221Z",
        "marked": true,
        "retriable_at": "2017-04-30T21:50:47.125Z"
      },
      {
        "id": 493959,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1542978,
        "project": {
          "id": 55,
          "name": "Day 06",
          "slug": "42-piscine-c-formation-piscine-php-day-06",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:52:54.463Z",
        "marked": true,
        "retriable_at": "2017-04-27T19:22:16.561Z"
      },
      {
        "id": 493222,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1541971,
        "project": {
          "id": 54,
          "name": "Day 05",
          "slug": "42-piscine-c-formation-piscine-php-day-05",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-13T17:29:43.578Z",
        "marked": true,
        "retriable_at": "2017-04-13T17:29:43.557Z"
      },
      {
        "id": 492225,
        "occurrence": 0,
        "final_mark": 77,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1541744,
        "project": {
          "id": 59,
          "name": "Rush00",
          "slug": "piscine-php-rush00",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:41:24.902Z",
        "marked": true,
        "retriable_at": "2017-04-30T21:41:23.137Z"
      },
      {
        "id": 490918,
        "occurrence": 0,
        "final_mark": 60,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1539728,
        "project": {
          "id": 53,
          "name": "Day 04",
          "slug": "42-piscine-c-formation-piscine-php-day-04",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-27T18:59:08.321Z",
        "marked": true,
        "retriable_at": "2017-04-27T18:59:07.272Z"
      },
      {
        "id": 490109,
        "occurrence": 0,
        "final_mark": 75,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1538796,
        "project": {
          "id": 52,
          "name": "Day 03",
          "slug": "42-piscine-c-formation-piscine-php-day-03",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T19:54:11.258Z",
        "marked": true,
        "retriable_at": "2017-04-30T19:54:09.597Z"
      },
      {
        "id": 489577,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1538193,
        "project": {
          "id": 51,
          "name": "Day 02",
          "slug": "42-piscine-c-formation-piscine-php-day-02",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:53:39.873Z",
        "marked": true,
        "retriable_at": "2017-04-27T19:22:05.538Z"
      },
      {
        "id": 489575,
        "occurrence": 0,
        "final_mark": 34,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1538191,
        "project": {
          "id": 50,
          "name": "Day 01",
          "slug": "42-piscine-c-formation-piscine-php-day-01",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:52:13.558Z",
        "marked": true,
        "retriable_at": "2017-04-30T21:52:13.449Z"
      },
      {
        "id": 489574,
        "occurrence": 0,
        "final_mark": 65,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1538190,
        "project": {
          "id": 49,
          "name": "Day 00",
          "slug": "42-piscine-c-formation-piscine-php-day-00",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-27T18:30:18.469Z",
        "marked": true,
        "retriable_at": "2017-04-27T18:30:17.403Z"
      },
      {
        "id": 444120,
        "occurrence": 0,
        "final_mark": 121,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1480360,
        "project": {
          "id": 2,
          "name": "GET_Next_Line",
          "slug": "get_next_line",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2016-12-13T16:42:13.197Z",
        "marked": true,
        "retriable_at": "2016-12-14T16:42:13.172Z"
      },
      {
        "id": 441419,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1476836,
        "project": {
          "id": 540,
          "name": "Fillit",
          "slug": "fillit",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2016-12-06T18:35:16.641Z",
        "marked": true,
        "retriable_at": "2016-12-08T18:35:16.458Z"
      },
      {
        "id": 433729,
        "occurrence": 0,
        "final_mark": 116,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1465028,
        "project": {
          "id": 1,
          "name": "Libft",
          "slug": "libft",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2016-11-22T18:43:14.085Z",
        "marked": true,
        "retriable_at": "2016-11-23T18:43:14.064Z"
      },
      {
        "id": 429909,
        "occurrence": 1,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1463857,
        "project": {
          "id": 756,
          "name": "Piscine Reloaded",
          "slug": "piscine-reloaded",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2016-11-03T19:06:42.434Z",
        "marked": true,
        "retriable_at": "2016-11-03T19:06:42.406Z"
      },
      {
        "id": 429003,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1459331,
        "project": {
          "id": 817,
          "name": "42 Commandements",
          "slug": "42-formation-pole-emploi-42-commandements",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2016-11-02T14:44:43.866Z",
        "marked": true,
        "retriable_at": "2016-11-02T14:44:43.842Z"
      },
      {
        "id": 1853775,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147319,
        "project": {
          "id": 1606,
          "name": "Rush 00",
          "slug": "piscine-swift-ios-rush-00",
          "parent_id": 742
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-23T22:42:13.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:33.299Z"
      },
      {
        "id": 1853774,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147318,
        "project": {
          "id": 1600,
          "name": "Day 04",
          "slug": "42cursus-piscine-swift-ios-day-04",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:43.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:33.026Z"
      },
      {
        "id": 1853773,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147317,
        "project": {
          "id": 1599,
          "name": "Day 03",
          "slug": "42cursus-piscine-swift-ios-day-03",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:30.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:32.905Z"
      },
      {
        "id": 1853772,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147316,
        "project": {
          "id": 1620,
          "name": "Day 00",
          "slug": "42cursus-piscine-python-django-day-00",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-01-29T09:42:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:32.771Z"
      },
      {
        "id": 1853771,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147315,
        "project": {
          "id": 1598,
          "name": "Day 02",
          "slug": "42cursus-piscine-swift-ios-day-02",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-16T22:42:23.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:32.646Z"
      },
      {
        "id": 1853770,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147314,
        "project": {
          "id": 1597,
          "name": "Day 01",
          "slug": "42cursus-piscine-swift-ios-day-01",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-16T22:44:54.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:31.514Z"
      },
      {
        "id": 1853769,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147313,
        "project": {
          "id": 1596,
          "name": "Day 00",
          "slug": "42cursus-piscine-swift-ios-day-00",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-16T22:42:31.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:31.369Z"
      },
      {
        "id": 1853768,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147312,
        "project": {
          "id": 1629,
          "name": "Day 09",
          "slug": "42cursus-piscine-python-django-day-09",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:38.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:31.246Z"
      },
      {
        "id": 1853767,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147311,
        "project": {
          "id": 1628,
          "name": "Day 08",
          "slug": "42cursus-piscine-python-django-day-08",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:34.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:31.124Z"
      },
      {
        "id": 1853766,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147310,
        "project": {
          "id": 1627,
          "name": "Day 07",
          "slug": "42cursus-piscine-python-django-day-07",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:30.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:30.937Z"
      },
      {
        "id": 1853765,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147309,
        "project": {
          "id": 1626,
          "name": "Day 06",
          "slug": "42cursus-piscine-python-django-day-06",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:27.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:30.818Z"
      },
      {
        "id": 1853764,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147308,
        "project": {
          "id": 1625,
          "name": "Day 05",
          "slug": "42cursus-piscine-python-django-day-05",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:23.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:30.699Z"
      },
      {
        "id": 1853763,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147307,
        "project": {
          "id": 1624,
          "name": "Day 04",
          "slug": "42cursus-piscine-python-django-day-04",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-02T22:42:16.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:30.556Z"
      },
      {
        "id": 1853762,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147306,
        "project": {
          "id": 1623,
          "name": "Day 03",
          "slug": "42cursus-piscine-python-django-day-03",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-01-29T09:43:10.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:29.421Z"
      },
      {
        "id": 1853761,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147305,
        "project": {
          "id": 1622,
          "name": "Day 02",
          "slug": "42cursus-piscine-python-django-day-02",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-01-29T09:43:03.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:29.302Z"
      },
      {
        "id": 1853760,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147304,
        "project": {
          "id": 1621,
          "name": "Day 01",
          "slug": "42cursus-piscine-python-django-day-01",
          "parent_id": 1483
        },
        "cursus_ids": [21],
        "marked_at": "2020-01-29T09:42:46.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:29.186Z"
      },
      {
        "id": 1853759,
        "occurrence": 0,
        "final_mark": 1,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147303,
        "project": {
          "id": 1486,
          "name": "Piscine Swift iOS",
          "slug": "42cursus-piscine-swift-ios",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:47.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:26.341Z"
      },
      {
        "id": 1853758,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147302,
        "project": {
          "id": 1220,
          "name": "Piscine Python Django Rush 01",
          "slug": "piscine-python-django-rush-01",
          "parent_id": null
        },
        "cursus_ids": [],
        "marked_at": "2020-02-16T22:44:55.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:26.219Z"
      },
      {
        "id": 1853757,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147301,
        "project": {
          "id": 1214,
          "name": "piscine-python-django-rush-00",
          "slug": "piscine-python-django-rush-00",
          "parent_id": null
        },
        "cursus_ids": [],
        "marked_at": "2020-02-23T22:42:29.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:26.075Z"
      },
      {
        "id": 1853756,
        "occurrence": 0,
        "final_mark": 1,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147300,
        "project": {
          "id": 1483,
          "name": "Piscine Python Django",
          "slug": "42cursus-piscine-python-django",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-16T22:44:57.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:25.963Z"
      },
      {
        "id": 1853755,
        "occurrence": 0,
        "final_mark": 120,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147299,
        "project": {
          "id": 1396,
          "name": "camagru",
          "slug": "42cursus-camagru",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2018-02-27T13:58:00.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:24.508Z"
      },
      {
        "id": 1853754,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147298,
        "project": {
          "id": 1673,
          "name": "Electronics-Old",
          "slug": "electronics-old",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2016-11-02T18:39:49.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:24.396Z"
      },
      {
        "id": 1853752,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147296,
        "project": {
          "id": 1643,
          "name": "Internship I - Peer Video",
          "slug": "internship-i-internship-i-peer-video",
          "parent_id": 1638
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:17.010Z"
      },
      {
        "id": 1853751,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147295,
        "project": {
          "id": 1642,
          "name": "internship I - Company Final Evaluation",
          "slug": "internship-i-internship-i-company-final-evaluation",
          "parent_id": 1638
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:16.855Z"
      },
      {
        "id": 1853750,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147294,
        "project": {
          "id": 1641,
          "name": "internship I - Company Mid Evaluation",
          "slug": "internship-i-internship-i-company-mid-evaluation",
          "parent_id": 1638
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:16.610Z"
      },
      {
        "id": 1853749,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147293,
        "project": {
          "id": 1639,
          "name": "Internship I - Duration",
          "slug": "internship-i-internship-i-duration",
          "parent_id": 1638
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:16.502Z"
      },
      {
        "id": 1853748,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147292,
        "project": {
          "id": 1640,
          "name": "internship I - Contract Upload",
          "slug": "internship-i-internship-i-contract-upload",
          "parent_id": 1638
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:16.302Z"
      },
      {
        "id": 1853747,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147291,
        "project": {
          "id": 1638,
          "name": "Internship I",
          "slug": "internship-i",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2019-01-10T14:24:39.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:16.177Z"
      },
      {
        "id": 1853746,
        "occurrence": 0,
        "final_mark": 109,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147290,
        "project": {
          "id": 1382,
          "name": "computorv1",
          "slug": "42cursus-computorv1",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2017-04-13T21:09:27.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:11.805Z"
      },
      {
        "id": 1853745,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147289,
        "project": {
          "id": 1470,
          "name": "lem_in",
          "slug": "42cursus-lem_in",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2017-03-21T02:14:22.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:07.236Z"
      },
      {
        "id": 1853744,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3147288,
        "project": {
          "id": 1475,
          "name": "corewar",
          "slug": "42cursus-corewar",
          "parent_id": null
        },
        "cursus_ids": [21],
        "marked_at": "2018-11-29T14:36:49.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:07.108Z"
      },
      {
        "id": 1786042,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069231,
        "project": {
          "id": 733,
          "name": "Day 04",
          "slug": "piscine-python-django-day-04",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:16.062Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:16.836Z"
      },
      {
        "id": 1786047,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069238,
        "project": {
          "id": 734,
          "name": "Rush00",
          "slug": "piscine-python-django-rush00",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-23T22:42:29.753Z",
        "marked": true,
        "retriable_at": "2020-02-23T22:42:30.240Z"
      },
      {
        "id": 1766293,
        "occurrence": 0,
        "final_mark": 1,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3043445,
        "project": {
          "id": 727,
          "name": "Piscine Python Django",
          "slug": "piscine-python-django",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:44:57.391Z",
        "marked": true,
        "retriable_at": "2020-02-23T22:42:30.026Z"
      },
      {
        "id": 1786035,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069224,
        "project": {
          "id": 749,
          "name": "Rush00",
          "slug": "piscine-swift-ios-rush00",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-23T22:42:13.714Z",
        "marked": true,
        "retriable_at": "2020-02-23T22:42:14.025Z"
      },
      {
        "id": 1763890,
        "occurrence": 0,
        "final_mark": 1,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3040796,
        "project": {
          "id": 742,
          "name": "Piscine Swift iOS",
          "slug": "piscine-swift-ios",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:47.620Z",
        "marked": true,
        "retriable_at": "2020-02-23T22:42:13.944Z"
      },
      {
        "id": 1786051,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069242,
        "project": {
          "id": 735,
          "name": "Day 05",
          "slug": "piscine-python-django-day-05",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:23.078Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:23.667Z"
      },
      {
        "id": 1786053,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069245,
        "project": {
          "id": 736,
          "name": "Day 06",
          "slug": "piscine-python-django-day-06",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:27.162Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:27.862Z"
      },
      {
        "id": 1786059,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069253,
        "project": {
          "id": 737,
          "name": "Day 07",
          "slug": "piscine-python-django-day-07",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:30.915Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:31.428Z"
      },
      {
        "id": 1786065,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069259,
        "project": {
          "id": 738,
          "name": "Day 08",
          "slug": "piscine-python-django-day-08",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:34.250Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:34.619Z"
      },
      {
        "id": 150180,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 144559,
        "project": {
          "id": 161,
          "name": "Day 07",
          "slug": "piscine-c-day-07",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-12-08T16:21:54.856Z",
        "marked": true,
        "retriable_at": "2015-12-08T16:21:54.852Z"
      },
      {
        "id": 151697,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146063,
        "project": {
          "id": 175,
          "name": "00",
          "slug": "piscine-c-day-09-00",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:08.533Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:08.520Z"
      },
      {
        "id": 151698,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146064,
        "project": {
          "id": 185,
          "name": "01",
          "slug": "piscine-c-day-09-01",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:08.699Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:08.673Z"
      },
      {
        "id": 151699,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146065,
        "project": {
          "id": 186,
          "name": "02",
          "slug": "piscine-c-day-09-02",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:08.885Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:08.866Z"
      },
      {
        "id": 151700,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146066,
        "project": {
          "id": 187,
          "name": "03",
          "slug": "piscine-c-day-09-03",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:09.011Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:08.998Z"
      },
      {
        "id": 151701,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146067,
        "project": {
          "id": 188,
          "name": "04",
          "slug": "piscine-c-day-09-04",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:09.190Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:09.173Z"
      },
      {
        "id": 151702,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146068,
        "project": {
          "id": 189,
          "name": "05",
          "slug": "piscine-c-day-09-05",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:09.378Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:09.356Z"
      },
      {
        "id": 151704,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146070,
        "project": {
          "id": 191,
          "name": "07",
          "slug": "piscine-c-day-09-07",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:09.638Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:09.627Z"
      },
      {
        "id": 139499,
        "occurrence": 0,
        "final_mark": 33,
        "status": "finished",
        "validated?": true,
        "current_team_id": 135376,
        "project": {
          "id": 155,
          "name": "Day 01",
          "slug": "piscine-c-day-01",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T01:58:01.348Z",
        "marked": true,
        "retriable_at": "2015-08-04T10:19:31.000Z"
      },
      {
        "id": 163012,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 161298,
        "project": {
          "id": 169,
          "name": "Rush 01",
          "slug": "piscine-c-rush-01",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-08-08T22:12:13.264Z",
        "marked": true,
        "retriable_at": "2015-08-14T19:01:08.000Z"
      },
      {
        "id": 170745,
        "occurrence": 0,
        "final_mark": 33,
        "status": "finished",
        "validated?": true,
        "current_team_id": 164442,
        "project": {
          "id": 406,
          "name": "Exam02",
          "slug": "piscine-c-exam02",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-21T19:00:18.248Z",
        "marked": true,
        "retriable_at": "2015-08-18T18:09:37.000Z"
      },
      {
        "id": 171750,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 165417,
        "project": {
          "id": 170,
          "name": "Rush 02",
          "slug": "piscine-c-rush-02",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-08-08T22:13:48.043Z",
        "marked": true,
        "retriable_at": "2015-08-21T19:00:47.000Z"
      },
      {
        "id": 173228,
        "occurrence": 0,
        "final_mark": 45,
        "status": "finished",
        "validated?": true,
        "current_team_id": 166217,
        "project": {
          "id": 407,
          "name": "Exam Final",
          "slug": "piscine-c-exam-final",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-29T12:27:46.446Z",
        "marked": true,
        "retriable_at": "2015-08-26T14:58:46.000Z"
      },
      {
        "id": 148223,
        "occurrence": 0,
        "final_mark": 60,
        "status": "finished",
        "validated?": true,
        "current_team_id": 142786,
        "project": {
          "id": 158,
          "name": "Day 04",
          "slug": "piscine-c-day-04",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-08-06T10:08:27.338Z",
        "marked": true,
        "retriable_at": "2015-08-07T21:53:47.000Z"
      },
      {
        "id": 166942,
        "occurrence": 0,
        "final_mark": 10,
        "status": "finished",
        "validated?": false,
        "current_team_id": 160528,
        "project": {
          "id": 162,
          "name": "Day 08",
          "slug": "piscine-c-day-08",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-31T13:54:52.560Z",
        "marked": true,
        "retriable_at": "2015-08-14T08:12:17.000Z"
      },
      {
        "id": 172507,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 165256,
        "project": {"id": 174, "name": "BSQ", "slug": "bsq", "parent_id": null},
        "cursus_ids": [4],
        "marked_at": "2017-04-28T22:27:40.424Z",
        "marked": true,
        "retriable_at": "2017-04-28T22:27:40.298Z"
      },
      {
        "id": 151703,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 146069,
        "project": {
          "id": 190,
          "name": "06",
          "slug": "piscine-c-day-09-06",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2017-09-01T14:37:09.512Z",
        "marked": true,
        "retriable_at": "2017-09-01T14:37:09.502Z"
      },
      {
        "id": 163011,
        "occurrence": 0,
        "final_mark": 48,
        "status": "finished",
        "validated?": true,
        "current_team_id": 156851,
        "project": {
          "id": 405,
          "name": "Exam01",
          "slug": "piscine-c-exam01",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-14T18:58:44.990Z",
        "marked": true,
        "retriable_at": "2015-08-12T11:12:44.000Z"
      },
      {
        "id": 149605,
        "occurrence": 0,
        "final_mark": 13,
        "status": "finished",
        "validated?": false,
        "current_team_id": 143997,
        "project": {
          "id": 159,
          "name": "Day 05",
          "slug": "piscine-c-day-05",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T03:11:56.089Z",
        "marked": true,
        "retriable_at": "2015-08-09T14:06:57.000Z"
      },
      {
        "id": 149606,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 143998,
        "project": {
          "id": 160,
          "name": "Day 06",
          "slug": "piscine-c-day-06",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-31T14:31:07.196Z",
        "marked": true,
        "retriable_at": "2015-08-09T14:07:03.000Z"
      },
      {
        "id": 169709,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 163406,
        "project": {
          "id": 165,
          "name": "Day 12",
          "slug": "piscine-c-day-12",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T17:51:58.051Z",
        "marked": true,
        "retriable_at": "2015-08-17T12:13:29.000Z"
      },
      {
        "id": 169708,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 163405,
        "project": {
          "id": 164,
          "name": "Day 11",
          "slug": "piscine-c-day-11",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T18:01:27.459Z",
        "marked": true,
        "retriable_at": "2015-08-17T12:13:07.000Z"
      },
      {
        "id": 169707,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 163404,
        "project": {
          "id": 163,
          "name": "Day 10",
          "slug": "piscine-c-day-10",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T16:08:50.110Z",
        "marked": true,
        "retriable_at": "2015-08-17T12:12:55.000Z"
      },
      {
        "id": 170321,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 164021,
        "project": {
          "id": 166,
          "name": "Day 13",
          "slug": "piscine-c-day-13",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T18:01:24.539Z",
        "marked": true,
        "retriable_at": "2015-08-18T10:57:19.000Z"
      },
      {
        "id": 430650,
        "occurrence": 6,
        "final_mark": 88,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1529097,
        "project": {
          "id": 11,
          "name": "C Exam Alone In The Dark - Beginner",
          "slug": "c-exam-alone-in-the-dark-beginner",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-03-21T17:13:36.940Z",
        "marked": true,
        "retriable_at": "2017-03-21T17:09:11.039Z"
      },
      {
        "id": 469914,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1513428,
        "project": {
          "id": 836,
          "name": "Ceryneian Hind",
          "slug": "hercules-ceryneian-hind",
          "parent_id": 833
        },
        "cursus_ids": [1],
        "marked_at": "2017-03-01T05:27:12.765Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 1853781,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147325,
        "project": {
          "id": 1607,
          "name": "Rush 01",
          "slug": "piscine-swift-ios-rush-01",
          "parent_id": 742
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-16T22:43:10.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:35.264Z"
      },
      {
        "id": 1853780,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147324,
        "project": {
          "id": 1605,
          "name": "Day 09",
          "slug": "42cursus-piscine-swift-ios-day-09",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:44.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:34.985Z"
      },
      {
        "id": 1853779,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147323,
        "project": {
          "id": 1604,
          "name": "Day 08",
          "slug": "42cursus-piscine-swift-ios-day-08",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:11.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:34.859Z"
      },
      {
        "id": 1853778,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147322,
        "project": {
          "id": 1603,
          "name": "Day 07",
          "slug": "42cursus-piscine-swift-ios-day-07",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:43.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:33.712Z"
      },
      {
        "id": 1853777,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147321,
        "project": {
          "id": 1602,
          "name": "Day 06",
          "slug": "42cursus-piscine-swift-ios-day-06",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:46.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:33.554Z"
      },
      {
        "id": 1853776,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3147320,
        "project": {
          "id": 1601,
          "name": "Day 05",
          "slug": "42cursus-piscine-swift-ios-day-05",
          "parent_id": 1486
        },
        "cursus_ids": [21],
        "marked_at": "2020-02-17T22:42:44.000Z",
        "marked": true,
        "retriable_at": "2020-02-26T04:18:33.425Z"
      },
      {
        "id": 489573,
        "occurrence": 0,
        "final_mark": 50,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1538189,
        "project": {
          "id": 48,
          "name": "Piscine PHP",
          "slug": "piscine-php",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T21:52:13.376Z",
        "marked": true,
        "retriable_at": "2017-04-30T21:52:13.280Z"
      },
      {
        "id": 431316,
        "occurrence": 0,
        "final_mark": null,
        "status": "parent",
        "validated?": null,
        "current_team_id": null,
        "project": {
          "id": 61,
          "name": "Rushes",
          "slug": "rushes",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": null,
        "marked": false,
        "retriable_at": null
      },
      {
        "id": 431320,
        "occurrence": 0,
        "final_mark": null,
        "status": "parent",
        "validated?": null,
        "current_team_id": null,
        "project": {
          "id": 411,
          "name": "Electronics",
          "slug": "electronics",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": null,
        "marked": false,
        "retriable_at": null
      },
      {
        "id": 729170,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1821456,
        "project": {
          "id": 96,
          "name": "Savoir Relier",
          "slug": "savoir-relier",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-10-30T18:07:18.402Z",
        "marked": true,
        "retriable_at": "2017-10-30T18:07:17.452Z"
      },
      {
        "id": 148217,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 142783,
        "project": {
          "id": 172,
          "name": "Match-N-Match",
          "slug": "piscine-c-match-n-match",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-31T14:01:39.444Z",
        "marked": true,
        "retriable_at": "2015-08-07T21:48:08.000Z"
      },
      {
        "id": 139168,
        "occurrence": 0,
        "final_mark": 20,
        "status": "finished",
        "validated?": false,
        "current_team_id": 135045,
        "project": {
          "id": 154,
          "name": "Day 00",
          "slug": "piscine-c-day-00",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T01:46:37.401Z",
        "marked": true,
        "retriable_at": "2015-08-03T19:06:40.000Z"
      },
      {
        "id": 139505,
        "occurrence": 0,
        "final_mark": 20,
        "status": "finished",
        "validated?": false,
        "current_team_id": 135382,
        "project": {
          "id": 157,
          "name": "Day 03",
          "slug": "piscine-c-day-03",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-08-06T09:56:25.143Z",
        "marked": true,
        "retriable_at": "2015-08-04T10:20:05.000Z"
      },
      {
        "id": 151696,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 146062,
        "project": {
          "id": 167,
          "name": "Day 09",
          "slug": "piscine-c-day-09",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-31T13:58:00.151Z",
        "marked": true,
        "retriable_at": "2015-08-10T22:35:20.000Z"
      },
      {
        "id": 144188,
        "occurrence": 0,
        "final_mark": 50,
        "status": "finished",
        "validated?": true,
        "current_team_id": 138710,
        "project": {
          "id": 404,
          "name": "Exam00",
          "slug": "piscine-c-exam00",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2015-08-07T18:50:58.841Z",
        "marked": true,
        "retriable_at": "2015-08-05T14:43:09.000Z"
      },
      {
        "id": 464897,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1507629,
        "project": {
          "id": 823,
          "name": "libunit",
          "slug": "42-formation-pole-emploi-rushes-libunit",
          "parent_id": 61
        },
        "cursus_ids": [1],
        "marked_at": "2017-05-18T18:55:25.775Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 465112,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1507228,
        "project": {"id": 4, "name": "FdF", "slug": "fdf", "parent_id": null},
        "cursus_ids": [1],
        "marked_at": "2017-02-22T02:53:58.469Z",
        "marked": true,
        "retriable_at": "2017-02-26T02:53:56.907Z"
      },
      {
        "id": 465110,
        "occurrence": 0,
        "final_mark": 13,
        "status": "parent",
        "validated?": false,
        "current_team_id": null,
        "project": {
          "id": 833,
          "name": "Hercules",
          "slug": "hercules",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-03-01T05:27:12.727Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 465371,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1507837,
        "project": {
          "id": 834,
          "name": "Nemean Lion",
          "slug": "hercules-nemean-lion",
          "parent_id": 833
        },
        "cursus_ids": [1],
        "marked_at": "2017-02-12T00:43:41.683Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 1786040,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069229,
        "project": {
          "id": 755,
          "name": "Rush01",
          "slug": "piscine-swift-ios-rush01",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:43:10.825Z",
        "marked": true,
        "retriable_at": "2020-02-16T22:43:13.584Z"
      },
      {
        "id": 470825,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1514536,
        "project": {
          "id": 29,
          "name": "Lem_in",
          "slug": "lem_in",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2017-03-21T02:14:22.187Z",
        "marked": true,
        "retriable_at": "2017-03-28T02:14:20.874Z"
      },
      {
        "id": 294447,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316305,
        "project": {
          "id": 198,
          "name": "14",
          "slug": "piscine-c-day-09-14",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:33.317Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:33.300Z"
      },
      {
        "id": 294441,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316299,
        "project": {
          "id": 192,
          "name": "08",
          "slug": "piscine-c-day-09-08",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:24.635Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:24.613Z"
      },
      {
        "id": 294442,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316300,
        "project": {
          "id": 193,
          "name": "09",
          "slug": "piscine-c-day-09-09",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:25.269Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:25.255Z"
      },
      {
        "id": 294454,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316312,
        "project": {
          "id": 204,
          "name": "20",
          "slug": "piscine-c-day-09-20",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:37.072Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:37.061Z"
      },
      {
        "id": 294449,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316307,
        "project": {
          "id": 199,
          "name": "15",
          "slug": "piscine-c-day-09-15",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:33.959Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:33.931Z"
      },
      {
        "id": 294443,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316301,
        "project": {
          "id": 194,
          "name": "10",
          "slug": "piscine-c-day-09-10",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:25.941Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:25.933Z"
      },
      {
        "id": 294450,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316308,
        "project": {
          "id": 200,
          "name": "16",
          "slug": "piscine-c-day-09-16",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:34.659Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:34.649Z"
      },
      {
        "id": 294455,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316313,
        "project": {
          "id": 205,
          "name": "21",
          "slug": "piscine-c-day-09-21",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:37.669Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:37.660Z"
      },
      {
        "id": 294444,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316302,
        "project": {
          "id": 195,
          "name": "11",
          "slug": "piscine-c-day-09-11",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:26.821Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:26.800Z"
      },
      {
        "id": 294451,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316309,
        "project": {
          "id": 201,
          "name": "17",
          "slug": "piscine-c-day-09-17",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:35.237Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:35.220Z"
      },
      {
        "id": 294445,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316303,
        "project": {
          "id": 196,
          "name": "12",
          "slug": "piscine-c-day-09-12",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:27.600Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:27.570Z"
      },
      {
        "id": 294456,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316314,
        "project": {
          "id": 206,
          "name": "22",
          "slug": "piscine-c-day-09-22",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:38.369Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:38.351Z"
      },
      {
        "id": 294446,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316304,
        "project": {
          "id": 197,
          "name": "13",
          "slug": "piscine-c-day-09-13",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:30.421Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:30.382Z"
      },
      {
        "id": 294452,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316310,
        "project": {
          "id": 202,
          "name": "18",
          "slug": "piscine-c-day-09-18",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:35.927Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:35.919Z"
      },
      {
        "id": 294457,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316315,
        "project": {
          "id": 207,
          "name": "23",
          "slug": "piscine-c-day-09-23",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:39.198Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:39.180Z"
      },
      {
        "id": 294453,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": true,
        "current_team_id": 1316311,
        "project": {
          "id": 203,
          "name": "19",
          "slug": "piscine-c-day-09-19",
          "parent_id": 167
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-15T16:32:36.556Z",
        "marked": true,
        "retriable_at": "2016-07-15T16:32:36.548Z"
      },
      {
        "id": 499848,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 1549152,
        "project": {
          "id": 60,
          "name": "Rush01",
          "slug": "piscine-php-rush01",
          "parent_id": 48
        },
        "cursus_ids": [1],
        "marked_at": "2017-04-30T23:12:56.047Z",
        "marked": true,
        "retriable_at": "2017-04-16T23:12:31.366Z"
      },
      {
        "id": 1773628,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3053009,
        "project": {
          "id": 750,
          "name": "Day 05",
          "slug": "piscine-swift-ios-day-05",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:44.271Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:45.681Z"
      },
      {
        "id": 1786076,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069272,
        "project": {
          "id": 741,
          "name": "Rush01",
          "slug": "piscine-python-django-rush01",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:44:55.755Z",
        "marked": true,
        "retriable_at": "2020-02-16T22:45:00.345Z"
      },
      {
        "id": 1776252,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3057101,
        "project": {
          "id": 752,
          "name": "Day 07",
          "slug": "piscine-swift-ios-day-07",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:43.957Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:45.416Z"
      },
      {
        "id": 1786068,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3069263,
        "project": {
          "id": 740,
          "name": "Day 09",
          "slug": "piscine-python-django-day-09",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-02T22:42:38.372Z",
        "marked": true,
        "retriable_at": "2020-02-02T22:42:38.998Z"
      },
      {
        "id": 139501,
        "occurrence": 0,
        "final_mark": 5,
        "status": "finished",
        "validated?": false,
        "current_team_id": 135378,
        "project": {
          "id": 156,
          "name": "Day 02",
          "slug": "piscine-c-day-02",
          "parent_id": null
        },
        "cursus_ids": [4],
        "marked_at": "2016-07-23T02:16:26.716Z",
        "marked": true,
        "retriable_at": "2015-08-04T10:19:58.000Z"
      },
      {
        "id": 1780398,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3062144,
        "project": {
          "id": 753,
          "name": "Day 08",
          "slug": "piscine-swift-ios-day-08",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:11.029Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:11.320Z"
      },
      {
        "id": 1776251,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3057100,
        "project": {
          "id": 751,
          "name": "Day 06",
          "slug": "piscine-swift-ios-day-06",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:46.926Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:48.150Z"
      },
      {
        "id": 1780399,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3062145,
        "project": {
          "id": 754,
          "name": "Day 09",
          "slug": "piscine-swift-ios-day-09",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:44.632Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:45.963Z"
      },
      {
        "id": 1189950,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2362126,
        "project": {
          "id": 118,
          "name": "First Internship",
          "slug": "first-internship",
          "parent_id": null
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-22T19:54:01.420Z",
        "marked": true,
        "retriable_at": "2019-12-22T19:54:02.107Z"
      },
      {
        "id": 1738234,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 3011435,
        "project": {
          "id": 121,
          "name": "Peer Video",
          "slug": "first-internship-peer-video",
          "parent_id": 118
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-22T19:54:01.226Z",
        "marked": true,
        "retriable_at": "2019-12-22T19:54:02.137Z"
      },
      {
        "id": 1189956,
        "occurrence": 0,
        "final_mark": 100,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2362138,
        "project": {
          "id": 119,
          "name": "Contract Upload",
          "slug": "first-internship-contract-upload",
          "parent_id": 118
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-04T11:14:09.265Z",
        "marked": true,
        "retriable_at": "2019-12-04T11:14:09.325Z"
      },
      {
        "id": 1189957,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2362139,
        "project": {
          "id": 140,
          "name": "Duration",
          "slug": "first-internship-duration",
          "parent_id": 118
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-04T11:14:24.909Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 1189958,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2362140,
        "project": {
          "id": 826,
          "name": "Company mid evaluation",
          "slug": "first-internship-company-mid-evaluation",
          "parent_id": 118
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-05T22:17:46.504Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 1189959,
        "occurrence": 0,
        "final_mark": 125,
        "status": "finished",
        "validated?": true,
        "current_team_id": 2362141,
        "project": {
          "id": 120,
          "name": "Company final evaluation",
          "slug": "first-internship-company-final-evaluation",
          "parent_id": 118
        },
        "cursus_ids": [1],
        "marked_at": "2019-12-05T22:26:50.658Z",
        "marked": true,
        "retriable_at": null
      },
      {
        "id": 1766295,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3043447,
        "project": {
          "id": 746,
          "name": "Day 00",
          "slug": "piscine-python-django-day-00",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-01-29T09:42:39.332Z",
        "marked": true,
        "retriable_at": "2020-01-29T09:42:39.439Z"
      },
      {
        "id": 1763892,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3040798,
        "project": {
          "id": 743,
          "name": "Day 00",
          "slug": "piscine-swift-ios-day-00",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:42:31.821Z",
        "marked": true,
        "retriable_at": "2020-02-16T22:42:32.334Z"
      },
      {
        "id": 1767003,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3044369,
        "project": {
          "id": 731,
          "name": "Day 02",
          "slug": "piscine-python-django-day-02",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-01-29T09:43:03.426Z",
        "marked": true,
        "retriable_at": "2020-01-29T09:43:03.536Z"
      },
      {
        "id": 1767004,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3044370,
        "project": {
          "id": 745,
          "name": "Day 02",
          "slug": "piscine-swift-ios-day-02",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:42:23.334Z",
        "marked": true,
        "retriable_at": "2020-02-16T22:42:25.535Z"
      },
      {
        "id": 1768305,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3045874,
        "project": {
          "id": 732,
          "name": "Day 03",
          "slug": "piscine-python-django-day-03",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-01-29T09:43:10.704Z",
        "marked": true,
        "retriable_at": "2020-01-29T09:43:10.808Z"
      },
      {
        "id": 1766294,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3043446,
        "project": {
          "id": 730,
          "name": "Day 01",
          "slug": "piscine-python-django-day-01",
          "parent_id": 727
        },
        "cursus_ids": [1],
        "marked_at": "2020-01-29T09:42:46.126Z",
        "marked": true,
        "retriable_at": "2020-01-29T09:42:46.233Z"
      },
      {
        "id": 1766289,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3043441,
        "project": {
          "id": 744,
          "name": "Day 01",
          "slug": "piscine-swift-ios-day-01",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-16T22:44:54.001Z",
        "marked": true,
        "retriable_at": "2020-02-16T22:44:55.669Z"
      },
      {
        "id": 1770250,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3048684,
        "project": {
          "id": 748,
          "name": "Day 04",
          "slug": "piscine-swift-ios-day-04",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:43.219Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:45.053Z"
      },
      {
        "id": 1770249,
        "occurrence": 0,
        "final_mark": 0,
        "status": "finished",
        "validated?": false,
        "current_team_id": 3048683,
        "project": {
          "id": 747,
          "name": "Day 03",
          "slug": "piscine-swift-ios-day-03",
          "parent_id": 742
        },
        "cursus_ids": [1],
        "marked_at": "2020-02-17T22:42:30.002Z",
        "marked": true,
        "retriable_at": "2020-02-17T22:42:30.764Z"
      },
    ],
  ),
];
