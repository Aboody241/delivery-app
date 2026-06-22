import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tayar/core/theme/colors.dart';
import 'package:tayar/core/theme/text_style.dart';
import 'package:tayar/shared/buttons/custom_back_button.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  String selectedOption = '1.L';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.divider,
        elevation: 0,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomBackButton(),
        ),
        title: Text('Product Details', style: AppTextStyles.h3),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Image Placeholder
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image.asset('assets/test/test_image.png', fit: BoxFit.contain),
                      ),
                    ),
                    const Gap(24),
                    // Title
                    Text('Pepsi Cola', style: AppTextStyles.h2),
                    const Gap(32),
                    // Options and Quantity
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Quantity Selector
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (quantity > 1) {
                                  setState(() {
                                    quantity--;
                                  });
                                }
                              },
                              icon: const Icon(Icons.remove_circle_outline),
                              color: quantity > 1 ? AppColors.textPrimary : AppColors.textHint,
                              iconSize: 32,
                            ),
                            const Gap(8),
                            Text(
                              '$quantity',
                              style: AppTextStyles.h2,
                            ),
                            const Gap(8),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              icon: const Icon(Icons.add_circle_outline),
                              color: AppColors.primary,
                              iconSize: 32,
                            ),
                          ],
                        ),
                        // Options
                        SizedBox(
                          width: 150,
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            alignment: WrapAlignment.end,
                            children: ['1.L', '1.5-L', 'Can', '2.L'].map((option) {
                              final isSelected = selectedOption == option;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = option;
                                  });
                                },
                                child: Container(
                                  width: 70,
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  decoration: BoxDecoration(
                                    color: isSelected ? AppColors.primary : AppColors.divider,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    option,
                                    style: AppTextStyles.bodyLarge.copyWith(
                                      color: isSelected ? Colors.white : AppColors.textPrimary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Bottom Add Button
            Container(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.divider, // Grey button as in wireframe
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Text('Add', style: AppTextStyles.button.copyWith(color: AppColors.textPrimary)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
