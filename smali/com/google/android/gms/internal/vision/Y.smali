.class public final Lcom/google/android/gms/internal/vision/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/vision/Y;

.field public static volatile b:Lcom/google/android/gms/internal/vision/Y;

.field public static final c:Lcom/google/android/gms/internal/vision/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/Y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    sput-object v0, Lcom/google/android/gms/internal/vision/Y;->c:Lcom/google/android/gms/internal/vision/Y;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/Y;->a:Lcom/google/android/gms/internal/vision/Y;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/vision/Y;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/Y;->a:Lcom/google/android/gms/internal/vision/Y;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/vision/Y;->c:Lcom/google/android/gms/internal/vision/Y;

    sput-object v1, Lcom/google/android/gms/internal/vision/Y;->a:Lcom/google/android/gms/internal/vision/Y;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method
