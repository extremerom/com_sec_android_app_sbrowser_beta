.class public Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;,
        Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;
    }
.end annotation


# instance fields
.field private mNativePointer:J

.field private mObserver:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;

.field private mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;->get()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mNativePointer:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;->destroy(JLcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mNativePointer:J

    return-void
.end method

.method public getNativePointerForTesting()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mNativePointer:J

    return-wide v0
.end method

.method public onDataAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z[Ljava/lang/String;IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;[[Ljava/lang/String;[[B)V
    .locals 28
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p9

    move-object/from16 v3, p24

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, p6

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v14, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v4, v3, v2

    new-instance v13, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    aget-object v7, v4, v5

    const/4 v6, 0x1

    aget-object v8, v4, v6

    const/4 v6, 0x2

    aget-object v9, v4, v6

    const/4 v6, 0x3

    aget-object v10, v4, v6

    const/4 v6, 0x4

    aget-object v11, v4, v6

    new-instance v12, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    aget-object v4, p25, v2

    invoke-direct {v12, v4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>([B)V

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static/range {p16 .. p16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    invoke-direct {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>()V

    :goto_3
    move-object/from16 v22, v2

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-object v3, v2

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    move-object/from16 v6, p18

    move-object/from16 v7, p19

    move/from16 v8, p20

    move/from16 v9, p21

    move-object/from16 v10, p22

    move-object/from16 v11, p23

    invoke-direct/range {v3 .. v11}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    new-instance v3, Landroid/content/Intent;

    move-object v2, v3

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->url()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-object v6, v5

    move-object/from16 v7, p7

    invoke-direct {v5, v7}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->source()I

    move-result v11

    iget-object v5, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v17

    iget-object v5, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shellApkVersion()I

    move-result v18

    iget-object v5, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestUrl()Ljava/lang/String;

    move-result-object v19

    iget-object v5, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shouldForceNavigation()Z

    move-result v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v12, p12

    move-object/from16 v21, v14

    move-object/from16 v27, v15

    move-wide/from16 v14, p14

    move/from16 v16, p8

    move-object/from16 v20, p1

    invoke-static/range {v2 .. v27}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;Ljava/lang/String;Ljava/lang/String;IIIJJZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;ZLcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZLK/a;Ljava/util/List;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mObserver:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;

    invoke-interface {v0, v2, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;->onGotManifestData(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/lang/String;)V

    return-void
.end method

.method public start(Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mObserver:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;->get()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->scopeUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mOldInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {p3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p0, p2, p3}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;->initialize(Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mNativePointer:J

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcherJni;->get()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mNativePointer:J

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1, p2, p3, p0, v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Natives;->start(JLcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;Lorg/chromium/content_public/browser/WebContents;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
