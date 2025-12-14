.class public Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;
    }
.end annotation


# instance fields
.field private mNativeScrollSyncBridge:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScrollSyncBridge"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridgeJni;->get()Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;->mNativeScrollSyncBridge:J

    return-void
.end method


# virtual methods
.method public triggerScrollSyncForTab(IIZ)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridgeJni;->get()Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;->mNativeScrollSyncBridge:J

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;->onTriggerScrollSync(JIIZ)V

    return-void
.end method
