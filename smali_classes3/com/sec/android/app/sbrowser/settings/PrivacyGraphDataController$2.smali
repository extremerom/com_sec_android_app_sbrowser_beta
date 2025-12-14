.class Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataSAT(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

.field final synthetic val$moduleData:Ljava/util/Map;

.field final synthetic val$satLevel:I

.field final synthetic val$trackerSet:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;ILjava/util/Map;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$satLevel:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_0

    aget v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "requestGraphDataSAT - onCountsAvailable : total : "

    const-string p1, "PrivacyGraph"

    invoke-static {v0, p0, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStatsAvailable resultList size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dbStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PrivacyGraph"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "onStatsAvailable descending order of time (by default)"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$satLevel:I

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;->shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->f(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->l(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "requestGraphDataSAT (mDataSAT) : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->f(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->c(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->isPrivacyAllOff()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p2, "SAT - OFF, so do not add on graph"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->h(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$moduleData:Ljava/util/Map;

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$satLevel:I

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;->shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;-><init>(J)V

    invoke-virtual {v2, p2}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTrackerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "requestGraphDataSAT (tracker count) : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->val$trackerSet:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->m(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->j(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->n(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->j(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$2;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->j(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$GraphDataListener;->onDataReadyForGraphs()V

    goto :goto_5

    :cond_a
    const-string p0, "mListener.onDataReadyForGraphs NULL !!!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    return-void
.end method
