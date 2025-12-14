.class public Lorg/chromium/components/gcm_driver/GCMDriver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/gcm_driver/GCMDriver$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;


# instance fields
.field private mNativeGCMDriverAndroid:J

.field private mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    new-instance p1, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;

    invoke-direct {p1}, Lorg/chromium/components/gcm_driver/GoogleCloudMessagingV2;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/gcm_driver/GCMDriver;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/gcm_driver/GCMDriver;)Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mSubscriber:Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;

    return-object p0
.end method

.method private static create(J)Lorg/chromium/components/gcm_driver/GCMDriver;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/gcm_driver/GCMDriver;-><init>(J)V

    sput-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    invoke-static {}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->migrateHasPersistedMessagesPref()V

    sget-object p0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already instantiated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    return-void
.end method

.method public static dispatchMessage(Lorg/chromium/components/gcm_driver/GCMMessage;)V
    .locals 11

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/gcm_driver/GCMDriverJni;->get()Lorg/chromium/components/gcm_driver/GCMDriver$Natives;

    move-result-object v1

    sget-object v4, Lorg/chromium/components/gcm_driver/GCMDriver;->sInstance:Lorg/chromium/components/gcm_driver/GCMDriver;

    iget-wide v2, v4, Lorg/chromium/components/gcm_driver/GCMDriver;->mNativeGCMDriverAndroid:J

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getCollapseKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getRawData()[B

    move-result-object v9

    invoke-virtual {p0}, Lorg/chromium/components/gcm_driver/GCMMessage;->getDataKeysAndValuesArray()[Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v1 .. v10}, Lorg/chromium/components/gcm_driver/GCMDriver$Natives;->onMessageReceived(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to instantiate GCMDriver."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMDriver$1;-><init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method private replayPersistedMessages(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->getSubscriptionIdsWithPersistedMessages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->readMessages(Ljava/lang/String;)[Lorg/chromium/components/gcm_driver/GCMMessage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/chromium/components/gcm_driver/GCMDriver;->dispatchMessage(Lorg/chromium/components/gcm_driver/GCMMessage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/chromium/components/gcm_driver/LazySubscriptionsManager;->deletePersistedMessagesForSubscriptionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unregister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriver$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMDriver$2;-><init>(Lorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method
