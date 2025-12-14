.class Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource$Callback;)V
    .locals 4

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->getBlockedCountsByDate(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "hasTodayTrackData : backwardData : "

    const-string v3, "BlockRedirectDataSource"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;-><init>(II)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockRedirectionDataSource$Callback;->onResponse(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardResponse;)V

    return-void
.end method
