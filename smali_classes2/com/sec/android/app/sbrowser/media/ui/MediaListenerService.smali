.class abstract Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->lambda$processAction$0()V

    return-void
.end method

.method public static finishStartingForegroundService(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V
    .locals 3

    const-string v0, "SBROWSER_MEDIA_NOTIFICATION_CHANNEL"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/NotificationBuilderFactory;->createNotificationBuilder(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    move-result-object v0

    const-string v1, "startForeground called when notification info is null"

    const-string v2, "[MM]MediaListenerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getNotificationId()I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Unable to start media foreground service"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getManager()Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getNotificationId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getManager(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$processAction$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->stopListenerService()V

    return-void
.end method

.method private processAction(Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;)V
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x3e8

    const/4 v6, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "ListenerService.CANCEL"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v7, "ListenerService.SWIPE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v7, "ListenerService.PAUSE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_3
    const-string v7, "ListenerService.SEEK_FORWARD"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_4
    const-string v7, "ListenerService.NEXT_TRACK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v6, v0

    goto :goto_0

    :sswitch_5
    const-string v7, "ListenerService.SEEK_BACKWARD"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v6, v1

    goto :goto_0

    :sswitch_6
    const-string v7, "ListenerService.STOP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v6, v2

    goto :goto_0

    :sswitch_7
    const-string v7, "ListenerService.PLAY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v6, v3

    goto :goto_0

    :sswitch_8
    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_9
    const-string v7, "ListenerService.PREVIOUS_TRACK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, v5}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onPause(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2, v5}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onStop(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/media/ui/c;

    invoke-direct {p2, v4, p0}, Lcom/sec/android/app/sbrowser/media/ui/c;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_5
    invoke-virtual {p2, v5}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onPlay(I)V

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x3ea

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onPause(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onMediaSessionAction(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ffd1fd0 -> :sswitch_9
        -0x20bccddb -> :sswitch_8
        0x39abdc1 -> :sswitch_7
        0x39c3a8f -> :sswitch_6
        0xd4a41dd -> :sswitch_5
        0x4097f9ac -> :sswitch_4
        0x605ff16b -> :sswitch_3
        0x6fb844e9 -> :sswitch_2
        0x6fec5e2d -> :sswitch_1
        0x711dedc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getManager()Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onServiceStarted(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateNotification(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->processAction(Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;)V

    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method private stopListenerService()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public abstract getNotificationId()I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "[MM]MediaListenerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->getManager()Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->onServiceDestroyed()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "[MM]MediaListenerService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->processIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->finishStartingForegroundService(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->stopListenerService()V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
