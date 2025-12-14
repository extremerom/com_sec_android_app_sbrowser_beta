.class public interface abstract Lcom/sec/android/app/sbrowser/reader/ReaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract attachReaderTab()V
.end method

.method public abstract createReaderTab()V
.end method

.method public abstract destroyReaderTab()V
.end method

.method public abstract extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadData(Ljava/lang/String;)V
.end method

.method public abstract onExtractionFailed()V
.end method

.method public abstract showReaderTab()V
.end method
