.class Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->recreateSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->b(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-static {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->b(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-static {v1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->a(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceDestroyed(Landroid/view/Surface;Z)V

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-static {v1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->c(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->e(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void
.end method
