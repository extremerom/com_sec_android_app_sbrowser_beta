.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zza:LY4/a;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    new-instance v0, LY4/a;

    invoke-direct {v0, p1}, LY4/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:LY4/a;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/I;)V
    .locals 6

    const-string v0, "Would have logged:\n"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/j0;->h()I

    move-result v1

    new-array v2, v1, [B

    new-instance v3, Lcom/google/android/gms/internal/vision/V;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/vision/V;-><init>([BI)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/google/android/gms/internal/vision/O0;->c:Lcom/google/android/gms/internal/vision/O0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/vision/O0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/R0;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/vision/V;->b:Lcom/google/android/gms/internal/vision/C0;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/vision/C0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/vision/C0;-><init>(Lcom/google/android/gms/internal/vision/V;)V

    :goto_0
    invoke-interface {v4, p2, v5}, Lcom/google/android/gms/internal/vision/R0;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    iget p2, v3, Lcom/google/android/gms/internal/vision/V;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    sub-int p2, v1, p2

    if-nez p2, :cond_8

    if-ltz p1, :cond_6

    const/4 p2, 0x3

    if-le p1, p2, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:LY4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LB0/L;

    invoke-direct {v0, p0, v2}, LB0/L;-><init>(LY4/a;[B)V

    iget-object p0, v0, LB0/L;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/clearcut/w0;

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/w0;->c:I

    invoke-virtual {v0}, LB0/L;->b()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/I;->k()Lcom/google/android/gms/internal/vision/H;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/vision/Y;->b:Lcom/google/android/gms/internal/vision/Y;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-class p1, Lcom/google/android/gms/internal/vision/Y;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/vision/Y;->b:Lcom/google/android/gms/internal/vision/Y;

    if-eqz v3, :cond_4

    monitor-exit p1

    :goto_1
    move-object p1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/e0;->a()Lcom/google/android/gms/internal/vision/Y;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/vision/Y;->b:Lcom/google/android/gms/internal/vision/Y;

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_4
    invoke-virtual {p0, v2, v1, p1}, Lcom/google/android/gms/internal/vision/h0;->c([BILcom/google/android/gms/internal/vision/Y;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Vision"

    const/4 v1, 0x6

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    return-void

    :catch_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_4
    :try_start_7
    const-string p1, "Parsing error"

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, LG5/k2;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/vision/f;->a:Lcom/google/android/gms/internal/vision/i0;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/i0;->s(Ljava/lang/Exception;)V

    const-string p1, "Failed to log"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LG5/k2;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_6
    const-string p0, "Illegal event code: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Vision"

    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    :try_start_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-class p2, Lcom/google/android/gms/internal/vision/I;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Serializing "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
