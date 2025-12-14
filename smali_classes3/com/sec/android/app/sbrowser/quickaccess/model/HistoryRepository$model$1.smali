.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J=\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001a\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1",
        "Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;",
        "",
        "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
        "itemList",
        "Ldb/r;",
        "onHistoryDataReceived",
        "(Ljava/util/List;)V",
        "clearHistoryURLsDone",
        "()V",
        "",
        "count",
        "onHistoryCountReceived",
        "(I)V",
        "item",
        "onHistoryItemReceived",
        "(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V",
        "",
        "url",
        "oldTitle",
        "",
        "oldVisitTime",
        "newTitle",
        "newVisitTime",
        "onHistoryItemUpdated",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V",
        "visitTime",
        "onHistoryItemDeleted",
        "(Ljava/lang/String;J)V",
        "onHistoryCleared",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHistoryURLsDone()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->updateHistoryItems()V

    return-void
.end method

.method public onHistoryCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->updateHistoryItems()V

    return-void
.end method

.method public onHistoryCountReceived(I)V
    .locals 0

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HistoryRepository"

    const-string v1, "onHistoryDataReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->access$getItemsListener$p(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->access$getItemsListener$p(Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem$Companion;->from(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$ItemsListener;->onChanged(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const-string p0, "itemsListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public onHistoryItemDeleted(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->updateHistoryItems()V

    return-void
.end method

.method public onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->updateHistoryItems()V

    return-void
.end method

.method public onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$model$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->updateHistoryItems()V

    return-void
.end method
