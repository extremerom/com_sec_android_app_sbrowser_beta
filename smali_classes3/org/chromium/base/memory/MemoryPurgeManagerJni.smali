.class Lorg/chromium/base/memory/MemoryPurgeManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/memory/MemoryPurgeManager$Natives;


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

.method public static get()Lorg/chromium/base/memory/MemoryPurgeManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/memory/MemoryPurgeManagerJni;

    invoke-direct {v0}, Lorg/chromium/base/memory/MemoryPurgeManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isOnPreFreezeMemoryTrimEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->M22p8lu4()Z

    move-result p0

    return p0
.end method

.method public postDelayedPurgeTaskOnUiThread(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MhkobVIJ(J)V

    return-void
.end method
