.class public abstract Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildProcessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Delegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundConnection(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onBeforeConnectionAllocated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onBeforeConnectionSetup(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConnectionEstablished(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    return-void
.end method

.method public onConnectionLost(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    return-void
.end method

.method public onReceivedZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
