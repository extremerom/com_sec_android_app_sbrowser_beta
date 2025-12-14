.class public Lorg/chromium/ui/base/IdleDetector;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityUserInteractionListener;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mIdle:Z

.field private mLast:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->reset()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lorg/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerActivityUserInteractionListener(Lorg/chromium/base/ApplicationStatus$ActivityUserInteractionListener;)V

    return-void
.end method

.method private close()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityUserInteractionListener(Lorg/chromium/base/ApplicationStatus$ActivityUserInteractionListener;)V

    return-void
.end method

.method private static create()Lorg/chromium/ui/base/IdleDetector;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/base/IdleDetector;

    invoke-direct {v0}, Lorg/chromium/ui/base/IdleDetector;-><init>()V

    return-object v0
.end method

.method private getIdleTime()J
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/ui/base/IdleDetector;->mIdle:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/chromium/ui/base/IdleDetector;->mLast:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isScreenLocked()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private now()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/base/IdleDetector;->mIdle:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/IdleDetector;->mLast:J

    return-void
.end method

.method private start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/base/IdleDetector;->mIdle:Z

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/base/IdleDetector;->mLast:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInteraction(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/ui/base/IdleDetector;->mIdle:Z

    invoke-direct {p0}, Lorg/chromium/ui/base/IdleDetector;->start()V

    :cond_0
    return-void
.end method
