.class public final Lc5/K;
.super LP5/b;
.source "SourceFile"

# interfaces
.implements Lb5/k;
.implements Lb5/l;


# static fields
.field public static final v:LA5/v;


# instance fields
.field public final b:Landroid/content/Context;

.field public final p:Landroid/os/Handler;

.field public final q:LA5/v;

.field public final r:Ljava/util/Set;

.field public final s:Lcom/google/android/gms/common/internal/h;

.field public t:LP5/a;

.field public u:Lc5/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LO5/b;->a:LA5/v;

    sput-object v0, Lc5/K;->v:LA5/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/h;)V
    .locals 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, LA5/f;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lc5/K;->b:Landroid/content/Context;

    iput-object p2, p0, Lc5/K;->p:Landroid/os/Handler;

    iput-object p3, p0, Lc5/K;->s:Lcom/google/android/gms/common/internal/h;

    iget-object p1, p3, Lcom/google/android/gms/common/internal/h;->a:Ljava/util/Set;

    iput-object p1, p0, Lc5/K;->r:Ljava/util/Set;

    sget-object p1, Lc5/K;->v:LA5/v;

    iput-object p1, p0, Lc5/K;->q:LA5/v;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 7

    const/4 p1, 0x2

    iget-object v0, p0, Lc5/K;->t:LP5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, LP5/a;->b:Lcom/google/android/gms/common/internal/h;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "<<default account>>"

    :try_start_1
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, LX4/a;->a(Landroid/content/Context;)LX4/a;

    move-result-object v3

    invoke-virtual {v3}, LX4/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v5, Lcom/google/android/gms/common/internal/zat;

    iget-object v6, v0, LP5/a;->q:Ljava/lang/Integer;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, p1, v4, v6, v3}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LP5/c;

    new-instance v3, Lcom/google/android/gms/signin/internal/zai;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    iget-object v5, v0, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v5, Lx5/a;->a:I

    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/signin/internal/zai;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v0, LD5/a;->b:Landroid/os/IBinder;

    const/16 v6, 0xc

    invoke-interface {v0, v6, v4, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    const-string v3, "SignInClientImpl"

    const-string v4, "Remote service probably died when signIn is called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    new-instance v4, Lcom/google/android/gms/signin/internal/zak;

    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v4, v1, v5, v2}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    new-instance v1, Lc5/A;

    invoke-direct {v1, p1, p0, v4}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lc5/K;->p:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    const-string p0, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v3, p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lc5/K;->u:Lc5/B;

    invoke-virtual {p0, p1}, Lc5/B;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lc5/K;->t:LP5/a;

    invoke-interface {p0}, Lb5/e;->disconnect()V

    return-void
.end method
