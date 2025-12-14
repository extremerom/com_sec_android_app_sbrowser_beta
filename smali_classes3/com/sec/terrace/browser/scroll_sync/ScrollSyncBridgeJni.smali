.class Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->M0rUTeiI()J

    move-result-wide v0

    return-wide v0
.end method

.method public onTriggerScrollSync(JIIZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MuvTURE7(JIIZ)V

    return-void
.end method
