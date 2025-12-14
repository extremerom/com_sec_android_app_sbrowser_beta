.class interface abstract Lorg/chromium/content/browser/MediaSessionImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/MediaSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract didReceiveAction(JLorg/chromium/content/browser/MediaSessionImpl;I)V
.end method

.method public abstract getMediaSessionFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/MediaSessionImpl;
.end method

.method public abstract resume(JLorg/chromium/content/browser/MediaSessionImpl;)V
.end method

.method public abstract seekTo(JLorg/chromium/content/browser/MediaSessionImpl;J)V
.end method

.method public abstract stop(JLorg/chromium/content/browser/MediaSessionImpl;)V
.end method

.method public abstract suspend(JLorg/chromium/content/browser/MediaSessionImpl;)V
.end method
