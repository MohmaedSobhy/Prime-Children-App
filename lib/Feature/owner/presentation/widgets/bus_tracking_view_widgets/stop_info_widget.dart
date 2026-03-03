import 'package:flutter/material.dart';

class StopInfoWidget extends StatelessWidget {
  final String previousStopName;
  final String previousStopTime;
  final String currentStopName;
  final String scheduledTime;
  final String actualTime;
  final String statusText;
  final Color statusColor;

  const StopInfoWidget({
    super.key,
    required this.previousStopName,
    required this.previousStopTime,
    required this.currentStopName,
    required this.scheduledTime,
    required this.actualTime,
    required this.statusText,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.02,
                height: MediaQuery.sizeOf(context).width * 0.02,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
              ),

              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.005,
                  color: Colors.grey.shade300,
                ),
              ),

              Container(
                width: MediaQuery.sizeOf(context).width * 0.02,
                height: MediaQuery.sizeOf(context).width * 0.02,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.purple,
                    width: MediaQuery.sizeOf(context).width * 0.005,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      previousStopName,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      previousStopTime,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentStopName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Scheduled for $scheduledTime",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          actualTime,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          statusText,
                          style: TextStyle(
                            color: statusColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
