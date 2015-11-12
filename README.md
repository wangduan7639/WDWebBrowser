# WDWebBrowser
一个类似于微信的网络游览器，有进度条，有刷新，有返回，如果进入下一页就显示关闭，点击关闭直接退出，如果点击返回的时候没有上一页则也返回
#Used in Productione
  * 乐视视频客户端
  * 易学易练
  
#Requirements
  * iOS 7.0 or later
  * ARC

#Usage
  WDWebViewViewController * webViewController = [[WDWebViewViewController alloc] initWithUrlString:urlString];
  [self.navigationController pushViewController:webViewController animated:YES];
#User CocoaPods Manager Open source Librarys
#User Open Librarys
  * Masonry
  * ReactiveCocoa
  * NJKWebViewProgress
