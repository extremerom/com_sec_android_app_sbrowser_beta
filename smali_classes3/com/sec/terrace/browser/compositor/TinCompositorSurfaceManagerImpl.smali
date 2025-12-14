.class Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;
    }
.end annotation


# instance fields
.field private mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

.field private final mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

.field private mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

.field private final mParentView:Landroid/view/ViewGroup;

.field private mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

.field private final mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    new-instance p2, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x3

    invoke-direct {p2, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;-><init>(Landroid/content/Context;ILandroid/view/SurfaceHolder$Callback;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    new-instance p2, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;-><init>(Landroid/content/Context;ILandroid/view/SurfaceHolder$Callback;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    return-object p0
.end method

.method private attachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->createPending:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$2;-><init>(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private attachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->createPending:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->attachTo(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->attachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void
.end method

.method private detachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$3;-><init>(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private detachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isValid()Z

    move-result v0

    iput-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->detachFromParent()V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->disownClientSurface(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->attachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    :cond_1
    return-void
.end method

.method private disownClientSurface(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceDestroyed(Landroid/view/Surface;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void
.end method

.method private getStateForHolder(Landroid/view/SurfaceHolder;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doneWithUnownedSurface()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void
.end method

.method public getActiveSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    :goto_0
    return-object p0
.end method

.method public recreateSurface()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$1;-><init>(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestSurface(I)V
    .locals 3

    const-string v0, "Transitioning to surface with format : "

    const-string v1, "TinCompositorSurfaceMgr"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    :goto_0
    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->attachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-boolean p1, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->createPending:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->disownClientSurface(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;Z)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceCreated(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget p1, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->height:I

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->width:I

    if-ne p1, v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Parent height is longer than current surface height! parent height : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->height:I

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->height:I

    :cond_5
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    iget v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->width:I

    iget p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->height:I

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceChanged(Landroid/view/Surface;III)V

    :cond_6
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setWillNotDraw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public shutDown()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceNow(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mTranslucent:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOpaque:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->getStateForHolder(Landroid/view/SurfaceHolder;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne v0, v1, :cond_0

    iput p3, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->width:I

    iput p4, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->height:I

    iput p2, v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceChanged(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "TinCompositorSurfaceMgr"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->getStateForHolder(Landroid/view/SurfaceHolder;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->createPending:Z

    iput v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->disownClientSurface(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;Z)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->surfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "TinCompositorSurfaceMgr"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->getStateForHolder(Landroid/view/SurfaceHolder;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    move-result-object p1

    iget-boolean v0, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->createPending:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->destroyPending:Z

    :cond_1
    :goto_0
    iput v1, p1, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->format:I

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mOwnedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->disownClientSurface(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-interface {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->unownedSurfaceDestroyed()V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->attachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mRequestedByClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->detachSurfaceLater(Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl$SurfaceState;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;->mClient:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;

    invoke-interface {p0, p2}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;->surfaceRedrawNeededAsync(Ljava/lang/Runnable;)V

    return-void
.end method
