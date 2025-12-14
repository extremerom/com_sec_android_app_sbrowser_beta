.class public abstract Lcom/google/android/gms/internal/clearcut/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/w;

.field public b:Lcom/google/android/gms/internal/clearcut/w;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/u;->a:Lcom/google/android/gms/internal/clearcut/w;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/w;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/u;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/u;->b()V

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/Y;->g(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/u;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/clearcut/Y;->g(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/u;->c:Z

    :cond_0
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/clearcut/w;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/u;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/clearcut/T;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/Y;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/u;->c:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/u;->b:Lcom/google/android/gms/internal/clearcut/w;

    :goto_0
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/u;->a:Lcom/google/android/gms/internal/clearcut/w;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/u;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/u;->c()Lcom/google/android/gms/internal/clearcut/w;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/u;->a(Lcom/google/android/gms/internal/clearcut/w;)V

    return-object v0
.end method
