.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service connected to PhotoEditor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;Landroid/os/Messenger;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service disconnected from PhotoEditor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V

    return-void
.end method
