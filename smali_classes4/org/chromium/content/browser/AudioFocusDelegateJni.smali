.class Lorg/chromium/content/browser/AudioFocusDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/AudioFocusDelegate$Natives;


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

.method public static get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/AudioFocusDelegateJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/AudioFocusDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onResume(JLorg/chromium/content/browser/AudioFocusDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MqbF3KiE(JLjava/lang/Object;)V

    return-void
.end method

.method public onStartDucking(JLorg/chromium/content/browser/AudioFocusDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->My_SIOp6(JLjava/lang/Object;)V

    return-void
.end method

.method public onStopDucking(JLorg/chromium/content/browser/AudioFocusDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MeoE5HbI(JLjava/lang/Object;)V

    return-void
.end method

.method public onSuspend(JLorg/chromium/content/browser/AudioFocusDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MUFA7yj7(JLjava/lang/Object;)V

    return-void
.end method
