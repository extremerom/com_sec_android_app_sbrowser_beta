.class Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->setSurfaceTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$1;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const-string p0, "TinExtensionsRenderView"

    const-string p1, "onFrameAvailable SurfaceTexture"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
