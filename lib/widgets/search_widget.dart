import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/repositories/city_repository.dart';
import 'package:weather_app/utils/extension.dart';
import 'package:weather_app/models/city_model.dart';

class SearchWeatherWidget extends StatefulWidget {
  final Function(double? lat, double? lon) onSubmitted;
  final FocusNode focusNode;
  const SearchWeatherWidget({
    super.key,
    required this.onSubmitted,
    required this.focusNode,
  });

  @override
  State<SearchWeatherWidget> createState() => _SearchWeatherWidgetState();
}

class _SearchWeatherWidgetState extends State<SearchWeatherWidget> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: RawAutocomplete<CityModel>(
          focusNode: widget.focusNode,
          textEditingController: _controller,
          fieldViewBuilder: (
            BuildContext context,
            TextEditingController fieldTextEditingController,
            FocusNode fieldFocusNode,
            VoidCallback onFieldSubmitted,
          ) {
            return TextFormField(
              controller: _controller,
              focusNode: fieldFocusNode,
              decoration: InputDecoration(hintText: context.l10n.search),
            );
          },
          onSelected: (city) {
            widget.focusNode.unfocus();
            _controller.text = city.name ?? "";
            widget.onSubmitted(city.latitude, city.longitude);
          },
          optionsViewBuilder: ((context, onSelected, options) {
            return Align(
              alignment: Alignment.topLeft,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 4.0,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final CityModel option = options.elementAt(index);
                    return InkWell(
                      onTap: () => onSelected(option),
                      child: ListTile(
                        title: Text(
                          '${option.name}, ${option.admin1 ?? ""}',
                          style: context.textTheme.labelLarge,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable<CityModel>.empty();
            }
            return CityRepository.getCity(textEditingValue.text);
          },
        )),
      ],
    );
  }
}
