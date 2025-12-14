.class public Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;
.super Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;
.source "SourceFile"


# instance fields
.field private final mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService$1;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;->lambda$onCreate$0()V

    return-void
.end method

.method private createChannel()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getNotificationId()I
    .locals 0

    const p0, 0x7f0b0701

    return p0
.end method

.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "[MM]MediaPlaybackListenerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;->createChannel()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/ui/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[MM]MediaPlaybackListenerService"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
