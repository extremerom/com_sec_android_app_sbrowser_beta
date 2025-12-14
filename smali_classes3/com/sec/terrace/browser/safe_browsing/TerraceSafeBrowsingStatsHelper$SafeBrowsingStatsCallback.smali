.class public interface abstract Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SafeBrowsingStatsCallback"
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
            "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation
.end method
