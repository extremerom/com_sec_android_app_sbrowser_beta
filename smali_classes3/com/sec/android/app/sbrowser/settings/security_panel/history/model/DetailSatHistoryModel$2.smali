.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

.field final synthetic val$trackerSet:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

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
    const-string p0, "onCountsAvailable : total : "

    const-string p1, "DetailSatHistoryModel"

    invoke-static {v0, p0, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;Z)V
    .locals 3
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

    const-string v0, "DetailSatHistoryModel"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onStatsAvailable mSatLevel : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    iget v1, v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "sort by time -------------------------------------------"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    iget v0, v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mSatLevel:I

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingUtils;->shouldConsiderEntryForStatsUI(Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getTrackerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->getCount()I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p2, v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel$2;->val$trackerSet:Ljava/util/LinkedHashMap;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSatHistoryModel;Ljava/util/HashMap;)V

    return-void
.end method
