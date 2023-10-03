import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildItem extends StatefulWidget {
  const BuildItem({
    super.key,
    required this.data,
  });
  final data;

  @override
  State<BuildItem> createState() => _BuildItemState();
}

class _BuildItemState extends State<BuildItem> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<AddGroubCubit, AddGroubState>(builder: (context, state) {
    // if (state is AddGroubSuccess) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                widget.data["imagePath"],
                fit: BoxFit.fill,
              ),
              Positioned(
                  top: 10,
                  right: 20,
                  child: SvgPicture.asset("assets/Icons/Heart (1).svg"))
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            width: 130,
            child: Text(
              widget.data["desc"],
              style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xff1D1E20),
                  fontWeight: FontWeight.w500),
            )),
        const SizedBox(
          height: 5,
        ),
        Text(
          r"$" + "${widget.data["price"]}",
          style: const TextStyle(
              fontSize: 13,
              color: Color(0xff1D1E20),
              fontWeight: FontWeight.w600),
        )
      ],
    );

    // print("object");
    // } else if (state is AddGroubFailure) {
    // print(state.errmessage);
    // return Container();
    // } else if (state is AddGroubLoading) {
    // return const Center(child: CircularProgressIndicator());

    // return Center(child: Container());
    // } else {
    // return const Center(child: CircularProgressIndicator());
    // }
    // });
  }
}
