.class Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;->createOldHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;

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
    .locals 0

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
