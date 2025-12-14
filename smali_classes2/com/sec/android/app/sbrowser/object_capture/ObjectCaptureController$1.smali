.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$ObjectCaptureControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->createObjectCaptureModel()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCaptureFailed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->isTabClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->clearClientViewIfVisible()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->hideProgressBarIfVisible()V

    const-string v0, "ObjectCaptureController"

    const-string v1, "handleCaptureFailed : remove inflated view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureTabDelegate;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->removeOCInfo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleObjectCaptureResult(ZLcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->hideProgressBarIfVisible()V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->m(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->getOCDrawHelper()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->getOCDrawHelper()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->clearObjectCapture()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->i(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->initialize(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->j(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;)V

    return-void
.end method
