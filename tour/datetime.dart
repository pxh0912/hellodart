///https://dart.cn/guides/libraries/library-tour#dates-and-times
//日期和时间
void main() {
  var now = DateTime.now();

  var y2k = DateTime(2000); // January 1, 2000

  y2k = DateTime(2000, 1, 2); // January 2, 2000
  assert(y2k.millisecondsSinceEpoch == 946684800000);

  y2k = DateTime.utc(2000); // 1/1/2000, UTC

  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

  y2k = DateTime.parse('2000-01-01T00:00:00Z');

  var sameTimeLastYear = now.copyWith(year: now.year - 1);
  var unixEpoch = DateTime.utc(1970);
  assert(unixEpoch.millisecondsSinceEpoch == 0);  // millisecondsSinceEpoch 属性返回自 “Unix 纪元（January 1, 1970, UTC）”以来的毫秒数
  
  var y2001 = y2k.add(const Duration(days: 366));
  assert(y2001.year == 2001);

  var december2000 = y2001.subtract(const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);

  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366);
}
