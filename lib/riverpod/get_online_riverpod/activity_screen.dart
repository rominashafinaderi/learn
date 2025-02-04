import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn2/riverpod/get_online_riverpod/model/activity_model.dart';
import 'package:learn2/riverpod/get_online_riverpod/provider/provider.dart';

/// The homepage of our application
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // اینجا WidgetRef ref داره چی کار می‌کنه؟
    //
    // WidgetRef باعث می‌شه این ویجت (ProductScreen) بتونه از Providerها استفاده کنه.
    // با ref.watch(productsProvider)، مقدار productsProvider رو می‌گیریم.
    // هر تغییری در productsProvider اتفاق بیفته، ویجت ProductScreen به‌روز می‌شه!
    return Consumer(
      //ببین، Consumer مثل یه آدمیه که همیشه حواسش به یه چیز خاص هست! 👀
      // وقتی ما می‌خوایم از اینترنت یه چیزی بگیریم (مثل یه متن یا عکس)، یه درخواست (request) می‌فرستیم. این درخواست یه مدت طول می‌کشه، و ممکنه سه حالت داشته باشه:
      // 1️⃣ هنوز جواب نیومده (loading)
      // 2️⃣ جواب درست اومده (success)
      // 3️⃣ جواب اشتباه اومده (error)
      //
      // حالا، Consumer میاد و همیشه گوش می‌ده که ببینه چی شده! 🤔
      //
      // اگه هنوز جواب نیومده → یه دایره چرخان (CircularProgressIndicator) نشون میده.
      // اگه جواب اومده → اون رو نمایش میده.
      // اگه خطا اومد → میگه "اوه، یه مشکلی پیش اومده!"

      //WidgetRef ref برای دسترسی به Providerها در ConsumerWidget استفاده می‌شه
      builder: (context, ref, child) {
        /////تفاوت ref.watch ، ref.read و ref.listen

        // در Riverpod سه روش اصلی برای دسترسی به Providerها داریم:
        //
        // روش	توضیح
        // ref.watch(provider)	مقدار Provider رو دریافت می‌کنه و در صورت تغییر، ویجت رو بازسازی می‌کنه.
        // ref.read(provider)	مقدار Provider رو فقط یکبار می‌گیره و تغییرات بعدی رو دنبال نمی‌کنه.
        // ref.listen(provider, (prev, next) { ... })	هر تغییری در Provider رو گوش می‌ده، ولی ویجت رو بازسازی نمی‌کنه!
// فرض کن این کد یه آدم کوچولوئه که می‌خواد یه بازی جدید پیدا کنه! 🎮
        // اینجا آدم کوچولوی ما داره به یه سایت میگه "بیا یه بازی جدید به من معرفی کن!"

        final AsyncValue<ActivityModel> activity = ref.watch(activityProvider);

        return Center(
          // حالا ببینیم سایت چی میگه...
          child: switch (activity) {
            // 2️⃣ بازی جدید رو پیدا کرده! پس اسمشو می‌نویسیم.

            AsyncData(:final value) => Text('Activity: ${value.activity}'),
            // 3️⃣ اوه، یه مشکلی پیش اومده! پس یه پیام خطا میدیم.

            AsyncError() => const Text('Oops, something unexpected happened'),
            // 1️⃣ هنوز داره دنبال بازی می‌گرده! پس یه دایره نشون میدیم.

            AsyncLoading() => const CircularProgressIndicator(),
            _ => const CircularProgressIndicator(),
          },
        );
      },
    );
  }
}

//📌 مثال برای watch ، read و listen
// dart
// Copy
// Edit
final counterProvider = StateProvider<int>((ref) => 0);

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider); // همیشه تغییرات رو می‌گیره

    return Scaffold(
      appBar: AppBar(title: const Text("شمارنده")),
      body: Center(child: Text('مقدار: $count')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++; // فقط یکبار مقدار رو می‌گیره
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
//🔹 چطور کار می‌کنه؟
//✅ ref.watch(counterProvider) → باعث می‌شه که وقتی مقدار counterProvider تغییر کرد، CounterScreen هم آپدیت بشه.
//✅ ref.read(counterProvider.notifier).state++ → مقدار counterProvider رو فقط یکبار می‌گیره و مقدارش رو تغییر می‌ده.

//🤓 فهمیدن ConsumerWidget و ConsumerStatefulWidget
//خب، فرض کن که تو یه خبرنگاری 🎤 و هر روز باید خبرهای جدید رو به مردم بگی! 🗞
// اما چطور این کار رو راحت‌تر انجام بدی؟ 🤔
// اینجا دو روش داری
//✅ روش اول: استفاده از Consumer📌
// مشکل//: کدمون یه مقدار تو‌ در تو (Indented) میشه و خوندنش سخت‌تره! 😵‍💫
final newsProvider = StateProvider<String>((ref) => 'hey');

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final news = ref.watch(newsProvider);

        return Text(news);
      },
    );
  }
}
//🔸 اینجا ما از Consumer استفاده کردیم، ولی مشکلش اینه که کدها داخل هم افتادن و شلوغ شده! 🤯
//پس یه راه ساده‌تر لازم داریم... 🚀
//روش دوم: استفاده از ConsumerWidget (راه راحت‌تر!)
//بجای این که یه Consumer داخل StatelessWidget بذاریم، میایم مستقیماً ConsumerWidget می‌نویسیم! 🤩

class Home2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final news = ref.watch(newsProvider);

    return Text(news);
  }
}
//✅ دیگه نیازی نیست Consumer بنویسیم، خودش ref رو داره!
//✅ کد کوتاه‌تر و تمیزتر شد! 😍

//✅ روش سوم: استفاده از ConsumerStatefulWidget (وقتی متغیر داریم!)
//📌 چرا از ConsumerStatefulWidget استفاده کنیم؟
//وقتی که یه چیزی توی صفحه عوض بشه و نیاز به مدیریت وضعیت (State) داشته باشیم!

//🎭 فرض کن می‌خوای یه خبر رو هر چند ثانیه یه بار تغییر بدی!

class Home4 extends ConsumerStatefulWidget {
const Home4({super.key});

@override
ConsumerState<Home4> createState() => _Home4State();
}

class _Home4State extends ConsumerState<Home4> {
@override
void initState() {
super.initState();

// اینجا می‌تونیم خبرهای جدید رو گوش کنیم!
ref.listenManual(newsProvider, (previous, next) {
print('خبر جدید اومد! 🎉');
});
}

@override
Widget build(BuildContext context) {
final news = ref.watch(newsProvider);

return Text(news);
}
}
//🛑 خب، فرق اینا چی شد؟
//روش	کیفیت کد	برای چه کاری خوبه؟
//Consumer	❌ پیچیده	وقتی فقط یه StatelessWidget داری
//ConsumerWidget	✅ تمیز و راحت	وقتی StatelessWidget داری ولی ref می‌خوای
//ConsumerStatefulWidget	🔥 پیشرفته‌تر	وقتی StatefulWidget داری و نیاز به مدیریت وضعیت (State) داری
