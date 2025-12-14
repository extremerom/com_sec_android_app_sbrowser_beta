.class Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TinExtensionsTextureView"
.end annotation


# instance fields
.field private mExtensionsSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public getTextureView()Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "TinExtensionsRenderView"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->destroy()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceTextureSizeChanged width : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinExtensionsRenderView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/view/Surface;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->mExtensionsSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v7, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iget-wide v2, v4, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->setSurface(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;IILandroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public setExtensionsSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->mExtensionsSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
