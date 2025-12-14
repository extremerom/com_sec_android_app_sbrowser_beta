.class public Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;
    }
.end annotation


# static fields
.field private static final sManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionToButtonInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

.field private mMediaSession:Landroid/support/v4/media/session/p;

.field private final mMediaSessionCallback:Landroid/support/v4/media/session/j;

.field private mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

.field private mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

.field private mThrottler:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$1;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSessionCallback:Landroid/support/v4/media/session/j;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140716

    const-string v3, "ListenerService.PLAY"

    const v4, 0x7f080424

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140715

    const-string v3, "ListenerService.PAUSE"

    const v4, 0x7f080423

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f14071a

    const-string v3, "ListenerService.STOP"

    const v4, 0x7f080426

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140581

    const-string v3, "ListenerService.PREVIOUS_TRACK"

    const v4, 0x7f080425

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140580

    const-string v3, "ListenerService.NEXT_TRACK"

    const v4, 0x7f080422

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140712

    const-string v3, "ListenerService.SEEK_FORWARD"

    const v4, 0x7f080420

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    const v2, 0x7f140719

    const-string v3, "ListenerService.SEEK_BACKWARD"

    const v4, 0x7f080421

    invoke-direct {v1, v4, v2, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;-><init>(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mThrottler:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;

    return-void
.end method

.method private activateAndroidMediaSession(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    if-eq v1, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/p;->b(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static activateAndroidMediaSession(II)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getManager(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->activateAndroidMediaSession(I)V

    return-void
.end method

.method private addNotificationButtons(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->computeBigViewActions(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mActionToButtonInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mIconResId:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mDescriptionResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager$MediaButtonInfo;->mIntentString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {p1, v4, v5, v3}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->computeCompactViewActionIndices(Ljava/util/List;)[I

    move-result-object v0

    const-string v3, "ListenerService.CANCEL"

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {p1, v1, v0, p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setMediaStyle(Landroid/support/v4/media/session/p;[ILandroid/app/PendingIntent;Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    :cond_4
    return-void
.end method

.method private static clear(I)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getManager(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->clearNotification()V

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearNotification()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mThrottler:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;->clearPendingNotifications()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, LU0/u;

    invoke-direct {v1, v0}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    iget-object v1, v1, LU0/u;->b:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/n;

    iget-object v0, v0, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/media/session/p;->c(Landroid/support/v4/media/session/j;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/p;->b(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    iget-object v0, v0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/n;

    iget-object v1, v0, Landroid/support/v4/media/session/m;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v1, v0, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, v0, Landroid/support/v4/media/session/m;->b:Landroid/support/v4/media/session/l;

    iget-object v0, v0, Landroid/support/v4/media/session/l;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    return-void
.end method

.method private computeBigViewActions(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v2, p0, [I

    fill-array-data v2, :array_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, p0, :cond_2

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x0
        0x1
        0x5
        0x3
        0x7
    .end array-data
.end method

.method private static computeCompactViewActionIndices(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-gt v0, v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getPlayPauseActionIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getPlayPauseActionIndex(Ljava/util/List;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    filled-new-array {v0, v1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object p0
.end method

.method private computeMediaSessionActions()J
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionActions:Ljava/util/Set;

    const-wide/16 v0, 0x206

    if-eqz p0, :cond_4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x216

    :cond_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    :cond_1
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_2
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    :cond_3
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_4
    return-wide v0
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 2

    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/media/ui/MediaPlaybackListenerService;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p0
.end method

.method private createMediaSession()Landroid/support/v4/media/session/p;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v4/media/session/p;

    const v2, 0x7f1400cf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/support/v4/media/session/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSessionCallback:Landroid/support/v4/media/session/j;

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/media/session/p;->c(Landroid/support/v4/media/session/j;Landroid/os/Handler;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/p;->b(Z)V

    return-object v1
.end method

.method private createMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LG5/J2;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LG5/J2;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    iget-object v2, v0, LG5/J2;->a:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    const-string v1, "android.media.metadata.TITLE"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getSafeNotificationTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LG5/J2;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v3, v1}, LG5/J2;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, LG5/J2;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v3, v1}, LG5/J2;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaSessionImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    const-string v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v3, v1}, LG5/J2;->h(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getDuration()J

    move-result-wide v0

    sget-object p0, Landroid/support/v4/media/MediaMetadataCompat;->c:LN/f;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p0, v3}, LN/A;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The android.media.metadata.DURATION key cannot be used to put a long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x14000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getArtistAndAlbumText(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, " - "

    invoke-static {p0, p1, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getManager(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    return-object p0
.end method

.method private static getPlayPauseActionIndex(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private getSafeNotificationTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hide(II)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getManager(I)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->hideNotification(I)V

    return-void
.end method

.method private hideNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->clearNotification()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isBitmapSuitableAsMediaImage(Landroid/graphics/Bitmap;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x72

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setMediaStyleLayoutForNotificationBuilder(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->setMediaStyleNotificationText(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->addNotificationButtons(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V

    return-void
.end method

.method private setMediaStyleNotificationText(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140749

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14074a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setSubText(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getSafeNotificationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->metadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getArtistAndAlbumText(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setSubText(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->origin:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    :goto_0
    return-void
.end method

.method public static shouldIgnoreMediaNotificationInfo(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    iget p1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static show(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->sManagers:Landroid/util/SparseArray;

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;-><init>()V

    iget v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mThrottler:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationThrottler;->queueNotification(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)V

    return-void
.end method

.method private updateMediaSession()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsPlayPause()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createMediaSession()Landroid/support/v4/media/session/p;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->activateAndroidMediaSession(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/p;->d(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaSession:Landroid/support/v4/media/session/p;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/media/session/p;->e(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private updateNotificationBuilder()V
    .locals 6

    const-string v0, "SBROWSER_MEDIA_NOTIFICATION_CHANNEL"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/NotificationBuilderFactory;->createNotificationBuilder(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->setMediaStyleLayoutForNotificationBuilder(Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setShowWhen(Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v2, v2, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->notificationSmallIcon:I

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setSmallIcon(I)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setAutoCancel(Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setLocalOnly(Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    const-string v2, "MediaPlayback"

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setGroup(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setGroupSummary(Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsSwipeAway()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    xor-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setOngoing(Z)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    const-string v2, "ListenerService.SWIPE"

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v4, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->tabId:I

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->contentIntent:Landroid/content/Intent;

    const/high16 v5, 0xc000000

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPrivate:Z

    xor-int/2addr p0, v1

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->setVisibility(I)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    return-void
.end method


# virtual methods
.method public createPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 20

    move-object/from16 v0, p0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->computeMediaSessionActions()J

    move-result-wide v7

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean v2, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getPosition()J

    move-result-wide v3

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getPlaybackRate()F

    move-result v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->mediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->getLastUpdatedTime()J

    move-result-wide v5

    move-wide v11, v3

    move-wide/from16 v17, v5

    move v6, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    move-wide/from16 v17, v0

    move-wide v11, v3

    move v6, v5

    :goto_1
    new-instance v19, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v0, v19

    const-wide/16 v4, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v14, -0x1

    move v1, v2

    move-wide v2, v11

    move-wide/from16 v11, v17

    invoke-direct/range {v0 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    return-object v19
.end method

.method public onMediaSessionAction(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;->onMediaSessionAction(I)V

    return-void
.end method

.method public onMediaSessionSeekTo(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;->onMediaSessionSeekTo(J)V

    return-void
.end method

.method public onPause(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;->onPause(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlay(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;->onPlay(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDestroyed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->clear(I)V

    :cond_0
    return-void
.end method

.method public onServiceStarted(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateNotification(Z)V

    return-void
.end method

.method public onStop(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->listener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;->onStop(I)V

    return-void
.end method

.method public showNotification(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->shouldIgnoreMediaNotificationInfo(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateMediaSession()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateNotificationBuilder()V

    const-string p1, "[MM]MediaNotificationManager"

    const-string v0, "startForegroundService called."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->createIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->startForegroundService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateNotification(Z)V

    :catch_0
    :goto_0
    return-void
.end method

.method public updateNotification(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;->finishStartingForegroundService(Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateMediaSession()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->updateNotificationBuilder()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mNotificationBuilder:Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "[MM]MediaNotificationManager"

    if-eqz p1, :cond_3

    const-string p1, "startForeground called when service is started."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v3, v3, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-static {p1, v3, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->supportsSwipeAway()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->isPaused:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->stopForeground(Landroid/app/Service;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LU0/u;

    invoke-direct {v1, p1}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v1, p0, v0}, LU0/u;->a(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    const-string p1, "startForeground called when notification is updated."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mService:Lcom/sec/android/app/sbrowser/media/ui/MediaListenerService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget v1, v1, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaForegroundServiceUtils;->startForeground(Landroid/app/Service;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LU0/u;

    invoke-direct {v1, p1}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->mMediaNotificationInfo:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;->id:I

    invoke-virtual {v1, p0, v0}, LU0/u;->a(ILandroid/app/Notification;)V

    :cond_5
    :goto_1
    return-void
.end method
