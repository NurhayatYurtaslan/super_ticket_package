 <h1>Super Ticket Package 🎟️ </h1>
<p>
<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-android-blue">
</a>
</a>
<a href="https://github.com/NurhayatYurtaslan/super_ticket_package/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License"></a>
</p>

</br>

<p>
Introducing the Super Ticket Package for Flutter – a cutting-edge toolkit that revolutionizes ticket display in your apps! Elevate user experiences with stunning visuals, customizable color schemes, and sleek designs. Effortlessly integrate dynamic ticket presentations, enhancing the aesthetic appeal of your app. Whether it's event tickets or admission passes, the Super Ticket Package ensures a modern and engaging interface. Take control of your UI with this versatile package, delivering a seamless and visually captivating ticketing experience to users. Upgrade your app's presentation with the Super Ticket Package and leave a lasting impression.</p>

## Versions

|Versions      | Version |  
|--------------|---------|
| Flutter      | 3.15.0  |
| Dart         | 3.1.0   |

## Support

| Support      | Version |  
|--------------|---------|
| Android      | SDK 16+ |
| iOS          | 11.0+   |
| Web          | Any*    | 

## Constructor
```
  const SuperTicket({
    Key? key,
    required this.itemCount,
    required this.arcColor,
    required this.ticketText,
    required this.ticketTitleText,
    required this.buttonText,
    required this.firstIcon,
    required this.secondIcon,
    required this.buttonIcon,
    required this.firstIconsText,
    required this.secondIconsText,
    required this.onPressed,
    required this.colors,
    required this.buttonBorderColor,
    this.buttonIconColor = Colors.white,
    this.firstIconColor = Colors.black,
    this.secondIconColor = Colors.black,
    this.ticketHeight = 175,
    this.buttonTextStyle = const TextStyle(fontSize: 12, color: Colors.white),
    this.ticketTextStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.ticketTitleTextStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.firstIconsTextStyle = const TextStyle(
      fontSize: 12,
    ),
    this.secondIconsTextStyle = const TextStyle(
      fontSize: 12,
    ),
    required this.buttonBg,
  }) : super(key: key);

```
## Example

```
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:super_ticket_package/super_ticket_package_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 133, 74, 217),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 84, 166),
        title: const Text(
          'Super Tickets Package',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SuperTicket(
        itemCount: 4, // 3 resim
        arcColor: const Color.fromARGB(255, 133, 74, 217),
        ticketText: 'Ticket Text',
        colors: [
          const Color.fromARGB(255, 227, 127, 221),
          const Color.fromARGB(255, 242, 226, 5),
          const Color.fromARGB(255, 242, 213, 229),
        ],
        ticketTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 70, 84, 166),
        ),
        ticketTitleText: 'Ticket Title',
        firstIcon: Icons.access_alarm_outlined,
        firstIconsText: "First Icon's Text",
        ticketHeight: MediaQuery.of(context).size.height * 0.25,
        secondIcon: Icons.location_on_outlined,
        secondIconsText: "Second Icon's Text ", onPressed: () {},
        buttonBg: const Color.fromARGB(255, 227, 127, 221),
        buttonBorderColor: const Color.fromARGB(255, 133, 74, 217),
        buttonText: 'Button Text'.toUpperCase(), buttonIcon: Icons.check_circle,
      ),
    );
  }
}

```
## Contributors 

- [Nurhayat Yurtaslan](https://github.com/NurhayatYurtaslan)

## 📝 License

Copyright © 2023 [Nurhayat Yurtaslan](https://github.com/NurhayatYurtaslan).<br />





