import 'package:flutter/material.dart';

class FoodItem {
  final String name;
  final int daysLeft;

  const FoodItem({required this.name, required this.daysLeft});
}

const List<FoodItem> allItems = [
  FoodItem(name: 'MILK', daysLeft: 0),
  FoodItem(name: 'CHEESE', daysLeft: 0),
  FoodItem(name: 'TOMATOES', daysLeft: 4),
  FoodItem(name: 'SALAD', daysLeft: 7),
  FoodItem(name: 'MEAT', daysLeft: 10),
];

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  Color _dotColor(int days) {
    if (days <= 1) return Colors.red;
    if (days <= 5) return Colors.orange;
    return Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF0F0),
      body: SafeArea(
        child: Column(
          children: [
            // Filter buttons (decorative only)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: ['ALL', 'VEGGIES', 'DAIRY'].map((label) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEAB8B8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Back arrow
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
            ),

            // List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: allItems.length,
                itemBuilder: (context, index) {
                  final item = allItems[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAB8B8),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.circle, size: 10, color: Colors.black),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Icon(Icons.circle, color: _dotColor(item.daysLeft), size: 28),
                        const SizedBox(width: 12),
                        Text(
                          '${item.daysLeft} days left',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}