.class public Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;,
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;

.field private mDataType:I

.field private mNativeTinBrowsingDataCounterBridge:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mCallback:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;

    iput p2, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mDataType:I

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;

    move-result-object p1

    invoke-interface {p1, p0, p2, p2, p3}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;->init(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mNativeTinBrowsingDataCounterBridge:J

    return-void
.end method

.method private onBrowsingDataCounterFinished(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mCallback:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;

    iget p0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mDataType:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;->onCounterFinished(JI)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mCallback:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$TerraceBrowsingDataCounterCallback;

    iget-wide v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mNativeTinBrowsingDataCounterBridge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridgeJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mNativeTinBrowsingDataCounterBridge:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;->destroy(JLcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;->mNativeTinBrowsingDataCounterBridge:J

    :cond_0
    return-void
.end method
