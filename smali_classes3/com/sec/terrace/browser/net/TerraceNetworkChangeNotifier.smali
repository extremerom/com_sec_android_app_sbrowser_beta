.class public Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static init()V
    .locals 0

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->init()Lorg/chromium/net/NetworkChangeNotifier;

    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 1

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->initialize()Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    return-void
.end method

.method public static setLoadingFailLogLevel(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->getInstance()Lcom/sec/terrace/browser/net/TinSmartProtectLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->setLoadingFailLogLevel(I)V

    return-void
.end method
