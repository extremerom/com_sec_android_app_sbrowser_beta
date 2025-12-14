.class Lorg/chromium/base/MemoryPressureListenerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/MemoryPressureListener$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/base/MemoryPressureListener$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/MemoryPressureListenerJni;

    invoke-direct {v0}, Lorg/chromium/base/MemoryPressureListenerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isTrimMemoryBackgroundCritical()Z
    .locals 0

    invoke-static {}, LJ/N;->MaQ9HvMU()Z

    move-result p0

    return p0
.end method

.method public onMemoryPressure(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MZJzyjAa(I)V

    return-void
.end method

.method public onPreFreeze()V
    .locals 0

    invoke-static {}, LJ/N;->M7JarlfB()V

    return-void
.end method
