.class Lorg/chromium/content/browser/TtsPlatformImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/TtsPlatformImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/TtsPlatformImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/TtsPlatformImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/TtsPlatformImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onEndEvent(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M47GdBO5(JI)V

    return-void
.end method

.method public onErrorEvent(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M1Kw17GB(JI)V

    return-void
.end method

.method public onStartEvent(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2$X0reE(JI)V

    return-void
.end method

.method public voicesChanged(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MpJkwIUo(J)V

    return-void
.end method
