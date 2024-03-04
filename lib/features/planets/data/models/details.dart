// ignore_for_file: public_member_api_docs, sort_constructors_first
class Planet {
  String image;
  String background;
  String title;
  String discription;
  String discription1;
  String discription2;
  String discription3;

  Planet(
      {required this.image,
      required this.background,
      required this.title,
      required this.discription,
      required this.discription1,
      required this.discription2,
      required this.discription3});
}

List<Planet> planetList = [
  Planet(
    title: 'Uranus Overview',
    image: 'assets/images/uranus.png',
    discription: "The first planet discovered with the aid of a telescope",
    discription1:
        'Uranus is very cold and windy. It is surrounded by faint rings and more than two dozen small moons as it rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.',
    discription2:
        'Uranus is blue-green in color due to large amounts of methane, which absorbs red light but allows blues to be reflected back into space. The atmosphere is mostly hydrogen and helium, but also includes large amounts of water, ammonia and methane.',
    discription3:
        'Astronomer William Herschel tried unsuccessfully to name his discovery Georgium Sidus after his patron, English king George III. Instead, the planet was eventually named for Uranus, the Greek god of the sky, who was also the father of Kronos (or Saturn in Roman mythology).',
    background: 'assets/images/Uranus Overview.png',
  ),
  Planet(
    title: 'Neptune Overview',
    image: 'assets/images/neptune.png',
    discription: 'The first planet discovered with math',
    discription1:
        'Dark,cold and whipped by supersonic winds, giant Neptune is the eighth and most distant major planet orbiting our Sun. More than 30 times as far from the Sun as Earth, Neptune is not visible to the naked eye. In 2011, Neptune completed its first 165-year orbit since its discovery.',
    discription2:
        'The planet’s rich blue color comes from methane in its atmosphere, which absorbs red wavelengths of light but allows blue ones to be reflected back into space.',
    discription3:
        'Neptune was the first planet located through mathematical calculations. Using predictions sent him by French astronomer Urban Le Verrier, based on disturbances in the orbit of Uranus, German asstronomer Johann Galle was first to observe the planet in 1846. The planet is named after the Roman god of the sea, as suggested by Le Verrier.',
    background: 'assets/images/Neptune Overview.png',
  ),
  Planet(
    title: 'Pluto Overview',
    image: 'assets/images/pluto.png',
    discription:
        "Pluto's heart-shaped glacier is about the size of Texas and Oklahoma",
    discription1:
        'Pluto is a complex and mysterious world with mountains, valleys, plains, craters, and apparently even glaciers. Discovered in 1930, Pluto was long considered our solar system’s ninth planet But after the discovery that many similar, intriguing worlds inhabit the distant region beyond Neptune known as the Kuiper Belt, icy Pluto was reclassified as a dwarf planet.',
    discription2:
        'NASA’s New Horizons was the first spacecraft to explore Pluto up close, flying by the dwarf planet and its moons in 2015.Pluto is named after the Roman god of the underworld. It is the only planet named by an 11-year-old girl.',
    discription3:
        'NASA’s New Horizons was the first spacecraft to explore Pluto up close, flying by the dwarf planet and its moons in 2015.Pluto is named after the Roman god of the underworld. It is the only planet named by an 11-year-old girl.',
    background: 'assets/images/Pluto Overview.png',
  ),
  Planet(
    title: 'Mercury Overview',
    image: 'assets/images/mercury.png',
    discription:
        "“From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth”",
    discription1:
        'Mercury—the smallest planet in our solar system and nearest to the Sun—is only slightly larger than Earth’s Moon. Its surface is covered in tens of thousands of impact craters.',
    discription2:
        'From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as 11 times brighter.',
    discription3:
        'Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system— that title belongs to nearby Venus, thanks to its dense atmosphere. But Mercury is the fastest planet, zipping around the Sun every 88 Earth days. Mercury is appropriately named for the swiftest of the ancient Roman gods.',
    background: 'assets/images/Mercury Overview.png',
  ),
  Planet(
    title: 'Venus Overview',
    image: 'assets/images/venus.png',
    discription:
        "“Although it's similar in structure and size to Earth, Venus is hottest planet in our solar system”",
    discription1:
        'Venus is a cloud-swaddled planet named for a love goddess, and often called Earth’s twin. But pull up a bit closer, and Venus turns hellish. Our nearest planetary neighbor, the second planet from the Sun, has a surface hot enough to melt lead. The atmosphere is so thick that, from the surface, the Sun is just a smear of light.',
    discription2:
        'Venus spins backward, has a day longer than its year, and lacks any semblance of seasons. It might once have been a habitable ocean world, like Earth, but that was at least a billion years ago.',
    discription3:
        'The present-day surface of volcanic rock is blasted by high temperatures and pressures. Asked if the surface of Venus is likely to be life-bearing today, we can give a quick answer: a hard “no.” The present-day surface of ',
    background: 'assets/images/Venus Overview.png',
  ),
  Planet(
    title: 'Mars Overview',
    image: 'assets/images/mars.png',
    discription: "“The only planet we know of inhabited entirely by robot”",
    discription1:
        'Mars is no place for the faint heated. It’s dry, rocky, and bitter cold. The fourth planet from the Sun, Mars is one of Earth’s two closest planetary neighbors (Venus is the other). Mars is one of the easiest planets to spot in the night sky – it looks like a bright red point of light.',
    discription2:
        'Despite being inhospitable to humans, robotic explorers – like NASA’s Perseverance rover – are serving as pathfinders to eventually get humans to the surface of the Red Planet.',
    discription3:
        'Mars is the fourth planet from the Sun and is also known as the Red Planet due to the reddish color of its surface. Mars is one of the most explored bodies in our solar system, and it’s the only planet where we’ve sent rovers to roam the alien landscape. NASA missions have found lots of evidence that Mars was much wetter and warmer, with a thicker atmosphere, billions of years ago.',
    background: 'assets/images/Mars Overv.png',
  ),
  Planet(
    title: 'Jupiter Overview',
    image: 'assets/images/jupiter.png',
    discription:
        "“Jupiter is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined”",
    discription1:
        'Jupiter’s stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years. Jupiter is named for the king of the ancient Roman gods.​',
    discription2:
        'Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined.',
    discription3:
        'While planet Jupiter is an unlikely place for living things to take hold, the same is not true of some of its many moons. Europa is one of the likeliest places to find life elsewhere in our solar system. There is evidence of a vast ocean just beneath its icy crust, where life could possibly be supported.',
    background: 'assets/images/Jupiter Overview.png',
  ),
  Planet(
    title: 'Saturn Overview',
    image: 'assets/images/saturn.png',
    discription:
        "“Saturn's beautiful rings are relatively young. They may have formed in the era of the dinosaurs here on Earth”",
    discription1:
        'Saturn is the sixth planet from the Sun and the second largest planet in our solar system. Adorned with a dazzling system of icy rings, Saturn is unique among the planets.',
    discription2:
        'The farthest planet from Earth discovered by the unaided human eye, Saturn has been known since ancient times. The planet is named for the Roman god of agriculture and wealth, who was also the father of Jupiter.',
    discription3:
        'Saturn’s environment is not conducive to life as we know it. The temperatures, pressures, and materials that characterize this planet are most likely too extreme and volatile for organisms to adapt to. Saturn’s environment is not conducive to life as we know it. The temperatures, pressures, and materials that characterize this planet are most likely too extreme and volatile for organisms to adapt to.',
    background: 'assets/images/Saturn Ove.png',
  ),
];
