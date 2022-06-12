import 'package:flutter/material.dart';
import 'package:fuelpool/provider/media_query.dart';
import 'package:fuelpool/widgets/rides_list_item.dart';
import 'package:provider/provider.dart';

class AvailableRidesScreen extends StatelessWidget {
  const AvailableRidesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    final mq = Provider.of<MyMediaQuery>(context);
    // RequestViewModel requestViewModel = context.watch<RequestViewModel>();
    // if (requestViewModel.loading) {
    //   return const Center(
    //     child: LinearProgressIndicator(),
    //   );
    // }
    // if (requestViewModel.requestError != null) {
    //   return AlertDialog(
    //     content: Text(
    //       "${requestViewModel.requestError!.message}",
    //       style: Theme.of(context).textTheme.bodyText1,
    //     ),
    //     title: Text(
    //       "Error ${requestViewModel.requestError!.code}",
    //       style: Theme.of(context).textTheme.headline5,
    //     ),
    //     actions: [
    //       TextButton(
    //         onPressed: () {},
    //         child: const Text("Retry"),
    //       ),
    //     ],
    //   );
    // }
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (ctx, i) {
              return RidesListItem(i);
            },
            separatorBuilder: (ctx, i) {
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
