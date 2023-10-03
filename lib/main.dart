import 'package:ecommerce_app_1/Feature/Home/data/add_groub/add_groub_cubit.dart';
import 'package:ecommerce_app_1/Feature/Home/data/model/model.dart';
import 'package:ecommerce_app_1/Feature/Sign/data/cubit/google_cubit.dart';
import 'package:ecommerce_app_1/core/utils/provider/AdminMode.dart';
import 'package:ecommerce_app_1/core/utils/route.dart';
import 'package:ecommerce_app_1/firebase_options.dart';
import 'package:ecommerce_app_1/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  Hive.registerAdapter(NewArraivalAdapter());
  await Hive.openBox<NewArraival>("NewArr");
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddGroubCubit>(create: (context) => AddGroubCubit()),
        BlocProvider<GoogleCubit>(create: (context) => GoogleCubit()),
        ChangeNotifierProvider(create: (context) => AdminMode()),
      ],
      child: MaterialApp(
        title: 'Ecommece_Mobile',
        debugShowCheckedModeBanner: false,
        routes: routes,
      ),
    );
  }
}
