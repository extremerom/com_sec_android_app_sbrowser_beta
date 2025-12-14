.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->getUnCaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->g(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[Object Capture] Thread Uncaught exception ="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ObjectCaptureModel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
