///https://dart.cn/guides/libraries/library-tour#collections
//集合
void main() {
  lists();
  indexOf();
  sort();
  Sets();
  contains();
  set();
}

void lists() {
  //集合
  var grains = <String>[];
  assert(grains.isEmpty);

  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');

  fruits.addAll(['grapes', 'bananas']);

  assert(fruits.length == 5);

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);

  fruits.clear();
  assert(fruits.isEmpty);

  var vegetables = List.filled(99, 'broccoli');
  assert(vegetables.every((v) => v == 'broccoli'));
}

void indexOf() {
  //查找一个对象在 list 中的下标值
  var fruits = ['apples', 'oranges'];
  assert(fruits[0] == 'apples');
  assert(fruits.indexOf('apples') == 0);
}

void sort() {
  //排序
  var fruits = ['bananas', 'apples', 'oranges'];

  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');
}

void Sets() {
  //在 Dart 中，set 是一个无序的，元素唯一的集合。因为一个 set 是无序的，所以无法通过下标（位置）获取 set 中的元素
  var ingredients = <String>{};

  ingredients.addAll(['gold', 'titanium', 'xenon']);
  assert(ingredients.length == 3);

  ingredients.add('gold');
  assert(ingredients.length == 3);

  ingredients.remove('gold');
  assert(ingredients.length == 2);
}

void contains() {
  //检查是否在set中
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  assert(ingredients.contains('titanium'));

  assert(ingredients.containsAll(['titanium', 'xenon']));
}

void set() {
  //交集
  var ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  var nobleGases = Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));
}
