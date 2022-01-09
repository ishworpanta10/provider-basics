import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/core/services/service_locator.dart';
import 'package:provider_demo/data/providers/basic_provider.dart';
import 'package:provider_demo/data/providers/z_providers_barrel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          locator<BasicProvider>().getHttpData();
        },
        child: const Icon(Icons.refresh),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Consumer<BasicProvider>(
                        builder: (_, prov, __) {
                          print(prov.state);
                          if (prov.state == HttpState.loading) {
                            return const CircularProgressIndicator();
                          } else if (prov.state == HttpState.success) {
                            return Text(prov.response?.data[0]["title"] ?? "ER");
                          } else if (prov.state == HttpState.error) {
                            return Text(prov.message);
                          }
                          return const Text("Fetch Data ");
                        },
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Consumer<BasicProvider>(
                      builder: (context, provider, child) {
                        return Text(provider.index);
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Provider.of<BasicProvider>(context, listen: false).changeIndex("newIndex");
                      locator<BasicProvider>().changeIndex("newIndex");
                    },
                    child: const Text("Change Text"),
                  ),
                  Consumer<ThemeProvider>(builder: (context, prov, child) {
                    return SwitchListTile(
                      onChanged: (value) {
                        // prov.toggleTheme();
                        locator<ThemeProvider>().toggleTheme();
                      },
                      value: prov.isDark,
                      title: const Text('Toggle Theme'),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
