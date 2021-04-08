import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3.5),
                color: Colors.white,
                child: Text(
                  "Made With Flutter",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAArlBMVEX///9UxfgptvYBV5tOw/gAUZj4/P+T2vp4lbyU1/rp9/7z+/+O1/rs+P6Q2PqF1PoAU5l80vlwz/k0ufbb8v4BVJXr8/nj9f7c5/AVaJEBTYgBWJ2d3PrD6fxtzvm15PzO7f0jr+5DpdbK3usbh75qj7YHVI5ijbkZf7MGT4UYeKkATYxKfrAAQXMXcJwCOmcARn4AMVgAKUl3xu9uka9Fe69TiLcAS5V3lLyxxNnZ8a17AAAC90lEQVR4nO3a7XLSQBiGYUgg1ITwJZC2Wiwq1kJbKArq+Z+YfBU32X07/ePszL73dQTxnu3maWytBgAAAAAAAAAAAAAAAAAAAAAAAACAIfv4zq194/vRfEm6DUG38P1svvQbdadGP/X9aL7ISXLfj+ZJIifJfD+bJ1mXJBV5211Ec5KOlKSr9S5JW2ISrW+cXEzS1rpL5B8ctUky8XpVmyTpcpdUiVONJFYSBr2dROtUY9BbGPSWlEFfJSdpa33jkMQi3yVq12smrle1p0TeJXrX60BMovWN80oSrbskk39wtCbJxUGvNknKoK+Sk6i9XlmvFvmUdLQmkQe92iQMeos86NUmYdBbEgZ91dsGfSLy9+T/zdsGfdGS3IQX5ZX1aiQZThT93WMhf2g0rtdiIpyleoifIz9JSTpGkqF0CdcDPCXiOWm0jF0y1PY50nmfVJJIZynY/0x3vHdKv+PISQbhrhdrn5Su1+FAYZJaddqXBn0hbtzQv72Z//DqLhGSBD/7jd+Ly0ka74UmCn45PH8/qSSJIncUFZ8QTt/ZrCTuKCGuV4fDTim/cQ5JXFGUJDl8ty8N+ttTEjuKmiT7k2Ku19t6FDmjhDro3XLjLjGT7KKYScJ/47iVkxgnJfipJvp3l1Si6E0ytJKcouhNYp+SU5TwB73EdUqOUdpar9ek7U4STT9/8f1s3qQTd5Kv32aXvp/Nm2LgTjJq3imO0reb7JLEseoo1kn5fr+Id5rbse9n86Z6p8zvF6P4EOVBb5S8FGX+eD06NlEdJTF+43larhajlyg9xVFq5yhXz4+r68VLE9Un5RRlerXeNzkn2V+0et8+yeSYZL3cXSexQfMrOZtE06f183I1+hDHRDlKf8x312tcKaI8yvhnzw6iPcrlzJlEe5SeEEXx22d8J0XZ6N0p460URfF4Sx6a7iiqZ74YZaP3TqltxB8fvVGSba/p9Evz2+fi94XT7E94f28PAAAAAAAAAAAAAAAAAAAAAAAAAHD5C8GjNkPfOzhFAAAAAElFTkSuQmCC",
                width: 45,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("© $currentYear  -- Darin Milner --"),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Text(
              "See the source code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launch("https://www.github.com/darinmilner"),
          )
        ],
      ),
    );
  }
}

class FooterMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    return Container(
      // padding: kScreenPadding,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(3.5),
                color: Colors.white,
                child: Text(
                  "Made With Flutter",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAArlBMVEX///9UxfgptvYBV5tOw/gAUZj4/P+T2vp4lbyU1/rp9/7z+/+O1/rs+P6Q2PqF1PoAU5l80vlwz/k0ufbb8v4BVJXr8/nj9f7c5/AVaJEBTYgBWJ2d3PrD6fxtzvm15PzO7f0jr+5DpdbK3usbh75qj7YHVI5ijbkZf7MGT4UYeKkATYxKfrAAQXMXcJwCOmcARn4AMVgAKUl3xu9uka9Fe69TiLcAS5V3lLyxxNnZ8a17AAAC90lEQVR4nO3a7XLSQBiGYUgg1ITwJZC2Wiwq1kJbKArq+Z+YfBU32X07/ePszL73dQTxnu3maWytBgAAAAAAAAAAAAAAAAAAAAAAAACAIfv4zq194/vRfEm6DUG38P1svvQbdadGP/X9aL7ISXLfj+ZJIifJfD+bJ1mXJBV5211Ec5KOlKSr9S5JW2ISrW+cXEzS1rpL5B8ctUky8XpVmyTpcpdUiVONJFYSBr2dROtUY9BbGPSWlEFfJSdpa33jkMQi3yVq12smrle1p0TeJXrX60BMovWN80oSrbskk39wtCbJxUGvNknKoK+Sk6i9XlmvFvmUdLQmkQe92iQMeos86NUmYdBbEgZ91dsGfSLy9+T/zdsGfdGS3IQX5ZX1aiQZThT93WMhf2g0rtdiIpyleoifIz9JSTpGkqF0CdcDPCXiOWm0jF0y1PY50nmfVJJIZynY/0x3vHdKv+PISQbhrhdrn5Su1+FAYZJaddqXBn0hbtzQv72Z//DqLhGSBD/7jd+Ly0ka74UmCn45PH8/qSSJIncUFZ8QTt/ZrCTuKCGuV4fDTim/cQ5JXFGUJDl8ty8N+ttTEjuKmiT7k2Ku19t6FDmjhDro3XLjLjGT7KKYScJ/47iVkxgnJfipJvp3l1Si6E0ytJKcouhNYp+SU5TwB73EdUqOUdpar9ek7U4STT9/8f1s3qQTd5Kv32aXvp/Nm2LgTjJq3imO0reb7JLEseoo1kn5fr+Id5rbse9n86Z6p8zvF6P4EOVBb5S8FGX+eD06NlEdJTF+43larhajlyg9xVFq5yhXz4+r68VLE9Un5RRlerXeNzkn2V+0et8+yeSYZL3cXSexQfMrOZtE06f183I1+hDHRDlKf8x312tcKaI8yvhnzw6iPcrlzJlEe5SeEEXx22d8J0XZ6N0p460URfF4Sx6a7iiqZ74YZaP3TqltxB8fvVGSba/p9Evz2+fi94XT7E94f28PAAAAAAAAAAAAAAAAAAAAAAAAAHD5C8GjNkPfOzhFAAAAAElFTkSuQmCC",
                width: 45,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("© $currentYear  -- Darin Milner --"),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Text("See the source code",
                style: TextStyle(decoration: TextDecoration.underline)),
            mouseCursor: MaterialStateMouseCursor.clickable,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () => launch("https://www.github.com/darinmilner"),
          )
        ],
      ),
    );
  }
}
