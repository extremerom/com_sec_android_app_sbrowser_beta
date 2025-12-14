.class public final Lc5/O;
.super Lc5/E;
.source "SourceFile"


# instance fields
.field public final b:Lc5/u;

.field public final c:LR5/i;

.field public final d:Lc5/s;


# direct methods
.method public constructor <init>(ILc5/u;LR5/i;Lc5/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lc5/P;-><init>(I)V

    iput-object p3, p0, Lc5/O;->c:LR5/i;

    iput-object p2, p0, Lc5/O;->b:Lc5/u;

    iput-object p4, p0, Lc5/O;->d:Lc5/s;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    iget-boolean p0, p2, Lc5/u;->b:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lc5/O;->d:Lc5/s;

    check-cast v0, Lc5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->k(Lcom/google/android/gms/common/api/Status;)Lb5/h;

    move-result-object p1

    iget-object p0, p0, Lc5/O;->c:LR5/i;

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lc5/O;->c:LR5/i;

    invoke-virtual {p0, p1}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lc5/y;)V
    .locals 2

    iget-object v0, p0, Lc5/O;->c:LR5/i;

    :try_start_0
    iget-object v1, p0, Lc5/O;->b:Lc5/u;

    iget-object p1, p1, Lc5/y;->b:Lb5/e;

    check-cast v1, Lc5/L;

    iget-object v1, v1, Lc5/L;->d:LG6/f;

    iget-object v1, v1, LG6/f;->d:Ljava/lang/Object;

    check-cast v1, Lc5/r;

    invoke-interface {v1, p1, v0}, Lc5/r;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, LR5/i;->c(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lc5/P;->e(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc5/O;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p0

    throw p0
.end method

.method public final d(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lc5/O;->c:LR5/i;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    iput-object p0, p2, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iget-object p0, p0, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p2}, LR5/p;->a(LR5/c;)LR5/p;

    return-void
.end method

.method public final f(Lc5/y;)Z
    .locals 0

    iget-object p0, p0, Lc5/O;->b:Lc5/u;

    iget-boolean p0, p0, Lc5/u;->b:Z

    return p0
.end method

.method public final g(Lc5/y;)[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lc5/O;->b:Lc5/u;

    iget-object p0, p0, Lc5/u;->a:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method
