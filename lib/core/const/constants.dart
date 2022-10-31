class Constants {
  const Constants._();

  static const int timeoutInMillisecond = 20000;
  static const int longTimeoutInMillisecond = 120000;

  static const String placeholderPassword = '*********';

  static const String placeholderAvatarUrl =
      'https://secure.gravatar.com/avatar/285be7eb287534ee4b7bc09d8da51b9d?s=256&d=mm&r=g';

  static const List<String> typesNeraca = [
    'total aset lancar',
    'total aset tetap',
    'total hutang lancar',
    'total hutang jangka pendek',
    'total hutang bersih',
    'total aktiva',
    'total pasiva',
  ];

  static const List<String> typesLabaRugi = [
    'total penjualan bersih',
    'total biaya operasional',
    'total biaya administrasi',
    'total biaya biaya',
    'laba',
  ];
}
