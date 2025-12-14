.class public interface abstract Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentBlockStatsCallback"
.end annotation


# virtual methods
.method public abstract onCountsAvailable([I)V
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method

.method public abstract onStatsAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
