import 'package:ecommerce/src/blocs/dashboard_bloc.dart';
import 'package:ecommerce/src/models/dashboard.dart';
import 'package:ecommerce/src/providers/dashboard_provider.dart';
import 'package:ecommerce/src/providers/product_provider.dart';
import 'package:ecommerce/src/views/dashboard/partials/carousel.dart';
import 'package:ecommerce/src/views/dashboard/partials/full-banner.dart';
import 'package:ecommerce/src/views/dashboard/partials/half-long-banner.dart';
import 'package:ecommerce/src/views/dashboard/partials/product-collection.dart';
import 'package:ecommerce/src/views/dashboard/partials/search.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static String routeName = "/dashboard";
  @override
  Widget build(BuildContext context) {
    DashboardBloc bloc = DashboardProvider.of(context);
    return Scaffold(
      body: SafeArea(
        left: false,
        top: true,
        bottom: true,
        right: false,
        child: SingleChildScrollView(
          child: StreamBuilder(
            stream: bloc.dashboardListStream,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData && snapshot.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return generatePage(snapshot.data.data);
              }
            },
          ),
        ),
      ),
    );
  }

  generatePage(List<Dashboard> pages) {
    List<Widget> controlList = [];
    pages.sort((a, b) => a.order.compareTo(b.order));
    for (var page in pages) {
      switch (page.control) {
        case 'search':
          controlList.add(Search());
          break;
        case 'carousel':
          controlList.add(Carousel(page.images));
          break;
        case 'half-long-banner':
          controlList.add(HalfLongBanner(page.images));
          break;
        case 'full-banner':
          controlList.add(FullBanner(page.images[0]));
          break;
        case 'product':
          controlList
              .add(ProductProvider(child: ProductCollection(page.productTag)));
          break;
        default:
      }
    }
    return Column(children: controlList);
  }
}
