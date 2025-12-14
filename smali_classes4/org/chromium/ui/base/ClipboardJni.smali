.class Lorg/chromium/ui/base/ClipboardJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/Clipboard$Natives;


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

.method public static get()Lorg/chromium/ui/base/Clipboard$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/base/ClipboardJni;

    invoke-direct {v0}, Lorg/chromium/ui/base/ClipboardJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onPrimaryClipChanged(JLorg/chromium/ui/base/Clipboard;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3YqItLq(JLjava/lang/Object;)V

    return-void
.end method

.method public onPrimaryClipTimestampInvalidated(JLorg/chromium/ui/base/Clipboard;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MWrNP8sy(JLjava/lang/Object;J)V

    return-void
.end method
