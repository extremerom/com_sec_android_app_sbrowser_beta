.class public Lcom/samsung/android/sdk/smp/push/FcmInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FcmInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static enableFcmAutoInit()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to enable fcm. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getFcmToken(Landroid/content/Context;)LR5/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "LR5/h;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:LB7/a;

    if-eqz v1, :cond_0

    check-cast v1, LA7/g;

    invoke-virtual {v1}, LA7/g;->a()LR5/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, LR5/i;

    invoke-direct {v1}, LR5/i;-><init>()V

    new-instance v2, LGa/d;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v1, LR5/i;->a:LR5/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getToken Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initialize FirebaseApp and re-try getToken"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lp7/f;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:LB7/a;

    if-eqz v0, :cond_1

    check-cast v0, LA7/g;

    invoke-virtual {v0}, LA7/g;->a()LR5/p;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance v0, LR5/i;

    invoke-direct {v0}, LR5/i;-><init>()V

    new-instance v1, LGa/d;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0, v0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, LR5/i;->a:LR5/p;

    :goto_1
    return-object p0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    const-string v1, "type : fcm"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, La5/b;->d:La5/b;

    sget v2, La5/c;->a:I

    invoke-virtual {v1, v2, p0}, La5/c;->b(ILandroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->getInstance()Lcom/samsung/android/sdk/smp/push/PushHelper;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "google service status : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "fcm"

    if-ne v3, v1, :cond_0

    const-string v1, "google service is missing on this device"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SMP_0002"

    const-string v1, "Google play service is missing on this device"

    invoke-virtual {v2, p0, v4, v0, v1}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface;->getFcmToken(Landroid/content/Context;)LR5/h;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface$1;-><init>(Lcom/samsung/android/sdk/smp/push/PushHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LR5/h;->e(LR5/e;)LR5/p;

    new-instance v1, Lcom/samsung/android/sdk/smp/push/FcmInterface$2;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface$2;-><init>(Lcom/samsung/android/sdk/smp/push/PushHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LR5/h;->c(LR5/d;)LR5/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMP_0001"

    invoke-virtual {v2, p0, v4, v1, v0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static subscribeToFcmTopic(Ljava/lang/String;)LR5/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR5/h;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    const-string v1, "subscribe topic"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:LR5/p;

    new-instance v1, Lcom/google/firebase/messaging/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/messaging/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LR5/j;->a:LH4/s;

    new-instance v2, LR5/p;

    invoke-direct {v2}, LR5/p;-><init>()V

    new-instance v3, LR5/l;

    invoke-direct {v3, p0, v1, v2}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/g;LR5/p;)V

    iget-object p0, v0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {v0}, LR5/p;->t()V

    return-object v2
.end method

.method public static switchToFCMIfNot(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fcm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to FCM"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/smp/push/FcmInterface;->enableFcmAutoInit()V

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface;->register(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static unsubscribeToFcmTopic(Ljava/lang/String;)LR5/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR5/h;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    const-string v1, "unsubscribe topic"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->hi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/firebase/messaging/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/messaging/i;-><init>(Ljava/lang/String;I)V

    iget-object p0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:LR5/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LR5/j;->a:LH4/s;

    new-instance v2, LR5/p;

    invoke-direct {v2}, LR5/p;-><init>()V

    new-instance v3, LR5/l;

    invoke-direct {v3, v0, v1, v2}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/g;LR5/p;)V

    iget-object v0, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-object v2
.end method

.method public static updatePushTokenIfChanged(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getPushToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface;->getFcmToken(Landroid/content/Context;)LR5/h;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/sdk/smp/push/FcmInterface$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LR5/h;->e(LR5/e;)LR5/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/smp/push/FcmInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update token error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
