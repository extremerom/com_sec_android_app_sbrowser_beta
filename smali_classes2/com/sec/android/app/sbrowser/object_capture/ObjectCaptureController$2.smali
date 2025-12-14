.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->initAndStartObjectCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearObjectCaptureInfo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->cancelCapture()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->hideProgressBarIfVisible()V

    const-string v0, "ObjectCaptureController"

    const-string v1, "Remove client view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->removeOCInfo()V

    return-void
.end method

.method public getCurrentViewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentViewRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getObjBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getObjectResult()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getOutput()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onMenuItemClicked(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->k(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;I)V

    return-void
.end method

.method public onPerformLongClickAtPoint(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->l(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;FF)Z

    move-result p0

    return p0
.end method
