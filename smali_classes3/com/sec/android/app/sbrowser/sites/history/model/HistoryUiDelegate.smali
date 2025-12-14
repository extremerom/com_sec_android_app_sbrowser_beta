.class public interface abstract Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addMoreData()V
.end method

.method public abstract deleteHistoryData(Z)V
.end method

.method public abstract deleteSearchData()V
.end method

.method public abstract getHistoryItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract launchSelectedUrl(Ljava/lang/String;I)V
.end method

.method public abstract launchVideoHistory()V
.end method

.method public abstract selectAllHistoryItem(Z)V
.end method

.method public abstract shareHistoryData()V
.end method
