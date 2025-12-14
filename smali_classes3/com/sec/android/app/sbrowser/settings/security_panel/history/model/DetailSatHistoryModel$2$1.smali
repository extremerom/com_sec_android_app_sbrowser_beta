.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->onStatsAvailable(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2$1;->this$1:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    check-cast p2, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2$1;->compare(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;)I

    move-result p0

    return p0
.end method
