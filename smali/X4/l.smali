.class public final LX4/l;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/RevocationBoundService;)V
    .locals 2

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, LA5/f;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, LX4/l;->b:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    return-void
.end method


# virtual methods
.method public final w0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget-object v0, p0, LX4/l;->b:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0}, LX4/l;->z0()V

    invoke-static {v0}, LX4/i;->n(Landroid/content/Context;)LX4/i;

    move-result-object p0

    invoke-virtual {p0}, LX4/i;->o()V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, LX4/l;->z0()V

    invoke-static {v0}, LX4/a;->a(Landroid/content/Context;)LX4/a;

    move-result-object p0

    invoke-virtual {p0}, LX4/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->k:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LX4/a;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    :cond_2
    new-instance p0, LN5/d;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    new-instance v2, Lc5/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, LU4/b;->a:Lb5/g;

    invoke-direct {p0, v0, v3, v1, v2}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    const/4 v0, 0x3

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object p1

    invoke-virtual {p0}, Lb5/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, LN5/d;->d()I

    move-result p0

    if-ne p0, v0, :cond_3

    move p0, p2

    goto :goto_0

    :cond_3
    move p0, p3

    :goto_0
    new-array p3, p3, [Ljava/lang/Object;

    sget-object v2, LX4/h;->a:LG5/g4;

    iget v3, v2, LG5/g4;->b:I

    if-gt v3, v0, :cond_4

    iget-object v0, v2, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "Revoking access"

    invoke-virtual {v2, v3, p3}, LG5/g4;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v1}, LX4/a;->a(Landroid/content/Context;)LX4/a;

    move-result-object p3

    const-string v0, "refreshToken"

    invoke-virtual {p3, v0}, LX4/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, LX4/h;->a(Landroid/content/Context;)V

    if-eqz p0, :cond_6

    if-nez p3, :cond_5

    sget-object p0, LX4/b;->c:LG5/g4;

    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x4

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result p1

    xor-int/2addr p1, p2

    const-string p3, "Status code must not be SUCCESS"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    new-instance p1, Lb5/s;

    invoke-direct {p1, p0}, Lb5/s;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lb5/q;)V

    goto :goto_1

    :cond_5
    new-instance p0, LX4/b;

    invoke-direct {p0, p3}, LX4/b;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, LX4/b;->b:Lc5/t;

    goto :goto_1

    :cond_6
    new-instance p0, LX4/f;

    invoke-direct {p0, p1, p2}, LX4/f;-><init>(Lb5/m;I)V

    check-cast p1, Lc5/C;

    iget-object p1, p1, Lc5/C;->b:Lb5/j;

    invoke-virtual {p1, p0}, Lb5/j;->doWrite(Lc5/e;)Lc5/e;

    move-result-object p1

    :goto_1
    new-instance p0, Lz7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object p1

    invoke-virtual {p0}, Lb5/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, LN5/d;->d()I

    move-result p0

    if-ne p0, v0, :cond_8

    move p0, p2

    goto :goto_2

    :cond_8
    move p0, p3

    :goto_2
    new-array v2, p3, [Ljava/lang/Object;

    sget-object v3, LX4/h;->a:LG5/g4;

    iget v4, v3, LG5/g4;->b:I

    if-gt v4, v0, :cond_9

    iget-object v0, v3, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v4, "Signing out"

    invoke-virtual {v3, v4, v2}, LG5/g4;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v1}, LX4/h;->a(Landroid/content/Context;)V

    if-eqz p0, :cond_a

    sget-object p0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    new-instance p3, Lc5/t;

    invoke-direct {p3, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lb5/m;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lb5/q;)V

    goto :goto_3

    :cond_a
    new-instance p0, LX4/f;

    invoke-direct {p0, p1, p3}, LX4/f;-><init>(Lb5/m;I)V

    check-cast p1, Lc5/C;

    iget-object p1, p1, Lc5/C;->b:Lb5/j;

    invoke-virtual {p1, p0}, Lb5/j;->doWrite(Lc5/e;)Lc5/e;

    move-result-object p3

    :goto_3
    new-instance p0, Lz7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3, p0}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    :goto_4
    return p2
.end method

.method public final z0()V
    .locals 3

    iget-object p0, p0, LX4/l;->b:Lcom/google/android/gms/auth/api/signin/RevocationBoundService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0, p0}, Lj5/b;->d(ILandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not Google Play services."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
