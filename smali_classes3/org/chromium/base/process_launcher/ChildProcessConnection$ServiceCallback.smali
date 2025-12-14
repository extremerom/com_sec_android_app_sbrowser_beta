.class public interface abstract Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceCallback"
.end annotation


# virtual methods
.method public abstract onChildProcessDied(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
.end method

.method public abstract onChildStartFailed(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
.end method

.method public abstract onChildStarted()V
.end method
