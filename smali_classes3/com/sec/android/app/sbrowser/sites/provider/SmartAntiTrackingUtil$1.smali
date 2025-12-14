.class Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil;->getAntiTrackingStats(Landroid/content/Context;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$responseBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$responseBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 0

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;->shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTrackerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/sbrowser/sites/provider/c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/sites/provider/c;-><init>(I)V

    invoke-virtual {v0, v3, v2, v4}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v2, LH9/d;

    const/16 v3, 0x12

    invoke-direct {v2, v3, p2}, LH9/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v2, "mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v1, "tracker"

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$responseBundle:Landroid/os/Bundle;

    const-string v0, "tracking"

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/SmartAntiTrackingUtil$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
