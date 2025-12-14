.class public Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getLevel()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getLevel()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
