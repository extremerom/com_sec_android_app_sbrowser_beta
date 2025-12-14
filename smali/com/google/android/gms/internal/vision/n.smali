.class public final Lcom/google/android/gms/internal/vision/n;
.super Lcom/google/android/gms/internal/vision/j0;
.source "SourceFile"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/vision/n;

.field private static volatile zze:Lcom/google/android/gms/internal/vision/N0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/N0;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/vision/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/t0;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/n;->zzd:Lcom/google/android/gms/internal/vision/n;

    const-class v1, Lcom/google/android/gms/internal/vision/n;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/j0;->g(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/j0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/j0;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/vision/Q0;->d:Lcom/google/android/gms/internal/vision/Q0;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/n;->zzc:Lcom/google/android/gms/internal/vision/t0;

    return-void
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/internal/vision/J;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/n;->zze:Lcom/google/android/gms/internal/vision/N0;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/vision/n;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/vision/n;->zze:Lcom/google/android/gms/internal/vision/N0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/vision/n;->zze:Lcom/google/android/gms/internal/vision/N0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/n;->zzd:Lcom/google/android/gms/internal/vision/n;

    return-object p0

    :pswitch_4
    const-string p0, "zzc"

    const-class p1, Lcom/google/android/gms/internal/vision/F;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object v0, Lcom/google/android/gms/internal/vision/n;->zzd:Lcom/google/android/gms/internal/vision/n;

    new-instance v1, Lcom/google/android/gms/internal/vision/P0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/vision/P0;-><init>(Lcom/google/android/gms/internal/vision/O;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/vision/k;

    sget-object p1, Lcom/google/android/gms/internal/vision/n;->zzd:Lcom/google/android/gms/internal/vision/n;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/h0;-><init>(Lcom/google/android/gms/internal/vision/j0;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/vision/n;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/n;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
