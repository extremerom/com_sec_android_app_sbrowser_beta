.class Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;->a(Lcom/sec/android/app/sbrowser/media/player/video/container/MPTextureView;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/container/IMPVideoContainerViewClient;->setSurface(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
