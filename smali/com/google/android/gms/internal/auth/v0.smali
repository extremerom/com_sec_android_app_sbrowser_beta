.class public final Lcom/google/android/gms/internal/auth/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/w0;

.field public b:Lcom/google/android/gms/internal/auth/I;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/auth/w0;->e()Lcom/google/android/gms/internal/auth/w0;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->a:Lcom/google/android/gms/internal/auth/w0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/w0;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/v0;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/I;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/v0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/I;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/I;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    sget-object v2, Lcom/google/android/gms/internal/auth/f0;->c:Lcom/google/android/gms/internal/auth/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/auth/i0;->k(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/v0;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    sget-object v0, Lcom/google/android/gms/internal/auth/f0;->c:Lcom/google/android/gms/internal/auth/f0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/auth/i0;->k(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/auth/I;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/v0;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    sget-object v1, Lcom/google/android/gms/internal/auth/f0;->c:Lcom/google/android/gms/internal/auth/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/f0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/i0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/auth/i0;->l(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/v0;->c:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/v0;->b:Lcom/google/android/gms/internal/auth/I;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/v0;->a:Lcom/google/android/gms/internal/auth/w0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/w0;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/v0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/v0;->b()Lcom/google/android/gms/internal/auth/I;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/v0;->a(Lcom/google/android/gms/internal/auth/I;)V

    return-object v0
.end method
