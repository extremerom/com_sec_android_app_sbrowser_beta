.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->removeOCInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, " [Object Capture] Thread Exception="

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->e(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, "ObjectCaptureModel"

    const-string v3, "[Object Capture][Pref] release started"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;->release()V

    const-string v2, "ObjectCaptureModel"

    const-string v3, "[Object Capture][Pref] release ended"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "ObjectCaptureModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    goto :goto_0

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->h(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    throw v0

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
