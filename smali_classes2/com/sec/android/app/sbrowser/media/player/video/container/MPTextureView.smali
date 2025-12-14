.class public Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerView;


# instance fields
.field private final mClientWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->mClientWeakReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->mClientWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->mClientWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;->getVideoHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x168

    :goto_0
    return p0
.end method

.method private getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->mClientWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;->getVideoWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x280

    :goto_0
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->getVideoWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->getVideoHeight()I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->mClientWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;->getVideoRatioMode()I

    move-result v2

    if-nez v2, :cond_1

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-le v2, v3, :cond_0

    div-int p2, v3, v0

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_3

    div-int p1, v2, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_2

    div-int p2, v3, v0

    goto :goto_0

    :cond_2
    if-le v2, v3, :cond_3

    div-int p1, v2, v1

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMeasure w = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MM]MPTextureView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScaleChanged(D)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
