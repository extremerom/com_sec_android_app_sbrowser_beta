.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/quickaccess/IQuickAccessRepository;


# static fields
.field private static final FAIL_RETRY_COOLING_TIME_MILLIS:J


# instance fields
.field private final mCachedItems:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

.field private final mContext:Landroid/content/Context;

.field private mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

.field private mInitialized:Z

.field private final mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

.field private mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

.field private mSiteItemUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

.field private final mStatusLogger:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;

.field private mUrlMigrator:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->FAIL_RETRY_COOLING_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mCachedItems:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mUrlMigrator:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mStatusLogger:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->retryToUpdateIconsIfNeeded()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->retryToUpdateItemsIfNeeded(J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->migrateUrlsIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateSiteItemIfNeeded()V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/y;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/y;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;I)V

    invoke-virtual {v0, p1}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$checkUrlExists$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$initCachedItems$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$updateIcon$5(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)V

    return-object v1
.end method

.method private createAddItemCallback(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/model/z;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/z;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private createDefaultItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setDominantColor(I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getNewItemPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    return-object v0
.end method

.method private createUpdaterCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$updateTitleByWebContentFetcher$3(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllSpeciallyRemovedItems(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/t;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$deleteAllSpeciallyRemovedItems$7(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    return-object v0
.end method

.method private getItemsFromModel()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->getItemsLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$createAddItemCallback$2(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->lambda$updateTitle$6(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/Boolean;)V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->initCachedItems()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mInitialized:Z

    return-void
.end method

.method private initCachedItems()V
    .locals 3

    const-string v0, "QuickAccessRepository"

    const-string v1, "initCachedItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemsFromModel()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/y;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->deleteAllSpeciallyRemovedItems(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Landroid/graphics/Bitmap;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$checkUrlExists$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createAddItemCallback$2(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onSuccess()V

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitleAndIconUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->DATABASE_FAIL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteAllSpeciallyRemovedItems$7(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->isSpeciallyRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->deleteSpeciallyRemovedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initCachedItems$4(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->updateValue(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mStatusLogger:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessStatusLogger;->sendCountStatusLog(I)V

    return-void
.end method

.method private static synthetic lambda$updateIcon$5(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onSuccess()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->DATABASE_FAIL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$updateTitle$6(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDefaultItemsEdited(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTitleByWebContentFetcher$3(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIconUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V

    return-void
.end method

.method private needToUpdateItems(J)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isLastRequestFailed()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "QuickAccessRepository"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isDefaultItemsEdited()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemSize()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "retry : initial item is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getLastFailedTimeMillis()J

    move-result-wide v3

    sub-long/2addr p1, v3

    sget-wide v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->FAIL_RETRY_COOLING_TIME_MILLIS:J

    cmp-long p1, p1, v3

    if-ltz p1, :cond_1

    const-string p0, "retry : cooling time is over"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->hasQuickAccessPendingUpdate()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "retry : hasQuickAccessPendingUpdate"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p1

    const-string p2, "QuickAccess"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isFirstQuickAccessRequest()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "retry: global config support & first quick access request"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V

    return-void
.end method

.method private toByteArray(Landroid/graphics/Bitmap;)[B
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method private updateByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitleByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIconByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V
    .locals 9
    .param p5    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "QuickAccessRepository"

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x12c

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getResizedBitmapImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->toByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-nez v4, :cond_2

    const-string p0, "Failed to get byteArray of icon"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p5, p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->isSyncable()Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    :goto_0
    move v7, p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/w;

    const/4 p0, 0x1

    invoke-direct {v8, p0, p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/w;-><init>(ILjava/lang/Object;)V

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateIcon(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;ZLcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    return-void

    :cond_4
    :goto_2
    const-string p0, "updateIcon : invalid input"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p5, p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V

    :cond_5
    return-void
.end method

.method private updateIconByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIconByIconUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateIconUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 1

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIconByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIconByIconUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils$Companion;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils$Companion;->getUseTitle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitleByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateTitleAndIconUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "QuickAccessSiteUpdater"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getSiteItemUpdater()Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->createUpdaterCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->update(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateTitleByWebContentFetcher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/x;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/x;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    :cond_0
    return-void
.end method

.method private validateItemType(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "virtual item must not store in repository"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "QuickAccessRepository"

    const-string p2, "addItem : invalid item"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->INVALID_PARAM:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;->ALREADY_EXIST:Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;->onAborted(Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener$ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->createDefaultItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->createAddItemCallback(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->create(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public applyItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->validateItemType(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->applyItems(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    return-void
.end method

.method public applyServerItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->applyServerItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    return-void
.end method

.method public checkUrlExists(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/t;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public deleteDefaultItems()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isDefaultItemsEdited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteByTypeNot(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    :cond_0
    return-void
.end method

.method public deleteItems(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteItems(Ljava/util/List;)V

    return-void
.end method

.method public deleteSpeciallyRemovedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->deleteByUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mCachedItems:Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    return-object p0
.end method

.method public getClient()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    return-object p0
.end method

.method public getClonedItems()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/x;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/x;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->setListener(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mIconFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    return-object p0
.end method

.method public getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemLimit()I
    .locals 0

    const/16 p0, 0x32

    return p0
.end method

.method public getItemSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "QuickAccessRepository"

    const-string v1, "getItemSize from database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->count()I

    move-result p0

    return p0
.end method

.method public getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->init()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->retryToUpdateItemsIfNeeded(J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    return-object p0
.end method

.method public getNewItemPosition()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result p0

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method public getSiteItemFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    return-object p0
.end method

.method public getSiteItemUpdater()Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getSiteItemFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mSiteItemUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    return-object p0
.end method

.method public getUrlMigrator()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mUrlMigrator:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mUrlMigrator:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mUrlMigrator:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    return-object p0
.end method

.method public getUserItems()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isDefaultItemsEdited(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, p0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->getValue()I

    move-result v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v0
.end method

.method public isDefaultListChanged(Ljava/util/List;)Z
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isDefaultItemsEdited()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v3, v4

    :goto_1
    if-ge v3, p0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v5, v6, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v4

    :goto_2
    if-ge p1, p0, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return v1

    :cond_8
    return v4
.end method

.method public isInitialized()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mInitialized:Z

    return p0
.end method

.method public isItemFull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemSize()I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public migrateUrlsIfNeeded()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getUrlMigrator()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V

    return-void
.end method

.method public onDataChanged()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/QuickAccessDBThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onIconFetched(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public refreshCachedItems()V
    .locals 2

    const-string v0, "QuickAccessRepository"

    const-string v1, "refreshCachedItems"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;->clearMaskIcon()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->clearIconCache()V

    return-void
.end method

.method public requestFetchIcon(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIcon(Ljava/lang/String;)V

    return-void
.end method

.method public requestItems()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "QuickAccessRepository"

    const-string v0, "network is disconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setLastFailedTimeMillis(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getClient()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->requestItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void
.end method

.method public retryToUpdateIconsIfNeeded()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getClient()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/x;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/x;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->retryToUpdateIconsIfNeeded(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V

    return-void
.end method

.method public retryToUpdateItemsIfNeeded(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->needToUpdateItems(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->clearQuickAccessPendingUpdate()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->requestItems()V

    :cond_0
    return-void
.end method

.method public updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V

    return-void
.end method

.method public updateItemsPosition(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->validateItemType(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getCachedItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateItemsPosition(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateSiteItemIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getSiteItemUpdater()Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->updateItemsInPendingList(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    return-void
.end method

.method public updateSiteItemUpdaterPendingList()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getUserItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getSiteItemUpdater()Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->updatePendingList(Ljava/util/List;)V

    return-void
.end method

.method public updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "QuickAccessRepository"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "updateTitle : unknown item "

    invoke-static {p0, p2, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/w;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/w;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateTitle(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "updateTitle : invalid input"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateTouchIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V
    .locals 6
    .param p4    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;)V

    return-void
.end method

.method public updateUrl(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->mModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateUrl(ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
