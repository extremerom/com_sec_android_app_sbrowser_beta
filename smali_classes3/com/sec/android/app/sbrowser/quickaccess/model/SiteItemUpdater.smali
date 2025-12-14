.class public Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

.field private mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->lambda$update$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->lambda$updateItemsInPendingList$1(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;)Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

    return-object p0
.end method

.method private synthetic lambda$update$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;)V

    return-void
.end method

.method private synthetic lambda$updateItemsInPendingList$1(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mSiteItemFetcher:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$2;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAllPendingItem()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;->getAllPendingItem()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateItemsInPendingList(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->getAllPendingItem()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/i;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePendingList(Ljava/util/List;)V
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

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdaterPreference;->addAllPendingItem(Ljava/util/List;)V

    return-void
.end method
