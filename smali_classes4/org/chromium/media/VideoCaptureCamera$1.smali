.class Lorg/chromium/media/VideoCaptureCamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/VideoCaptureCamera;->setPhotoOptions(DIDIDD[DZDDIDZZIZZD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$1;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "success"

    goto :goto_0

    :cond_0
    const-string p0, "failed"

    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "VideoCapture"

    const-string p2, "onAutoFocus() finished: %s "

    invoke-static {p1, p2, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
