.class Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTaskJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTask$Natives;


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

.method public static get()Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTask$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTaskJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTaskJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public firePeriodicBackgroundSyncEvents(Lcom/sec/terrace/browser/background_sync/TinPeriodicBackgroundSyncTerraceWakeUpTask;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mpw18CX0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
