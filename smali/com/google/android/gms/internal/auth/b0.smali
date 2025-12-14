.class public final Lcom/google/android/gms/internal/auth/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/i0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/w0;

.field public final b:Lcom/google/android/gms/internal/auth/l0;

.field public final c:Lcom/google/android/gms/internal/auth/F;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/F;Lcom/google/android/gms/internal/auth/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/b0;->b:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/b0;->c:Lcom/google/android/gms/internal/auth/F;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/b0;->a:Lcom/google/android/gms/internal/auth/w0;

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->a:Lcom/google/android/gms/internal/auth/w0;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/I;->d(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/v0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/v0;->b()Lcom/google/android/gms/internal/auth/I;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->b:Lcom/google/android/gms/internal/auth/l0;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/j0;->b(Lcom/google/android/gms/internal/auth/l0;Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/b0;->b:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    iget-object v0, v0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/auth/k0;->d:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->c:Lcom/google/android/gms/internal/auth/F;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final m(Lcom/google/android/gms/internal/auth/I;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->b:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/k0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final n(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/auth/I;

    iget-object p2, p0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    sget-object p3, Lcom/google/android/gms/internal/auth/k0;->e:Lcom/google/android/gms/internal/auth/k0;

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/k0;->a()Lcom/google/android/gms/internal/auth/k0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    :goto_0
    invoke-static {p1}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->c:Lcom/google/android/gms/internal/auth/F;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final p(Lcom/google/android/gms/internal/auth/I;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/b0;->b:Lcom/google/android/gms/internal/auth/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    check-cast p2, Lcom/google/android/gms/internal/auth/I;

    iget-object p1, p2, Lcom/google/android/gms/internal/auth/I;->zzc:Lcom/google/android/gms/internal/auth/k0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/k0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
