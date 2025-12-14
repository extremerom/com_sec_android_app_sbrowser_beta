.class Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;)V
    .locals 8

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(Ljava/util/Calendar;)V

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->getTimeInMillis()J

    move-result-wide v5

    new-instance v2, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;

    invoke-direct {v2}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;-><init>()V

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;

    invoke-direct {v7, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource;Lcom/sec/android/app/sbrowser/quickaccess/model/BlockPopupsDataSource$Callback;)V

    invoke-virtual/range {v2 .. v7}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->getPopupBlockerStats(JJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-void
.end method
