.class Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mRemoteDwService:Landroid/widget/directwriting/c;

.field private mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;

    invoke-direct {v0, p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$1;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;Landroid/widget/directwriting/c;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->updateConfiguration()V

    return-void
.end method

.method private onWindowFocusLost(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast v1, Landroid/widget/directwriting/a;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/a;->C0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onWindowFocusLost failed."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "onWindowFocusLost failed due to DeadObjectException."

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_0
    return-void
.end method

.method private requestBindService(Landroid/content/Context;Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DWServiceBinder"

    if-eqz v0, :cond_0

    const-string p0, "bindService already requested"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.android.honeyboard"

    invoke-static {v0}, Lorg/chromium/base/PackageUtils;->getCertificateSHA256FingerprintForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "34:DF:0E:7A:9F:1C:F1:89:2E:45:C0:56:B4:97:3C:D8:1C:CF:14:8A:40:50:D1:1A:EA:4A:C5:A6:5F:90:0A:42"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "C8:A2:E9:BC:CF:59:7C:2F:B6:DC:66:BE:E2:93:FC:13:F2:FC:47:EC:77:BC:6B:2B:0D:52:C1:1F:51:19:2A:B8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.directwriting.service.DirectWritingService"

    invoke-direct {v4, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mContext:Landroid/content/Context;

    const-string p0, "bindService success"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bindService failed,"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "Don\'t connect to service due to package fingerprint mismatch"

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetDwServiceConnection()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast v2, Landroid/widget/directwriting/a;

    invoke-virtual {v2, v1}, Landroid/widget/directwriting/a;->v0(Landroid/os/Bundle;)V

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;

    invoke-interface {v2, v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;->updateConfiguration(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v1, "updateConfiguration failed."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "updateConfiguration failed due to DeadObjectException."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->requestBindService(Landroid/content/Context;Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;)V

    return-void
.end method

.method public handleWindowFocusChanged(Landroid/content/Context;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->registerCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->handleWindowFocusLost(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public handleWindowFocusLost(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->onWindowFocusLost(Ljava/lang/String;)V

    return-void
.end method

.method public hideDwToolbar()V
    .locals 3

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/components/stylus_handwriting/DirectWritingBundleUtil;->buildBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast v2, Landroid/widget/directwriting/a;

    invoke-virtual {v2, v1}, Landroid/widget/directwriting/a;->y0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v1, "hideDwToolbar failed."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "hideDwToolbar failed due to DeadObjectException."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public isServiceConnected()Z
    .locals 0
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNullIf;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    invoke-static {p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    check-cast v1, Landroid/widget/directwriting/a;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/a;->x0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p1, "onDispatchEvent failed."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string p2, "onDispatchEvent failed due to DeadObjectException."

    invoke-static {v0, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast p2, Landroid/widget/directwriting/a;

    invoke-virtual {p2, p1}, Landroid/widget/directwriting/a;->A0(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p1, "onStopRecognition failed."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string p2, "onStopRecognition failed due to DeadObjectException."

    invoke-static {v0, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public registerCallback()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;

    invoke-interface {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;->getServiceCallback()Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|webview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast v3, Landroid/widget/directwriting/a;

    invoke-virtual {v3, v1, v2}, Landroid/widget/directwriting/a;->D0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;Ljava/lang/String;)Z

    const-string v1, "Service callback registered"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v1, "registerCallback failed."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "registerCallback failed due to DeadObjectException."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public startRecognition(Landroid/graphics/Rect;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DWServiceBinder"

    if-nez v0, :cond_0

    const-string p0, "startRecognition failed, not bounded"

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    invoke-static {p2, p1, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingBundleUtil;->buildBundle(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    check-cast v0, Landroid/widget/directwriting/a;

    invoke-virtual {v0, p1}, Landroid/widget/directwriting/a;->z0(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p1, "startRecognition failed with exception."

    invoke-static {v2, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    const-string p2, "startRecognition failed due to DeadObjectException."

    invoke-static {v2, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    return v1
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->unregisterCallback()V

    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p1, "unbindService success"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbindService failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;

    invoke-interface {v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;->getServiceCallback()Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    check-cast v2, Landroid/widget/directwriting/a;

    invoke-virtual {v2, v1}, Landroid/widget/directwriting/a;->E0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Z

    const-string v1, "Service callback unregistered"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v1, "unregisterCallback failed."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v2, "unregisterCallback failed due to DeadObjectException."

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public updateEditableBounds(Landroid/graphics/Rect;Landroid/view/View;Z)V
    .locals 2

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    invoke-static {p1, p2, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingBundleUtil;->buildBundle(Landroid/graphics/Rect;Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object p1

    check-cast v1, Landroid/widget/directwriting/a;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/a;->w0(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p1, "updateEditableBounds failed."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string p2, "updateEditableBounds failed due to DeadObjectException."

    invoke-static {v0, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    const-string v0, "DWServiceBinder"

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->mRemoteDwService:Landroid/widget/directwriting/c;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    check-cast v1, Landroid/widget/directwriting/a;

    invoke-virtual {v1, p1}, Landroid/widget/directwriting/a;->B0(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string p1, "updateEditorInfo failed."

    invoke-static {v0, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const-string v1, "updateEditorInfo failed due to DeadObjectException."

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->resetDwServiceConnection()V

    :goto_2
    return-void
.end method
