.class public Lorg/chromium/base/process_launcher/IChildProcessService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/IChildProcessService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/IChildProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bindToCaller(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public consumeRelroBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public dumpProcessStack()V
    .locals 0

    return-void
.end method

.method public forceKill()V
    .locals 0

    return-void
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onMemoryPressure(I)V
    .locals 0

    return-void
.end method

.method public onSelfFreeze()V
    .locals 0

    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/base/process_launcher/IParentProcess;Ljava/util/List;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lorg/chromium/base/process_launcher/IParentProcess;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    return-void
.end method
