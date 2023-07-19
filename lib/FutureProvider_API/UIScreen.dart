// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'Services.dart';
//
// class UIAsad extends StatelessWidget {
//   const UIAsad({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Consumer(
//           builder: (context, ref, child) {
//             final postsAsyncValue = ref.watch(postsProvider);
//
//             return postsAsyncValue.when(
//               data: (posts) => ListView.builder(
//                 itemCount: posts.length,
//                 itemBuilder: (context, index) {
//                   final post = posts[index];
//                   return ListTile(
//                     title: Text(post.title),
//                     subtitle: Text(post.body),
//                   );
//                 },
//               ),
//               loading: () => const Center(child: CircularProgressIndicator()),
//               error: (error, stackTrace) => Center(child: Text('Error: $error')),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
