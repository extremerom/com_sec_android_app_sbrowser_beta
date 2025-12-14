.class final Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->performLongClick(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V

    :cond_0
    return-void
.end method
