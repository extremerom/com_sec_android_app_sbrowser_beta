.class Lorg/chromium/midi/MidiInputPortAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/midi/MidiInputPortAndroid$Natives;


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

.method public static get()Lorg/chromium/midi/MidiInputPortAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/midi/MidiInputPortAndroidJni;

    invoke-direct {v0}, Lorg/chromium/midi/MidiInputPortAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onData(J[BIIJ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MzDIdqgH(JLjava/lang/Object;IIJ)V

    return-void
.end method
