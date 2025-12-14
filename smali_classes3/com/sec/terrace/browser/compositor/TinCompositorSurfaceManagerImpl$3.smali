.class Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

.field final synthetic val$state:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;->val$state:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;->val$state:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->e(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void
.end method
