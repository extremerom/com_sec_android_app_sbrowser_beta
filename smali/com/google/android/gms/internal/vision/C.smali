.class public final Lcom/google/android/gms/internal/vision/C;
.super Lcom/google/android/gms/internal/vision/j0;
.source "SourceFile"


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/vision/C;

.field private static volatile zzj:Lcom/google/android/gms/internal/vision/N0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/N0;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/C;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/j0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/C;->zzi:Lcom/google/android/gms/internal/vision/C;

    const-class v1, Lcom/google/android/gms/internal/vision/C;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/j0;->g(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/j0;)V

    return-void
.end method

.method public static j(Lcom/google/android/gms/internal/vision/C;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/C;->zze:J

    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/vision/B;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/C;->zzi:Lcom/google/android/gms/internal/vision/C;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/C;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/h0;

    check-cast v0, Lcom/google/android/gms/internal/vision/B;

    return-object v0
.end method

.method public static l(Lcom/google/android/gms/internal/vision/C;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/C;->zzf:J

    return-void
.end method

.method public static m(Lcom/google/android/gms/internal/vision/C;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/C;->zzg:J

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/vision/C;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/vision/C;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/vision/C;->zzh:J

    return-void
.end method


# virtual methods
.method public final e(I)Ljava/lang/Object;
    .locals 7

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
    sget-object p0, Lcom/google/android/gms/internal/vision/C;->zzj:Lcom/google/android/gms/internal/vision/N0;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/vision/C;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/vision/C;->zzj:Lcom/google/android/gms/internal/vision/N0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/vision/C;->zzj:Lcom/google/android/gms/internal/vision/N0;

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
    sget-object p0, Lcom/google/android/gms/internal/vision/C;->zzi:Lcom/google/android/gms/internal/vision/C;

    return-object p0

    :pswitch_4
    const-string v0, "zzc"

    const-string v1, "zzd"

    sget-object v2, Lcom/google/android/gms/internal/vision/L;->g:Lcom/google/android/gms/internal/vision/L;

    const-string v3, "zze"

    const-string v4, "zzf"

    const-string v5, "zzh"

    const-string v6, "zzg"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0004\u0005\u1002\u0003"

    sget-object v0, Lcom/google/android/gms/internal/vision/C;->zzi:Lcom/google/android/gms/internal/vision/C;

    new-instance v1, Lcom/google/android/gms/internal/vision/P0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/vision/P0;-><init>(Lcom/google/android/gms/internal/vision/O;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/vision/B;

    sget-object p1, Lcom/google/android/gms/internal/vision/C;->zzi:Lcom/google/android/gms/internal/vision/C;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/h0;-><init>(Lcom/google/android/gms/internal/vision/j0;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/vision/C;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/j0;-><init>()V

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
