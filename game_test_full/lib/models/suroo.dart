class Suroo {
  const Suroo({
    required this.text,
    required this.jooptor,
    required this.image,
  });
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  const Joop({
    this.isTrue = false,
    required this.text,
  });
  final bool isTrue;
  final String text;
}

const s1 = Suroo(
  text: 'Ashabad',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Koreya'),
    Joop(text: 'Afganistan'),
    Joop(text: 'Turkmenistan', isTrue: true),
  ],
  image: 'ashhabad',
);

const s2 = Suroo(
  text: 'Astana',
  jooptor: [
    Joop(text: 'Kazakhstan', isTrue: true),
    Joop(text: 'Japan'),
    Joop(text: 'Russia'),
    Joop(text: 'Turkmenistan'),
  ],
  image: 'Astana',
);

const s3 = Suroo(
  text: 'Bishkek',
  jooptor: [
    Joop(text: 'Kyrgyzstan', isTrue: true),
    Joop(text: 'Singapur'),
    Joop(text: 'British'),
    Joop(text: 'Sweden'),
  ],
  image: 'Bishkek',
);

const s4 = Suroo(
  text: 'Dushanbe',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Koreya'),
    Joop(text: 'Afganistan'),
    Joop(text: 'Tajikistan', isTrue: true),
  ],
  image: 'Dushanbe',
);

const s5 = Suroo(
  text: 'New-Deli',
  jooptor: [
    Joop(text: 'Iran'),
    Joop(text: 'Pakistan'),
    Joop(text: 'India', isTrue: true),
    Joop(text: 'Indonesia'),
  ],
  image: 'New-Deli',
);

const s6 = Suroo(
  text: 'Pekin',
  jooptor: [
    Joop(text: 'Uzbekistan'),
    Joop(text: 'China', isTrue: true),
    Joop(text: 'Koreya'),
    Joop(text: 'Taiwan'),
  ],
  image: 'Pekin',
);

const s7 = Suroo(
  text: 'Seul',
  jooptor: [
    Joop(text: 'Koreya', isTrue: true),
    Joop(text: 'Tailand'),
    Joop(text: 'China'),
    Joop(text: 'Vietnam'),
  ],
  image: 'Suel',
);

const s8 = Suroo(
  text: 'Tashkent',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Tajikistan'),
    Joop(text: 'Uzbekistan', isTrue: true),
    Joop(text: 'Azerbayjan'),
  ],
  image: 'Tashkent',
);

const s9 = Suroo(
  text: 'Tokyo',
  jooptor: [
    Joop(text: 'Japan', isTrue: true),
    Joop(text: 'Kongo'),
    Joop(text: 'Singapur'),
    Joop(text: 'Myanma'),
  ],
  image: 'Tokyo',
);

const s10 = Suroo(
  text: 'Ulan-Bator',
  jooptor: [
    Joop(text: 'Mongolia', isTrue: true),
    Joop(text: 'Nepal'),
    Joop(text: 'France'),
    Joop(text: 'Burundi'),
  ],
  image: 'Ulan-Bator',
);
