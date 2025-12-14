.class public abstract Lcom/sec/terrace/TerraceFeatureList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceFeatureList$Natives;
    }
.end annotation


# static fields
.field private static sTestFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static isEnabled(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceFeatureList;->sTestFeatures:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceFeatureListJni;->get()Lcom/sec/terrace/TerraceFeatureList$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceFeatureList$Natives;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setTestFeatures(Ljava/util/Map;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/sec/terrace/TerraceFeatureList;->sTestFeatures:Ljava/util/Map;

    return-void
.end method
