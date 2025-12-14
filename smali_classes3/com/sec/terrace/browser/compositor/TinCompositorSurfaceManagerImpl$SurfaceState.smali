.class Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceState"
.end annotation


# instance fields
.field public createPending:Z

.field public destroyPending:Z

.field public format:I

.field public height:I

.field private mParent:Landroid/view/ViewGroup;

.field public surfaceView:Landroid/view/SurfaceView;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/SurfaceHolder$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    const/4 p1, -0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    return-void
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    const-string v0, "TinCompositorSurfaceMgr"

    const-string v1, "SurfaceState : attach to parent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->mParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachFromParent()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceState : detach from parent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    const-string v2, "TinCompositorSurfaceMgr"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->mParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public isAttached()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->mParent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    return p0
.end method

.method public surfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method
