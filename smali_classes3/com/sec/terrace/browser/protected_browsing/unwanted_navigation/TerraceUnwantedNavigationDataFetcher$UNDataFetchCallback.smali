.class public interface abstract Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationDataFetcher$UNDataFetchCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UNDataFetchCallback"
.end annotation


# virtual methods
.method public abstract onCountsAvailable(I)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onStatsAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationData;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
