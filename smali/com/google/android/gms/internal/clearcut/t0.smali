.class public final Lcom/google/android/gms/internal/clearcut/t0;
.super Lcom/google/android/gms/internal/clearcut/w;
.source "SourceFile"


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/S;"
        }
    .end annotation
.end field

.field private static final zzbir:Lcom/google/android/gms/internal/clearcut/t0;


# instance fields
.field private zzbiq:Lcom/google/android/gms/internal/clearcut/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/z;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/t0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    const-class v1, Lcom/google/android/gms/internal/clearcut/t0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/w;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/w;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/clearcut/U;->c:Lcom/google/android/gms/internal/clearcut/U;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbiq:Lcom/google/android/gms/internal/clearcut/z;

    return-void
.end method

.method public static f()Lcom/google/android/gms/internal/clearcut/t0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    return-object v0
.end method

.method public static g([B)Lcom/google/android/gms/internal/clearcut/t0;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/t0;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    :try_start_0
    sget-object v7, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v1

    array-length v5, p0

    new-instance v6, Lcom/google/android/gms/internal/auth/A;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/clearcut/Y;->c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/clearcut/Y;->b(Ljava/lang/Object;)V

    iget p0, v0, Lcom/google/android/gms/internal/clearcut/g;->zzex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/clearcut/Y;->e(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/clearcut/t0;

    return-object v0

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, LI5/b;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->a()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/clearcut/A;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/A;

    throw p0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/clearcut/A;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/internal/clearcut/u0;->a:[I

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
    sget-object p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbg:Lcom/google/android/gms/internal/clearcut/S;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/clearcut/t0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbg:Lcom/google/android/gms/internal/clearcut/S;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/clearcut/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbg:Lcom/google/android/gms/internal/clearcut/S;

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
    sget-object p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    return-object p0

    :pswitch_4
    const-string p0, "zzbiq"

    const-class p1, Lcom/google/android/gms/internal/clearcut/s0;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    sget-object v0, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/V;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/clearcut/V;-><init>(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/clearcut/q0;

    sget-object p1, Lcom/google/android/gms/internal/clearcut/t0;->zzbir:Lcom/google/android/gms/internal/clearcut/t0;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/u;-><init>(Lcom/google/android/gms/internal/clearcut/w;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/clearcut/t0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/t0;-><init>()V

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

.method public final e()Lcom/google/android/gms/internal/clearcut/z;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/t0;->zzbiq:Lcom/google/android/gms/internal/clearcut/z;

    return-object p0
.end method
