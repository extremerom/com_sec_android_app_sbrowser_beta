.class public Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;
.super Lorg/chromium/IsReadyToPayServiceCallback$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsReadyToPayIntent:Landroid/content/Intent;

.field private mIsServiceBindingInitiated:Z

.field private mIsServiceConnected:Z

.field private mReadyToPayTimeoutMs:J

.field private mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

.field private mServiceConnectionTimeoutMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/IsReadyToPayServiceCallback$Stub;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mReadyToPayTimeoutMs:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mServiceConnectionTimeoutMs:J

    iput-object p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsReadyToPayIntent:Landroid/content/Intent;

    return-void
.end method

.method private destroy()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceBindingInitiated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceBindingInitiated:Z

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$query$0()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    :cond_0
    return-void
.end method

.method private reportError()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;->onIsReadyToPayServiceError()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->destroy()V

    return-void
.end method

.method public static synthetic v0(Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->lambda$query$0()V

    return-void
.end method

.method public static synthetic w0(Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    return-void
.end method


# virtual methods
.method public handleIsReadyToPay(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;->onIsReadyToPayServiceResponse(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->destroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mResultHandler:Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper$ResultHandler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceConnected:Z

    invoke-static {p2}, Lorg/chromium/IsReadyToPayService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/IsReadyToPayService;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    return-void

    :cond_1
    const-string p2, "PaymentRequest.PrePurchaseQuery"

    const/4 v0, 0x2

    invoke-static {p2, v0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    :try_start_0
    invoke-interface {p1, p0}, Lorg/chromium/IsReadyToPayService;->isReadyToPay(Lorg/chromium/IsReadyToPayServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/chromium/components/payments/intent/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/chromium/components/payments/intent/a;-><init>(Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;I)V

    iget-wide v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mReadyToPayTimeoutMs:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    return-void
.end method

.method public query()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsReadyToPayIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceBindingInitiated:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-boolean v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mIsServiceBindingInitiated:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->reportError()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/components/payments/intent/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/chromium/components/payments/intent/a;-><init>(Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;I)V

    iget-wide v2, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mServiceConnectionTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTimeoutsMsForTesting(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mServiceConnectionTimeoutMs:J

    iput-wide p1, p0, Lorg/chromium/components/payments/intent/IsReadyToPayServiceHelper;->mReadyToPayTimeoutMs:J

    return-void
.end method
