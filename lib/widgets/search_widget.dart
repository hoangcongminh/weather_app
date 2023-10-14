import 'package:flutter/material.dart';
import 'package:weather_app/extension.dart';
import 'package:weather_app/model/city_model.dart';
import 'package:weather_app/repositories/weather_repository.dart';

class SearchWeatherWidget extends StatefulWidget {
  final Function(double? lat, double? lon) onSubmitted;
  final VoidCallback onLocationPressed;
  const SearchWeatherWidget({
    super.key,
    required this.onSubmitted,
    required this.onLocationPressed,
  });

  @override
  State<SearchWeatherWidget> createState() => _SearchWeatherWidgetState();
}

class _SearchWeatherWidgetState extends State<SearchWeatherWidget> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RawAutocomplete<CityModel>(
            focusNode: _focusNode,
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
                decoration: const InputDecoration(
                  hintText: "Search",
                ),
              );
            },
            onSelected: (city) {
              _focusNode.unfocus();
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
              return WeatherRepository().getCity(textEditingValue.text);
            },
          ),
        ),
        IconButton.filled(
          onPressed: widget.onLocationPressed,
          icon: const Icon(Icons.location_on_outlined),
        )
      ],
    );
  }
}
