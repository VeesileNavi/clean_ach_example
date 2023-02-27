import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magnit_test_app/domain/model/model.dart';

import 'package:magnit_test_app/domain/bloc/shop_list_bloc/shop_list_bloc.dart';

class FilterModalBody extends StatefulWidget {
  const FilterModalBody({super.key});

  @override
  State<FilterModalBody> createState() => _FilterModalBodyState();
}

class _FilterModalBodyState extends State<FilterModalBody> {
  Characteristics? _selectedCharacteristics;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: BlocBuilder<ShopListBloc, ShopListState>(
        builder: (context, state) => state.when(
            showData: (_, characteristicsList, productNameFilter,
                characteristicFilter) {
              final isFilterApplied =
                  productNameFilter != null || characteristicFilter != null;
              return Column(
                children: [
                  const Text('Название продукта'),
                  _ProductNameTextField(
                    initialValue: productNameFilter,
                    controller: textEditingController,
                  ),
                  DropdownButton<Characteristics>(
                    onChanged: (value) =>
                        setState(() => _selectedCharacteristics = value),
                    value: _selectedCharacteristics ?? characteristicFilter,
                    items: characteristicsList
                        .map((c) => DropdownMenuItem<Characteristics>(
                            value: c, child: Text('Вес: ${c.weight}')))
                        .toList(),
                  ),
                  _FilterButton(
                    onTap: () => _registerFilterTap(isFilterApplied),
                    filterApplied: isFilterApplied,
                  ),
                ],
              );
            },
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }

  void _registerFilterTap(bool isFilterApply) {
    if (isFilterApply) {
      setState(() {
        _selectedCharacteristics = null;
        textEditingController.clear();
      });
      context.read<ShopListBloc>().add(const ShopListEvent.dropFilters());
    } else {
      context.read<ShopListBloc>().add(ShopListEvent.applyFilters(
          textEditingController.text, _selectedCharacteristics));
    }
  }
}

class _ProductNameTextField extends StatefulWidget {
  final String? initialValue;
  final TextEditingController controller;

  const _ProductNameTextField(
      {super.key, this.initialValue, required this.controller});

  @override
  State<_ProductNameTextField> createState() => _ProductNameTextFieldState();
}

class _ProductNameTextFieldState extends State<_ProductNameTextField> {
  @override
  void initState() {
    super.initState();
    widget.controller.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
    );
  }
}

class _FilterButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool filterApplied;

  const _FilterButton(
      {super.key, required this.filterApplied, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        child: Text(filterApplied ? 'Сбросить фильтр' : 'Применить фильтр'));
  }
}
