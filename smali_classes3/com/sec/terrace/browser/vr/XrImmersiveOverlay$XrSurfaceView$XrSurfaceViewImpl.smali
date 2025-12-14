.class Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XrSurfaceViewImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    iget-object v0, v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-static {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->b(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->b(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Z)V

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->b(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Z)V

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->a(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->d(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;->this$1:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;

    invoke-static {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)V

    :cond_1
    return-void
.end method
