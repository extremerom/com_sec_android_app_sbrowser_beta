.class public Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;
.implements Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentInstanceId:Ljava/lang/Integer;

.field private mIsSupportedLang:Z

.field private mMode:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;",
            ">;"
        }
    .end annotation
.end field

.field mObserversMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field mSourceLangMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLanguageList:[Ljava/lang/String;

.field mSplitModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportLangMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransLogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTransbarStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTransbarTransStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mIsSupportedLang:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarTransStatusMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSplitModeMap:Ljava/util/HashMap;

    const-string p0, "SixTransService"

    invoke-static {p0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$getSupportResult$5(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$setModeResult$7(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$setLangResult$20(JLjava/lang/String;)V

    return-void
.end method

.method private checkOndevice(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ON_DEVICE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ON_DEVICE_V2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic d(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$createTransResult$11(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$setLangListResult$18(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$updateStatusResult$22(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$getLangResult$19(J[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    return-object v0
.end method

.method private getInstanceId(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$translate$4([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic i(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$getModeResult$6(J[Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "SixTransService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->createTerraceTransService(Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLanguageMap;->SOURCE_LANGUAGE_MAP:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->setTransBarCallback(Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;)V

    return-void
.end method

.method private isTranslateV2()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$translate$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V

    return-void
.end method

.method public static synthetic k(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$clearResult$16(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic l(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$detectionLangResult$14(J[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$clearResult$16(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onClearFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$createTransResult$11(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onCreateFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$destroyTransResult$12(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDestroyFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$detectionLangResult$14(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDetectionLangFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$downloadLangPack$2(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    move-object v0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    new-instance v8, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;

    move-wide v5, p6

    invoke-direct {v8, p0, v5, v6}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V

    const-string v6, "20050"

    move-object v0, v1

    move-object v1, v2

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->showDownloadLangpackDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;)V

    return-void
.end method

.method private static synthetic lambda$downloadLangPackResult$10(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDownloadLangPackFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getInfoResult$21(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetInfoFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getLangListResult$17(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetLangListFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getLangResult$19(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetLangFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getModeResult$6(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetModeFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getSupportResult$5(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetSupportFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openLangPackSettingsImpl$0(J)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->openLangpackSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Success"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openLangPackSettingsResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Fail-OpenLangPackSettings"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openLangPackSettingsResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openLangPackSettingsResult$9(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$openSettingsResult$8(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onOpenSettingsFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$refreshResult$15(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onRefreshFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setLangListResult$18(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetLangListFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setLangResult$20(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetLangFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setModeResult$7(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetModeFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$translate$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V
    .locals 9

    move-object v0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    move-object v3, p2

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/LanguageUtil;->getMappedValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    move-object v3, p3

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/LanguageUtil;->getMappedValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v4, p4, v0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, v1

    move-object v1, p1

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method private synthetic lambda$translate$4([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const/4 p0, 0x0

    aget-object v3, p1, p0

    const/4 v2, 0x0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->translate(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static synthetic lambda$translateResult$13(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onTranslateFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateLangInfo$1(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getSupportAllLanguageInfo(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V

    return-void
.end method

.method private static synthetic lambda$updateStatusResult$22(J[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onUpdateStatusFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic m(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$getLangListResult$17(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$updateLangInfo$1(Z)V

    return-void
.end method

.method public static synthetic o(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$translateResult$13(J[Ljava/lang/String;)V

    return-void
.end method

.method private onDone(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onDone()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onLoading(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onLoading()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->updatePageTrans(Z)V

    :cond_2
    return-void
.end method

.method private onShutdown()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedTransNativeUX()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onUpdateFabStatus(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onTranslate(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarTransStatusMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onTranslate(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendEventLog(Z)V

    return-void
.end method

.method private onUpdateFabStatus(ZI)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedTransNativeUX()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTransSplitMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarTransStatusMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onUpdateFabStatus(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onUpdateLangList()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onUpdateLangList()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private openLangPackSettingsImpl(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/trans/h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/h;-><init>(Ljava/lang/Object;JI)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SixTransService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Fail-OpenLangPackSettings"

    invoke-virtual {p0, p3, p4, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openLangPackSettingsResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic p(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$openSettingsResult$8(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic q(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$getInfoResult$21(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$openLangPackSettingsImpl$0(J)V

    return-void
.end method

.method public static synthetic s(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$refreshResult$15(JLjava/lang/String;)V

    return-void
.end method

.method private sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "20050"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "20055"

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(J[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$destroyTransResult$12(J[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$downloadLangPackResult$10(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic v(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$openLangPackSettingsResult$9(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->lambda$downloadLangPack$2(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTranslateV2()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addObserver observer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " instanceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixTransService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public clear(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p2, p5, p6}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->clear(Ljava/lang/String;J)V

    return-void
.end method

.method public clearResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createTrans(Ljava/lang/String;IIJ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->createTrans(J)V

    return-void
.end method

.method public createTransResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyTrans(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p2, p5, p6}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->destroyTrans(Ljava/lang/String;J)V

    return-void
.end method

.method public destroyTransResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detectionLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p3, p6, p7}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->identifyLanguageAndGetCandidate(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0, p3, p6, p7}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->identifyLanguage(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public detectionLangResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadLangPack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 12

    move-object v10, p0

    move-object v0, p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    move-result v3

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140671

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v11, Lcom/sec/android/app/sbrowser/extensions/trans/f;

    move-object v1, v11

    move-object v2, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p2

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/extensions/trans/f;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v11}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SixTransService"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Fail-DownloadLangPack"

    move-wide/from16 v1, p7

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->downloadLangPackResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public downloadLangPackResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInfo(Ljava/lang/String;IIJ)V
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string p2, "Success"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransCaption()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->supportsImgTransMultiThreading()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "SixTransService"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p2, "Fail-GetInfo"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInfoResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public getInfoResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    const-string v1, "en"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getLang : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixTransService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getTargetLang()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstanceId(I)I

    move-result p2

    const-string p4, "TARGET"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "en"

    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getTargetLang()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p4

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    const-string p3, "add_lang"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p4, p2

    :goto_1
    const-string p2, "Success"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const-string p3, "SixTransService"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p2, "Fail-GetLang"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p6, p7, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public getLangList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "SOURCE"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x2

    const/4 p6, 0x1

    if-eqz p2, :cond_0

    move p2, p6

    goto :goto_0

    :cond_0
    const-string p2, "TARGET"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, p5

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string p3, "AVAILABLE"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onUpdateLangList()V

    :cond_2
    if-eqz p1, :cond_7

    if-ne p2, p6, :cond_4

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getAvailableLanguageList(J)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getSourceLanguageList(J)V

    goto :goto_1

    :cond_4
    if-ne p2, p5, :cond_6

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getAvailableLanguageList(J)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getSourceLanguageList(J)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    new-instance p4, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;

    invoke-direct {p4, p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V

    invoke-virtual {p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getSupportAllLanguageList(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p0, p1, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->getTranslateSupportLanguage(Landroid/content/Context;ZJ)V

    :goto_1
    return-void
.end method

.method public getLangList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    return-object p0
.end method

.method public getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "SOURCE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TARGET"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    array-length p3, p4

    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTranslateV2()Z

    move-result p3

    xor-int/lit8 v1, p3, 0x1

    array-length v2, p4

    invoke-static {p4, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string v1, "en"

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    array-length v2, p3

    add-int/2addr v2, v0

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    array-length v2, p3

    sub-int/2addr v2, v0

    aput-object v1, p3, v2

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public getLangListResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLangLocaleInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSupportLangMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLangResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getMode(Ljava/lang/String;IIJ)V
    .locals 4

    const-string p1, "CLOUD"

    const-string p2, "ON_DEVICE"

    const-string p3, "ON_DEVICE_V2"

    const-string v0, "NONE"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeImpl()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTranslateV2()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_0
    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "SixTransService"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v2, "Fail-GetMode"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, p4, p5, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeResult(J[Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-nez p2, :cond_4

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, p5

    goto :goto_4

    :cond_4
    :goto_3
    move p2, p4

    :goto_4
    if-nez p2, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p4, p5

    goto :goto_5

    :cond_5
    move p4, p2

    :cond_6
    :goto_5
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateLangInfo(Z)V

    return-void
.end method

.method public getModeImpl()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isTranslatorModeEnabled()Z

    move-result p0

    return p0
.end method

.method public getModeResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSupport(Ljava/lang/String;IIJ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTranslateV2()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ON_DEVICE_V2"

    goto :goto_0

    :cond_0
    const-string p1, "ON_DEVICE"

    goto :goto_0

    :cond_1
    const-string p1, "NONE"

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "Success"

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getSupportResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->init()V

    return-void
.end method

.method public isFocused(Landroid/app/Activity;)Z
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTransBarShowing(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTransBarShowing(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTransBarShowing(I)Z

    move-result p0

    return p0
.end method

.method public isTransBarTranslated(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarTransStatusMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarTransStatusMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTransSplitMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSplitModeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSplitModeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCloseFab(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->getPageTransCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendPageTransCountEventLog(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->updatePageTransCount(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->updatePageTrans(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransbarStatusMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadFinished(I)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume instanceId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixTransService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isFocusedInstance(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->updateInstanceId(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;->onResume(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateLangList(Z)V

    return-void
.end method

.method public openLangPackSettings()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->openLangpackSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openTransOptionSettings()V

    :goto_0
    return-void
.end method

.method public openLangPackSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p6, p7}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openLangPackSettingsImpl(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public openLangPackSettingsResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openSettings(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openSettingsImpl()V

    const-string p1, "Success"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openSettingsResult(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SixTransService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Fail-OpenSettings"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openSettingsResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openSettingsImpl()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b0073

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openTranslateSettings(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openTransOptionSettings()V

    :goto_0
    return-void
.end method

.method public openSettingsResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x6

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openTransOptionSettings()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    const-string v1, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getExtensionOptionPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "create_new_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.browser.application_id"

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public refresh(Ljava/lang/String;IIJ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->refreshTranslator(J)V

    return-void
.end method

.method public refreshResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransObserver;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeObserver observer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " instanceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixTransService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mObserversMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public sendEventLog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "SOURCE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TARGET"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendSourceTargetEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendPageTransEventLog()V

    :cond_0
    return-void
.end method

.method public sendExpandEventLog(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendExpandEventLog(Z)V

    return-void
.end method

.method public sendImgTransEventLog()V
    .locals 3

    const-string v0, "SOURCE"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TARGET"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "20066"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendTransEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMoveEventLog()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendMoveEventLog()V

    return-void
.end method

.method public sendPageTransEventLog()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mTransLogMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SOURCE"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TARGET"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->getPageTrans()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-string v3, "20067"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    invoke-static {v3, v1, v2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendTransEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->updatePageTrans(Z)V

    :cond_2
    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogInfo;->updatePageTransCount(I)V

    return-void
.end method

.method public sendSplitModeEventLog(ZZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/TransLogUtil;->sendSplitModeEventLog(ZZ)V

    return-void
.end method

.method public setLang(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setLang : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixTransService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->setTargetLang(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public setLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    const-string p1, "add_lang"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p4, "en"

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    const-string p1, "TARGET"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->setTargetLang(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "SOURCE"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstanceId(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTransBarShowing(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLangMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onUpdateFabStatus(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const-string p1, "Success"

    invoke-virtual {p0, p7, p8, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLangResult(JLjava/lang/String;)V

    goto :goto_2

    :goto_1
    const-string p2, "SixTransService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string p1, "Fail-SetLang"

    invoke-virtual {p0, p7, p8, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLangResult(JLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setLangList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 0

    const-string p1, "PLUGIN_ON_DEVICE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SOURCE"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSourceLanguageList:[Ljava/lang/String;

    invoke-virtual {p0, p8, p9, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLangListResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public setLangListResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLangResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMode(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setModeImpl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "Success"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setModeResult(JLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SixTransService"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "Fail-SetMode"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setModeResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setModeImpl(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorModeEnabled(Z)V

    return-void
.end method

.method public setModeResult(JLjava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/e;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTargetLang(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->setTargetLang(Ljava/lang/String;)Z

    return-void
.end method

.method public setTransSplitMode(Landroid/app/Activity;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mSplitModeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;IIJ)V
    .locals 11

    move-object v1, p0

    move-object v0, p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->checkOndevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Lcom/sec/android/app/sbrowser/extensions/trans/g;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p11

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/extensions/trans/g;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V

    invoke-static {v10}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/sec/android/app/sbrowser/extensions/a;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p11

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/a;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v7}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public translateResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLangInfo(Z)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SixTransService"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateLangList(Z)V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTranslateV2()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->isTransBarShowing(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->refreshTranslator()V

    const-string p1, "SOURCE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getSourceLanguageList(J)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onUpdateLangList()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runTransUpdateState()V

    :cond_3
    return-void
.end method

.method public updateStatus(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 5

    const-string p1, "SixTransService"

    const-string v0, "updateStatus:"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstanceId(I)I

    move-result p4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    array-length v4, p3

    if-lt v4, v2, :cond_0

    aget-object p4, p3, v1

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    add-int/2addr p4, v3

    aget-object p3, p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-string p3, "ORIGIN"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onTranslate(ZI)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mIsSupportedLang:Z

    goto/16 :goto_1

    :cond_1
    const-string p3, "TRANSLATING"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, v3, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onTranslate(ZI)V

    goto/16 :goto_1

    :cond_2
    const-string p3, "TRANS_DONE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onDone(I)V

    goto/16 :goto_1

    :cond_3
    const-string p3, "SHOW_FAB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-direct {p0, v3, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onUpdateFabStatus(ZI)V

    goto :goto_1

    :cond_4
    const-string p3, "HIDE_FAB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-direct {p0, v1, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onUpdateFabStatus(ZI)V

    goto :goto_1

    :cond_5
    const-string p3, "NOT_SUPPORTED_LANG"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mIsSupportedLang:Z

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-static {p3, v3, v4, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showWebTransErrMsg(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p3, "NOT_SUPPORTED_T_LANG"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    invoke-static {p3, v2, v4, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showWebTransErrMsg(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string p3, "SAME_LANG"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-static {p3, v2, v4, v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showWebTransErrMsg(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p3, "CHANGE_TARGET"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_1

    :cond_9
    const-string p3, "CLOSE_FAB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_1

    :cond_a
    const-string p3, "LOADING"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onLoading(I)V

    goto :goto_1

    :cond_b
    const-string p3, "SHUTDOWN"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onShutdown()V

    :cond_c
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_3

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_d

    const-string p2, "Success"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p6, p7, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateStatusResult(J[Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p2, "Fail-UpdateStatus"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p6, p7, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateStatusResult(J[Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public updateStatusResult(J[Ljava/lang/String;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/d;-><init>(J[Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTransMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Addons"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "On-device"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Server"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->mMode:Ljava/lang/String;

    const-string v1, "TARGET"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
