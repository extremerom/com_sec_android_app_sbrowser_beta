.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidRDefaultNetworkCallback"
.end annotation


# instance fields
.field mLinkProperties:Landroid/net/LinkProperties;

.field mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

.field final synthetic this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method private constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method

.method private getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 11
    .annotation build Lorg/chromium/build/annotations/NullUnmarked;
    .end annotation

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getRawNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    :cond_1
    move v6, v2

    move v5, v3

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    :goto_0
    move v5, v0

    :goto_1
    move v6, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->b(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x11

    goto :goto_0

    :cond_6
    move v5, v2

    move v6, v5

    goto :goto_3

    :cond_7
    :goto_2
    move v5, v1

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/chromium/net/NetworkCapabilitiesWrapper;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result v9

    iget-object p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    new-instance v0, Lorg/chromium/net/NetworkCapabilitiesWrapper;

    invoke-direct {v0, p2}, Lorg/chromium/net/NetworkCapabilitiesWrapper;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    iput-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->getNetworkState(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 8

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->mNetworkCapabilities:Lorg/chromium/net/NetworkCapabilitiesWrapper;

    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->e(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$AndroidRDefaultNetworkCallback;->this$0:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;-><init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->h(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method
