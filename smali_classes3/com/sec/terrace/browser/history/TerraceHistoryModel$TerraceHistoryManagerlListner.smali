.class public interface abstract Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/history/TerraceHistoryModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceHistoryManagerlListner"
.end annotation


# virtual methods
.method public abstract clearHistoryURLsDone()V
.end method

.method public abstract onHistoryCleared()V
.end method

.method public abstract onHistoryCountReceived(I)V
.end method

.method public abstract onHistoryDataReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHistoryItemDeleted(Ljava/lang/String;J)V
.end method

.method public abstract onHistoryItemReceived(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
.end method

.method public abstract onHistoryItemUpdated(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
.end method
