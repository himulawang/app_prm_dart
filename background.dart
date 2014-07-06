import 'package:chrome/chrome_app.dart' as chrome;

main() {
  chrome.app.runtime.onLaunched.listen((data) {
    print(data);
    chrome.app.window.create(
      "index.html", new chrome.CreateWindowOptions(id: 'mainWindow')
    );
  });
}