.class Lorg/chromium/content/browser/MediaSessionImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/MediaSessionImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/MediaSessionImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaSessionImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public didReceiveAction(JLorg/chromium/content/browser/MediaSessionImpl;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MAqRqyJa(JLjava/lang/Object;I)V

    return-void
.end method

.method public getMediaSessionFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/MediaSessionImpl;
    .locals 0

    invoke-static {p1}, LJ/N;->Mtun$qW8(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/MediaSessionImpl;

    return-object p0
.end method

.method public resume(JLorg/chromium/content/browser/MediaSessionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MlezJYnz(JLjava/lang/Object;)V

    return-void
.end method

.method public seekTo(JLorg/chromium/content/browser/MediaSessionImpl;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MK7btVfc(JLjava/lang/Object;J)V

    return-void
.end method

.method public stop(JLorg/chromium/content/browser/MediaSessionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MW5s36cs(JLjava/lang/Object;)V

    return-void
.end method

.method public suspend(JLorg/chromium/content/browser/MediaSessionImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M5LC9gX$(JLjava/lang/Object;)V

    return-void
.end method
