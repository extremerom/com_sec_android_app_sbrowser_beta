.class public final Lcom/google/android/gms/internal/clearcut/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/Y;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/w;

.field public final b:Lcom/google/android/gms/internal/clearcut/b0;

.field public final c:Lcom/google/android/gms/internal/clearcut/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/O;->b:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/O;->c:Lcom/google/android/gms/internal/clearcut/n;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/O;->a:Lcom/google/android/gms/internal/clearcut/w;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x5

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->a:Lcom/google/android/gms/internal/clearcut/w;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/u;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/u;->c()Lcom/google/android/gms/internal/clearcut/w;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/O;->b:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/clearcut/a0;->d:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->c:Lcom/google/android/gms/internal/clearcut/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/clearcut/w;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    iget v0, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    const/16 p1, 0xb

    const/4 p3, 0x2

    if-eq v0, p1, :cond_2

    and-int/lit8 p1, v0, 0x7

    if-ne p1, p3, :cond_1

    move-object v1, p2

    move v3, p4

    move-object v4, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/l0;->c(I[BIILcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/auth/A;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v0, p2, v2, p4, p5}, Lcom/google/android/gms/internal/clearcut/l0;->b(I[BIILcom/google/android/gms/internal/auth/A;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v2, p4, :cond_6

    invoke-static {p2, v2, p5}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v1

    iget v2, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v4, v2, 0x7

    if-eq v3, p3, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne v4, p3, :cond_5

    invoke-static {p2, v1, p5}, Lcom/google/android/gms/internal/clearcut/l0;->y([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    iget-object v0, p5, Lcom/google/android/gms/internal/auth/A;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/k;

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    invoke-static {p2, v1, p5}, Lcom/google/android/gms/internal/clearcut/l0;->f([BILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    iget p1, p5, Lcom/google/android/gms/internal/auth/A;->a:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    invoke-static {v2, p2, v1, p4, p5}, Lcom/google/android/gms/internal/clearcut/l0;->b(I[BIILcom/google/android/gms/internal/auth/A;)I

    move-result v2

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    if-eqz v0, :cond_8

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    :cond_8
    move p3, v1

    goto :goto_0

    :cond_9
    if-ne p3, p4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/A;->b()Lcom/google/android/gms/internal/clearcut/A;

    move-result-object p0

    throw p0
.end method

.method public final d(Lcom/google/android/gms/internal/clearcut/w;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->b:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/a0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->c:Lcom/google/android/gms/internal/clearcut/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lcom/google/android/gms/internal/clearcut/w;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->b:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/w;

    iget-object p1, p2, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/a0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/O;->b:Lcom/google/android/gms/internal/clearcut/b0;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/Z;->b(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V

    return-void
.end method
