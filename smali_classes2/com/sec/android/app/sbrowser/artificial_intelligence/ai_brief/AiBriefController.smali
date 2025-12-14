.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAiBriefHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

.field private final mPortalSiteFilter:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;

.field private mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mPortalSiteFilter:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->lambda$fetchIconWithIconFetcher$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->onReceiveIconFromQuickAccessSiteItemFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->sendReadArticlesAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private fetchIconWithIconFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const-string v0, "si__AiBriefController"

    const-string v1, "fetch icon from Icon Fetcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v10, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private filterTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mPortalSiteFilter:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->filterTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private filterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mPortalSiteFilter:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/PortalSiteFilter;->filterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAiBriefHandler()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mAiBriefHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mAiBriefHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mAiBriefHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    return-object p0
.end method

.method private getSiteItemFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    return-object p0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$Companion;->hasCapabilityUsage(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$fetchIconWithIconFetcher$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->onReceiveIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private onReceiveIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    const-string v0, "si__AiBriefController"

    const-string v1, "[onReceiveIcon]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->getFaviconFromFetcher(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->getSiteItemFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p3, v0, p4, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onReceiveIconFromQuickAccessSiteItemFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p4

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p6

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 p1, 0x0

    invoke-virtual {p4, v7, p1, p4, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private sendReadArticlesAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 9

    if-nez p4, :cond_0

    const-string p0, "si__AiBriefController"

    const-string p1, "Icon load failed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->getAiBriefHandler()Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->mActivity:Landroid/app/Activity;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->sendReadArticlesAloud(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method


# virtual methods
.method public sendAiToBrief(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    const-string v0, "si__AiBriefController"

    const-string v1, "[sendToAiBrief] sendToAiBrief"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->filterTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->filterUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefController;->fetchIconWithIconFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
