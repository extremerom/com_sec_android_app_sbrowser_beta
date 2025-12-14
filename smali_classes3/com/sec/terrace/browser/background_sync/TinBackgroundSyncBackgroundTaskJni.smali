.class Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask$Natives;


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

.method public static get()Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTaskJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fireOneShotBackgroundSyncEvents(Lcom/sec/terrace/browser/background_sync/TinBackgroundSyncBackgroundTask;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MJezcmBx(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
