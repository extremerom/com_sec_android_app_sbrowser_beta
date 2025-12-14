.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;
.super Landroid/os/Handler;
.source "SourceFile"


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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f14083e

    if-eqz p1, :cond_2

    const-string v1, "response_data"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "is_sticker_limit_exceeded"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120036

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f14084a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V

    return-void
.end method
