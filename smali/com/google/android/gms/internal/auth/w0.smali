.class public final Lcom/google/android/gms/internal/auth/w0;
.super Lcom/google/android/gms/internal/auth/I;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/w0;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/J;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/J;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/w0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/w0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/w0;->zzb:Lcom/google/android/gms/internal/auth/w0;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/I;->c(Lcom/google/android/gms/internal/auth/w0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/auth/x;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/auth/k0;->e:Lcom/google/android/gms/internal/auth/k0;

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    sget-object v0, Lcom/google/android/gms/internal/auth/g0;->d:Lcom/google/android/gms/internal/auth/g0;

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/w0;->zzd:Lcom/google/android/gms/internal/auth/J;

    return-void
.end method

.method public static synthetic e()Lcom/google/android/gms/internal/auth/w0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/w0;->zzb:Lcom/google/android/gms/internal/auth/w0;

    return-object v0
.end method

.method public static f([B)Lcom/google/android/gms/internal/auth/w0;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/auth/w0;->zzb:Lcom/google/android/gms/internal/auth/w0;

    array-length v5, p0

    sget-object v1, Lcom/google/android/gms/internal/auth/E;->a:Lcom/google/android/gms/internal/auth/E;

    if-nez v1, :cond_1

    const-class v2, Lcom/google/android/gms/internal/auth/E;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/E;->a:Lcom/google/android/gms/internal/auth/E;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/auth/E;->b:Lcom/google/android/gms/internal/auth/E;

    sput-object v1, Lcom/google/android/gms/internal/auth/E;->a:Lcom/google/android/gms/internal/auth/E;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/auth/w0;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    :try_start_1
    sget-object v7, Lcom/google/android/gms/internal/auth/f0;->c:Lcom/google/android/gms/internal/auth/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v8

    new-instance v6, Lcom/google/android/gms/internal/auth/A;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, v0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/i0;->n(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/auth/i0;->l(Ljava/lang/Object;)V

    iget p0, v0, Lcom/google/android/gms/internal/auth/x;->zza:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/auth/L; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p0, :cond_5

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/I;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, p0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/auth/i0;->o(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/I;->d(I)Ljava/lang/Object;

    :goto_3
    if-eqz p0, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/auth/w0;

    return-object v0

    :cond_4
    new-instance p0, LI5/b;

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/auth/L;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/auth/L; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/auth/L;->d()Lcom/google/android/gms/internal/auth/L;

    move-result-object p0

    throw p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/auth/L;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/L;

    throw p0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/auth/L;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_5
    throw p0
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/auth/w0;->zzb:Lcom/google/android/gms/internal/auth/w0;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/v0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/v0;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/auth/w0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/w0;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/auth/w0;->zzb:Lcom/google/android/gms/internal/auth/w0;

    new-instance v0, Lcom/google/android/gms/internal/auth/h0;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/auth/h0;-><init>(Lcom/google/android/gms/internal/auth/w0;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/auth/J;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/w0;->zzd:Lcom/google/android/gms/internal/auth/J;

    return-object p0
.end method
