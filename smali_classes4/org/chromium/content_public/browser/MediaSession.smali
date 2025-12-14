.class public abstract Lorg/chromium/content_public/browser/MediaSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/MediaSession;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/MediaSessionImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/MediaSessionImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract didReceiveAction(I)V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract stop()V
.end method

.method public abstract suspend()V
.end method
