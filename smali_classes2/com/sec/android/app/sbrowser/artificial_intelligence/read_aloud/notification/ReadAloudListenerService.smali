.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->stopListenerService()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->lambda$onCreate$0()V

    return-void
.end method

.method public static finishStartingForegroundService(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V
    .locals 2

    const-string v0, "si__ReadAloudListenerService"

    const-string v1, "finishStartingForegroundService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SBROWSER_READ_ALOUD_NOTIFICATION_CHANNEL"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilderFactory;->createNotificationBuilder(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->getNotificationId()I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudForegroundServiceUtils;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V

    return-void
.end method

.method private getManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->getNotificationId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->getManager(I)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationId()I
    .locals 0

    const p0, 0x7f0b0981

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private processAction(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processAction(): action -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ReadAloudListenerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x3e8

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "ListenerService.CANCEL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "ListenerService.SWIPE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "ListenerService.PAUSE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v3, "ReadAloudListenerService.SEEK_FORWARD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v3, "ListenerService.NEXT_TRACK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v3, "ListenerService.STOP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "ListenerService.PLAY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v3, "ReadAloudListenerService.SEEK_BACKWARD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_0

    :sswitch_9
    const-string v3, "ListenerService.PREVIOUS_TRACK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onPause(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onNext()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onNextArticle()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onStop(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onPlay(I)V

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x3ea

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onPause(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onPrev()V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onPrevArticle()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ffd1fd0 -> :sswitch_9
        -0x51938020 -> :sswitch_8
        -0x20bccddb -> :sswitch_7
        0x39abdc1 -> :sswitch_6
        0x39c3a8f -> :sswitch_5
        0x4097f9ac -> :sswitch_4
        0x4ccc6708 -> :sswitch_3
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
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "si__ReadAloudListenerService"

    if-nez p1, :cond_0

    const-string p0, "processIntent(): intent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->getManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->getNotificationInfo()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "processIntent()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onServiceStarted(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->updateNotification(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->processAction(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;)V

    :goto_0
    return v1

    :cond_4
    :goto_1
    const-string p0, "processIntent(): notification info is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private stopListenerService()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "si__ReadAloudListenerService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy()"

    const-string v1, "si__ReadAloudListenerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->mAudioBecomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy(): error -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->getManager()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationManager;->onServiceDestroyed()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p3, "onStartCommand(): "

    const-string v0, "si__ReadAloudListenerService"

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->processIntent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "onStartCommand(): something\'s wrong"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->finishStartingForegroundService(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudListenerService;->stopListenerService()V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
