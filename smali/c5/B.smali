.class public final Lc5/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d;


# instance fields
.field public final a:Lb5/e;

.field public final b:Lc5/b;

.field public c:Lcom/google/android/gms/common/internal/k;

.field public d:Ljava/util/Set;

.field public e:Z

.field public final synthetic f:Lc5/h;


# direct methods
.method public constructor <init>(Lc5/h;Lb5/e;Lc5/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/B;->f:Lc5/h;

    const/4 p1, 0x0

    iput-object p1, p0, Lc5/B;->c:Lcom/google/android/gms/common/internal/k;

    iput-object p1, p0, Lc5/B;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc5/B;->e:Z

    iput-object p2, p0, Lc5/B;->a:Lb5/e;

    iput-object p3, p0, Lc5/B;->b:Lc5/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lc5/B;->f:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    new-instance v1, Lc5/A;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    iget-object v0, p0, Lc5/B;->f:Lc5/h;

    iget-object v0, v0, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lc5/B;->b:Lc5/b;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/y;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSignInFailed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method
