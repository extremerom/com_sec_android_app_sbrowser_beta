.class public Lorg/chromium/base/process_launcher/IParentProcess$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/process_launcher/IParentProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/IParentProcess;
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

.method public finishSetupConnection(IIJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public reportCleanExit()V
    .locals 0

    return-void
.end method

.method public reportExceptionInInit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
