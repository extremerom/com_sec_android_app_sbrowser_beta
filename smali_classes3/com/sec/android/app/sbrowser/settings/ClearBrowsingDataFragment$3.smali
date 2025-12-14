.class Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->fetchBrowsingData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 0

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->r(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;J)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "history count "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->l(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClearBrowsingDataFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "video history count "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->p(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->l(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->p(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setHistoryData(J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->s(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    return-void
.end method
