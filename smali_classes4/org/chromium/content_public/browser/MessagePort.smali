.class public interface abstract Lorg/chromium/content_public/browser/MessagePort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/MessagePort$MessageCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation build Lorg/chromium/build/annotations/UsedByReflection;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract isTransferred()Z
.end method

.method public abstract postMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
.end method

.method public abstract setMessageCallback(Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V
.end method
