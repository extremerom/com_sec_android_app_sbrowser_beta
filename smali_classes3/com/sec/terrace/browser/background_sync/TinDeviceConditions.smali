.class public Lcom/sec/terrace/browser/background_sync/TinDeviceConditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static convertAndroidNetworkTypeToConnectionType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getCurrentNetConnectionType(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->isInitialized()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_1

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/background_sync/TinDeviceConditions;->convertAndroidNetworkTypeToConnectionType(I)I

    move-result v0

    :cond_1
    return v0
.end method
