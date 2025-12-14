.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sec.android.app.sbrowser.object_capture.ObjectCaptureSticker"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPhotoEditorServiceMessenger:Landroid/os/Messenger;

.field private final mResponseHandler:Landroid/os/Handler;

.field private mStickerUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$1;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mResponseHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker$2;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mPhotoEditorServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private bindService()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    const-string v1, "Attempt to bindService with PhotoEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.mimage.photoretouching"

    const-string v4, "com.sec.android.mimage.photoretouching.service.MyStickerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string p0, "service binding with PhotoEditor failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    const-string v1, "Service binding with PhotoEditor failed, exception is: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->requestAddSticker()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->unbindService()V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private grantPermissionToUri()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mStickerUri:Landroid/net/Uri;

    const/4 v2, 0x1

    const-string v3, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mStickerUri:Landroid/net/Uri;

    return-object p0
.end method

.method private requestAddSticker()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mStickerUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->grantPermissionToUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clipped_filepath"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mPhotoEditorServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    const-string v1, "request failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private revokePermissionFromUri()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mStickerUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.mimage.photoretouching"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method private unbindService()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mConnection:Landroid/content/ServiceConnection;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mPhotoEditorServiceMessenger:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->revokePermissionFromUri()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->TAG:Ljava/lang/String;

    const-string v1, "unbindService failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public addToSticker(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mStickerUri:Landroid/net/Uri;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->requestAddSticker()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureSticker;->bindService()V

    return-void
.end method
