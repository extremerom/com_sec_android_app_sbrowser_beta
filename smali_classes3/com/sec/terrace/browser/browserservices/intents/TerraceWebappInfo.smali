.class public Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    return-void
.end method

.method public static create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;
    .locals 1
    .param p0    # Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;-><init>(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->createEmpty()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mWebApkExtras:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    return-object p0
.end method

.method private getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    return-object p0
.end method

.method private hasValidBackgroundColor()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public backgroundColor(I)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->hasValidBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide p0

    long-to-int p1, p0

    :cond_0
    return p1
.end method

.method public backgroundColor()J
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-wide v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->backgroundColor:J

    return-wide v0
.end method

.method public displayMode()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->displayMode:I

    return p0
.end method

.method public getActivityInfoOrientation()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->orientation()I

    move-result p0

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    const-string p0, "TerraceWebappInfo"

    const-string v1, "Trying to lock to unsupported orientation!"

    invoke-static {p0, v1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public hasExternalSource()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result p0

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasValidThemeColor()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v0

    const-wide v2, 0x80000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    return-object p0
.end method

.method public iconUrlToMurmur2HashMap()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->iconUrlToMurmur2HashMap:Ljava/util/Map;

    return-object p0
.end method

.method public id()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isFullscreenMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->displayMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconAdaptive()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->isIconAdaptive:Z

    return p0
.end method

.method public isIconGenerated()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->isIconGenerated:Z

    return p0
.end method

.method public isLaunchedFromHomescreen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public manifestStartUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->manifestStartUrl:Ljava/lang/String;

    return-object p0
.end method

.method public manifestUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->manifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->name:Ljava/lang/String;

    return-object p0
.end method

.method public orientation()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->orientation:I

    return p0
.end method

.method public scopeUrl()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->scopeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public shareData()LK/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->mProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getShareData()LK/a;

    move-result-object p0

    return-object p0
.end method

.method public shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    return-object p0
.end method

.method public shellApkVersion()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shellApkVersion:I

    return p0
.end method

.method public shortName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shortName:Ljava/lang/String;

    return-object p0
.end method

.method public shortcutItems()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->shortcutItems:Ljava/util/List;

    return-object p0
.end method

.method public shouldForceNavigation()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->shouldForceNavigation:Z

    return p0
.end method

.method public source()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->source:I

    return p0
.end method

.method public themeColor()J
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-wide v0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->themeColor:J

    return-wide v0
.end method

.method public url()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->url:Ljava/lang/String;

    return-object p0
.end method

.method public webApkPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;->webApkPackageName:Ljava/lang/String;

    return-object p0
.end method
