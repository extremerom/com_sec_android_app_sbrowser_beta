.class public interface abstract Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AntiTrackingStatsCallback"
.end annotation


# virtual methods
.method public abstract onCountsAvailable([I)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onStatsAvailable(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
