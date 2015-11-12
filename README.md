# WDWebBrowser
一个类似于微信的网络游览器，有进度条，有刷新，有返回，如果进入下一页就显示关闭，点击关闭直接退出，如果点击返回的时候没有上一页则也返回
#Used in Productione
  * 乐视视频客户端
  * 易学易练客户端
  
#Requirements
  * iOS 7.0 or later
  * ARC

#Usage
```objectC
  WDWebViewViewController * webViewController = [[WDWebViewViewController alloc] initWithUrlString:urlString];
  [self.navigationController pushViewController:webViewController animated:YES];
```
#Use CocoaPods Manager Open source Librarys
#Use Open Librarys
  * [Masonry](https://github.com/cloudkite/Masonry)
  * [ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa)
  * [NJKWebViewProgress](https://github.com/ninjinkun/NJKWebViewProgress)
