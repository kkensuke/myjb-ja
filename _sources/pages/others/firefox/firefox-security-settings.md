# Firefox のセキュリティ設定

## セキュリティアドオン
- [AdBlocker Ultimate](https://addons.mozilla.org/en-US/firefox/addon/adblocker-ultimate/)
- [ClearURLs](https://addons.mozilla.org/en-US/firefox/addon/clearurls/)
- [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/)
- [CanvasBlocker](https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/)
- [Firefox Relay](https://relay.firefox.com/)
- [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- [WebRTC Leak Shield](https://addons.mozilla.org/en-US/firefox/addon/webrtc-leak-shield/)
- [その他](https://addons.mozilla.org/en-US/firefox/extensions/category/privacy-security/)

## 安全なインターネット接続
- VPN の使用
- [Cloudfare](https://developers.cloudflare.com/1.1.1.1/setup/) の有効化
- ECH の有効化
- WebRTC の無効化

### VPN
仮想プライベートネットワーク（VPN）は、IP アドレスの隠蔽、インターネットトラフィックの暗号化、および地域制限のあるコンテンツへのアクセスなどの機能を提供します。

### Cloudflare を使用した DoH（DNS-over-HTTPS）の有効化
1. Firefox を開き、`about:preferences#general` に移動します。
2. ページを下にスクロールし、`ネットワーク設定` の　`設定` をクリックします。
3. `DNS over HTTPSを有効にする` を選択し、プロバイダとして `Cloudflare` を選択します。
4. `OK` をクリックしてタブを閉じます。

または
1. Firefox を開き、`about:config` に移動します。
2. `network.trr` を検索します。
3. `network.trr.mode` を `2` または `3` に設定します（`2` : TRR 優先、DNS にフォールバック、`3` : TRR のみ）。
4. `network.trr.uri` を `https://mozilla.cloudflare-dns.com/dns-query` に設定します。

### ECH（暗号化されたクライアントハロー）の有効化
1. Firefox を開き、`about:config` に移動します。
2. `network.dns` を検索します。
3. `network.dns.echconfig.enabled` を `true` に設定します。
4. `network.dns.http3_echconfig.enabled` を `true` に設定します。

### WebRTC の無効化
```{caution} WebRTC
👉 WebRTC は Web リアルタイムコミュニケーションの略です。これは、ブラウザ間でプラグインや外部ソフトウェアなしに直接インターネット上でオーディオやビデオ通信を可能にする技術です。ビデオ会議などのリアルタイム通信に役立つ一方、IP アドレスの漏洩の可能性があり、プライバシー上の懸念があります。ブラウザでの WebRTC の無効化は、IP アドレスの漏洩を防ぐのに役立ちます。
```

WebRTC の無効化:
1. Firefox を開き、`about:config` に移動します。
2. `media.peerconnection.enabled` を検索し、`false` に設定します。

[WebRTC Leak Shield](https://addons.mozilla.org/en-US/firefox/addon/webrtc-leak-shield/)：この拡張機能を使用すると、上記の設定を簡単に切り替えることができます。

## テスト
- [Cloudflare Browser Check](https://www.cloudflare.com/ssl/encrypted-sni/#results)
- [WebRTC テスト](https://ip8.com/webrtc-test)
- [DNS リークテスト](https://dnsleaktest.org/dns-leak-test)

[Cloudflare Browser Check](https://www.cloudflare.com/ssl/encrypted-sni/#results) をパスすると、次のように表示されます：
```{image} img/cloudflare-test.png
:width: 600px
:alt: Cloudflare Browser Check
```