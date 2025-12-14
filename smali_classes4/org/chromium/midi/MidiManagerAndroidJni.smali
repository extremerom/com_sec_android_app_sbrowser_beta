.class Lorg/chromium/midi/MidiManagerAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/midi/MidiManagerAndroid$Natives;


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

.method public static get()Lorg/chromium/midi/MidiManagerAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/midi/MidiManagerAndroidJni;

    invoke-direct {v0}, Lorg/chromium/midi/MidiManagerAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttached(JLorg/chromium/midi/MidiDeviceAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEOWUhL5(JLjava/lang/Object;)V

    return-void
.end method

.method public onDetached(JLorg/chromium/midi/MidiDeviceAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Md3XPFG5(JLjava/lang/Object;)V

    return-void
.end method

.method public onInitializationFailed(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MfmZ2$zu(J)V

    return-void
.end method

.method public onInitialized(J[Lorg/chromium/midi/MidiDeviceAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3znzcE9(JLjava/lang/Object;)V

    return-void
.end method
