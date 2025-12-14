.class public abstract Lz2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final b(Landroid/content/Context;)Lz2/h;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdServicesInfo.version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Lx2/b;->a:Lx2/b;

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Lx2/b;->a()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "MeasurementManager"

    invoke-static {v0, v5, v6}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-lt v1, v3, :cond_1

    invoke-virtual {v2}, Lx2/b;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const/4 v2, 0x5

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    new-instance v0, LA2/j;

    invoke-static {}, LA2/a;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "context.getSystemService\u2026ementManager::class.java)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LA2/a;->g(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p0

    invoke-direct {v0, p0}, LA2/m;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    goto :goto_4

    :cond_2
    sget-object v0, Lx2/a;->a:Lx2/a;

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lx2/a;->b()I

    move-result v2

    :goto_3
    const/16 v5, 0x9

    if-lt v2, v5, :cond_5

    new-instance v0, LA2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LA2/c;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, LG5/A2;->d(Landroid/content/Context;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LA2/d;

    goto :goto_4

    :cond_5
    const/16 v2, 0x1e

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lx2/a;->a()I

    move-result v4

    :cond_6
    const/16 v0, 0xb

    if-lt v4, v0, :cond_7

    new-instance v0, LA2/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LA2/c;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, LG5/A2;->d(Landroid/content/Context;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LA2/d;

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_8

    new-instance v3, Lz2/h;

    invoke-direct {v3, v0}, Lz2/h;-><init>(LA2/d;)V

    :cond_8
    return-object v3
.end method


# virtual methods
.method public abstract a(LA2/b;)Lcom/google/common/util/concurrent/y;
.end method

.method public abstract c(LA2/n;)Lcom/google/common/util/concurrent/y;
.end method

.method public abstract d(Landroid/net/Uri;)Lcom/google/common/util/concurrent/y;
.end method

.method public abstract e(LA2/p;)Lcom/google/common/util/concurrent/y;
.end method

.method public abstract f(LA2/s;)Lcom/google/common/util/concurrent/y;
.end method
