.class public Lcom/google/android/gms/vision/clearcut/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(JILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/vision/zzs;)Lcom/google/android/gms/internal/vision/I;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/G;",
            ">;",
            "Lcom/google/android/gms/internal/vision/zzs;",
            ")",
            "Lcom/google/android/gms/internal/vision/I;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/vision/z;->l()Lcom/google/android/gms/internal/vision/y;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/vision/s;->m()Lcom/google/android/gms/internal/vision/r;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast v1, Lcom/google/android/gms/internal/vision/s;

    invoke-static {v1, p4}, Lcom/google/android/gms/internal/vision/s;->k(Lcom/google/android/gms/internal/vision/s;Ljava/lang/String;)V

    iget-boolean p4, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_1
    iget-object p4, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p4, Lcom/google/android/gms/internal/vision/s;

    invoke-static {p4, p0, p1}, Lcom/google/android/gms/internal/vision/s;->j(Lcom/google/android/gms/internal/vision/s;J)V

    int-to-long p0, p2

    iget-boolean p2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_2
    iget-object p2, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p2, Lcom/google/android/gms/internal/vision/s;

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/vision/s;->n(Lcom/google/android/gms/internal/vision/s;J)V

    iget-boolean p0, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_3
    iget-object p0, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p0, Lcom/google/android/gms/internal/vision/s;

    check-cast p5, Ljava/util/List;

    invoke-static {p0, p5}, Lcom/google/android/gms/internal/vision/s;->l(Lcom/google/android/gms/internal/vision/s;Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->f()Lcom/google/android/gms/internal/vision/j0;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/s;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p3, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p3, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_4
    iget-object p1, p3, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p1, Lcom/google/android/gms/internal/vision/z;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/z;->k(Lcom/google/android/gms/internal/vision/z;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/google/android/gms/internal/vision/C;->k()Lcom/google/android/gms/internal/vision/B;

    move-result-object p0

    iget p1, p6, Lcom/google/android/gms/internal/vision/zzs;->b:I

    int-to-long p1, p1

    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p4, Lcom/google/android/gms/internal/vision/C;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/C;->l(Lcom/google/android/gms/internal/vision/C;J)V

    iget p1, p6, Lcom/google/android/gms/internal/vision/zzs;->a:I

    int-to-long p1, p1

    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_6
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p4, Lcom/google/android/gms/internal/vision/C;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/C;->j(Lcom/google/android/gms/internal/vision/C;J)V

    iget p1, p6, Lcom/google/android/gms/internal/vision/zzs;->c:I

    int-to-long p1, p1

    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_7
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p4, Lcom/google/android/gms/internal/vision/C;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/C;->m(Lcom/google/android/gms/internal/vision/C;J)V

    iget-wide p1, p6, Lcom/google/android/gms/internal/vision/zzs;->d:J

    iget-boolean p4, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_8
    iget-object p4, p0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p4, Lcom/google/android/gms/internal/vision/C;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/vision/C;->n(Lcom/google/android/gms/internal/vision/C;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/h0;->f()Lcom/google/android/gms/internal/vision/j0;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/C;

    iget-boolean p1, p3, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p3, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_9
    iget-object p1, p3, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p1, Lcom/google/android/gms/internal/vision/z;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/z;->j(Lcom/google/android/gms/internal/vision/z;Lcom/google/android/gms/internal/vision/C;)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/h0;->f()Lcom/google/android/gms/internal/vision/j0;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/z;

    invoke-static {}, Lcom/google/android/gms/internal/vision/I;->k()Lcom/google/android/gms/internal/vision/H;

    move-result-object p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v2, p1, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_a
    iget-object p2, p1, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast p2, Lcom/google/android/gms/internal/vision/I;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/vision/I;->j(Lcom/google/android/gms/internal/vision/I;Lcom/google/android/gms/internal/vision/z;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/h0;->f()Lcom/google/android/gms/internal/vision/j0;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/I;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/vision/j;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/vision/j;->k()Lcom/google/android/gms/internal/vision/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast v2, Lcom/google/android/gms/internal/vision/j;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/j;->j(Lcom/google/android/gms/internal/vision/j;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/vision/clearcut/LogUtils;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->d()V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/vision/h0;->c:Z

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/h0;->b:Lcom/google/android/gms/internal/vision/j0;

    check-cast v1, Lcom/google/android/gms/internal/vision/j;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/j;->m(Lcom/google/android/gms/internal/vision/j;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/h0;->f()Lcom/google/android/gms/internal/vision/j0;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/j;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p0}, Ll5/b;->a(Landroid/content/Context;)La5/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La5/g;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unable to find calling package info for %s"

    invoke-static {v0, v1, p0}, LG5/k2;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
