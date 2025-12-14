.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

.field final synthetic val$list:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->val$list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountsAvailable([I)V
    .locals 0

    return-void
.end method

.method public onStatsAvailable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStatsAvailable : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DetailSafeBrowsingHistoryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;->isPageBlocked()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel;->mIsEnabled:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->val$list:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;->isPageBlocked()Z

    move-result v5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/data/DetailHistoryDTO;-><init>(JZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel$1;->val$list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailSafeBrowsingHistoryModel;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method
