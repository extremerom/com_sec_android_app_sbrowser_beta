.class public Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/embedder_support/view/ContentViewRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceBridge"
.end annotation


# instance fields
.field private mSurfaceView:Landroid/view/SurfaceView;


# virtual methods
.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$SurfaceBridge;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method
