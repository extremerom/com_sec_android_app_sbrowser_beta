.class Lorg/chromium/components/embedder_support/view/ContentViewRenderView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->didSwapFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;


# direct methods
.method public constructor <init>(Lorg/chromium/components/embedder_support/view/ContentViewRenderView;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$2;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/view/ContentViewRenderView$2;->this$0:Lorg/chromium/components/embedder_support/view/ContentViewRenderView;

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
