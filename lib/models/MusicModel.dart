class musicModel {
  String name;
  String image;
  String minPrice;
  String maxPrice;
  String description;
  String story;
  String mainPriceTitle;
  String MaxPriceTitle;

  musicModel({
    required this.mainPriceTitle,
    required this.MaxPriceTitle,
    required this.name,
    required this.image,
    required this.minPrice,
    required this.maxPrice,
    required this.description,
    required this.story,
  });
}

List<musicModel> musicList= [
  musicModel(name: 'گیتار',
      image: 'assets/images/guitar.jpg',
      mainPriceTitle: 'کمترین قیمت',
      MaxPriceTitle: 'بیشترین قیمت',
      minPrice: '700000 ',
      maxPrice: '100000000',
      description: "ساز شناسی",
      story: 'گیتار نوعی ساز زهی است که با پیک یا انگشت نواخته می‌شود و از این جهت که سیم‌های آن در اثر ارتعاش تولید صدا می‌کنند، به سازهای گروه زهی تعلق دارد. این نوع گیتار شش سیم دارد و این ساز علاوه برداشتن قدمت تاریخی قابل توجه (چه از لحاظ ساختار آن و چه از لحاظ تکنیک‌های نوازندگی) توانسته‌است هم‌گام با تحولات موسیقی غرب پیشرفت چشمگیری داشته باشد'),
  musicModel(name: 'درام',
      image: 'assets/images/drum.jpg',
      mainPriceTitle: 'کمترین قیمت',
      MaxPriceTitle: 'بیشترین قیمت',
      minPrice: '40',
      maxPrice: '5000',
      description: "ساز شناسی ",
      story: 'spanish'),
  musicModel(name: 'پیانو',
      image: 'assets/images/piano.jpg',
      mainPriceTitle: 'کمترین قیمت',
      MaxPriceTitle: 'بیشترین قیمت',
      minPrice: '40',
      maxPrice: '5000',
      description: "ساز شناسی  ",
      story: 'spanish'),
  musicModel(name: 'ساکسیفون',
      image: 'assets/images/saxsiphone.jpg',
      mainPriceTitle: 'کمترین قیمت',
      MaxPriceTitle: 'بیشترین قیمت',
      minPrice: '40',
      maxPrice: '5000',
      description: "ساز شناسی ",
      story: 'spanish'),
];