import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/action_button_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/balance_card_widget.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/custom_financial_gateway_appbar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/financial_recieved_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/financial_sent_title.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/financial_gateway_view.dart/transaction_tile_widget.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class FinancialGatewayViewBody extends StatelessWidget {
  const FinancialGatewayViewBody({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.02),
          const CustomFinancialGatewayAppbar(),
          SizedBox(height: size.height * 0.03),
          const BalanceCardWidget(),
          SizedBox(height: size.height * 0.02),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButtonWidget(
                title: AppString.requestTuition,
                icon: Icons.description,
              ),
              ActionButtonWidget(
                title: AppString.paySalaries,
                icon: Icons.people,
              ),
              ActionButtonWidget(
                title: AppString.addFund,
                icon: Icons.account_balance_wallet,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          const FinancialReceivedTitle(),
          SizedBox(height: size.height * 0.015),
          const TransactionTileWidget(
            isReceived: true,
            title: "Fawry Payment",
            subtitle: "Parent: Sarah Johnson • Tuition",
            amount: "+\$1,450.00",
            date: "10:45 AM",
          ),
          const TransactionTileWidget(
            isReceived: true,
            title: "Bank Transfer",
            subtitle: "Parent: Michael Chen • Uniform",
            amount: "+\$280.00",
            date: "Yesterday",
          ),
          SizedBox(height: size.height * 0.025),
          const FinancialSentTitle(),
          SizedBox(height: size.height * 0.015),
          const TransactionTileWidget(
            isReceived: false,
            title: "Salary Disbursement",
            subtitle: "12 Staff Members • Monthly",
            amount: "-\$12,400.00",
            date: "Today",
          ),
          const TransactionTileWidget(
            isReceived: false,
            title: "Food Vendor: FreshMart",
            subtitle: "Weekly Supplies • Inv #882",
            amount: "-\$850.00",
            date: "2 days ago",
          ),
        ],
      ),
    );
  }
}
