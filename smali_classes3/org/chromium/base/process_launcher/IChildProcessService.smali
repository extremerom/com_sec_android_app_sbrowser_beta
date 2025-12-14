.class public interface abstract Lorg/chromium/base/process_launcher/IChildProcessService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/IChildProcessService$_Parcel;,
        Lorg/chromium/base/process_launcher/IChildProcessService$Stub;,
        Lorg/chromium/base/process_launcher/IChildProcessService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.base.process_launcher.IChildProcessService"


# virtual methods
.method public abstract bindToCaller(Ljava/lang/String;)Z
.end method

.method public abstract consumeRelroBundle(Landroid/os/Bundle;)V
.end method

.method public abstract dumpProcessStack()V
.end method

.method public abstract forceKill()V
.end method

.method public abstract getAppInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract onMemoryPressure(I)V
.end method

.method public abstract onSelfFreeze()V
.end method

.method public abstract setupConnection(Landroid/os/Bundle;Lorg/chromium/base/process_launcher/IParentProcess;Ljava/util/List;Landroid/os/IBinder;)V
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
.end method
