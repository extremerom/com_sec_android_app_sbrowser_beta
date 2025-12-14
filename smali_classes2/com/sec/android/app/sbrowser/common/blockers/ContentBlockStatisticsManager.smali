.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mArrayNumberOfBlockedElements:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayNumberOfBlockedRequests:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedElements:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedRequests:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearNumberOfBlockedContents()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedElements:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedRequests:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public getChildIdForCurrentTab()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getChildProcessUniqueId()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentContentBlockTabContext()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getNativeWebContents()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberOfBlockedContents()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getCurrentContentBlockTabContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getNumberOfBlockedElements(J)I

    move-result v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->getNumberOfBlockedRequests(J)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public getNumberOfBlockedContents(ILcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V
    .locals 9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    const/4 v0, 0x1

    rsub-int/lit8 p1, p1, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    new-instance v3, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;

    invoke-direct {v3}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;-><init>()V

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;->getContentBlockCounts(JJLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V

    return-void
.end method

.method public getNumberOfBlockedElements(J)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedElements:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getNumberOfBlockedRequests(J)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedRequests:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public putNumberOfBlockedElements(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedElements:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public putNumberOfBlockedRequests(JI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mArrayNumberOfBlockedRequests:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public registerStatisticsListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    invoke-static {p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->setStatisticsListener(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatisticsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method
