.class public Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationDataFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationDataFetcher$Natives;,
        Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationDataFetcher$UNDataFetchCallback;
    }
.end annotation


# direct methods
.method public static createUnwantedNavigationResultList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static prepareUnwantedNavigationData(Ljava/util/List;Ljava/lang/String;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationData;",
            ">;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/protected_browsing/unwanted_navigation/TerraceUnwantedNavigationData;-><init>(Ljava/lang/String;JZ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
