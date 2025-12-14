.class Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->requestGraphDataPopup(Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

.field final synthetic val$moduleData:Ljava/util/Map;

.field final synthetic val$sDate:Lcom/sec/android/app/sbrowser/common/utils/DateOnly;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;Lcom/sec/android/app/sbrowser/common/utils/DateOnly;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$sDate:Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$moduleData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$sDate:Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DateOnly;->nDaysLater(I)Lcom/sec/android/app/sbrowser/common/utils/DateOnly;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$moduleData:Ljava/util/Map;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$moduleData:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->e(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->k(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;I)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "requestGraphDataPopup(mDataPopup) : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->e(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacyGraph"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->b(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->i(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$moduleData:Ljava/util/Map;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Block popup-ups - OFF, so do not add on graph"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->g(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->val$moduleData:Ljava/util/Map;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;->d(Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController;)Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/settings/PrivacyGraphDataController$CleanGraphDataListener;->onCleanDataReady(I)V

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
