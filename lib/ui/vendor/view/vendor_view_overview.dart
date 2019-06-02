import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/data/models/vendor_model.dart';
import 'package:invoiceninja_flutter/data/models/entities.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/ui/app/FieldGrid.dart';
import 'package:invoiceninja_flutter/ui/vendor/view/vendor_view_vm.dart';
import 'package:invoiceninja_flutter/utils/formatting.dart';
import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/app/icon_message.dart';
import 'package:invoiceninja_flutter/ui/app/two_value_header.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';

class VendorOverview extends StatelessWidget {
  const VendorOverview({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  final VendorViewVM viewModel;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context);
    final vendor = viewModel.vendor;
    final company = viewModel.company;
    final state = StoreProvider.of<AppState>(context).state;
    final statics = state.staticState;
    final fields = <String, String>{};

    if (vendor.currencyId > 0 && vendor.currencyId != company.currencyId) {
      fields[VendorFields.currencyId] =
          statics.currencyMap[vendor.currencyId].name;
    }

    if (vendor.customValue1.isNotEmpty) {
      final label1 = company.getCustomFieldLabel(CustomFieldType.vendor1);
      fields[label1] = vendor.customValue1;
    }

    if (vendor.customValue2.isNotEmpty) {
      final label2 = company.getCustomFieldLabel(CustomFieldType.vendor2);
      fields[label2] = vendor.customValue2;
    }

    return ListView(
      children: <Widget>[
        TwoValueHeader(
          label1: localization.paidToDate,
          value1: formatNumber(vendor.paidToDate, context,
              currencyId: vendor.currencyId),
          label2: localization.balanceDue,
          value2: formatNumber(vendor.balance, context,
              currencyId: vendor.currencyId),
        ),
        vendor.privateNotes != null && vendor.privateNotes.isNotEmpty
            ? IconMessage(vendor.privateNotes)
            : Container(),
        FieldGrid(fields),
        Divider(
          height: 1.0,
        ),
        /*
        EntityListTile(
          icon: getEntityIcon(EntityType.invoice),
          title: localization.invoices,
          onTap: () => viewModel.onEntityPressed(context, EntityType.invoice),
          onLongPress: () =>
              viewModel.onEntityPressed(context, EntityType.invoice, true),
          subtitle: memoizedInvoiceStatsForVendor(
              vendor.id,
              state.invoiceState.map,
              localization.active,
              localization.archived),
        ),
        */
      ],
    );
  }
}

class EntityListTile extends StatelessWidget {
  const EntityListTile(
      {this.icon, this.onTap, this.onLongPress, this.title, this.subtitle});

  final Function onTap;
  final Function onLongPress;
  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
          color: Theme.of(context).canvasColor,
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            leading: Icon(icon, size: 18.0),
            trailing: Icon(Icons.navigate_next),
            onTap: onTap,
            onLongPress: onLongPress,
          ),
        ),
        Divider(),
      ],
    );
  }
}