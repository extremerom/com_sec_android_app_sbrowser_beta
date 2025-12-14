.class public Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;
    }
.end annotation


# instance fields
.field private mNativeTinUrlFilterBridge:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->mNativeTinUrlFilterBridge:J

    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->mNativeTinUrlFilterBridge:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;->destroy(JLcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->mNativeTinUrlFilterBridge:J

    return-void
.end method

.method public isUrlFilterSupported()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->isUrlFilterSupported()Z

    move-result p0

    return p0
.end method

.method public matchesUrl(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;->mNativeTinUrlFilterBridge:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;->matchesUrl(JLcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
