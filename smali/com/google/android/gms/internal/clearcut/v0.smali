.class public final Lcom/google/android/gms/internal/clearcut/v0;
.super Lc5/e;
.source "SourceFile"


# instance fields
.field public final k:Lcom/google/android/gms/clearcut/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/clearcut/zze;Lb5/m;)V
    .locals 1

    sget-object v0, LY4/a;->j:Lb5/g;

    invoke-direct {p0, v0, p2}, Lc5/e;-><init>(Lb5/g;Lb5/m;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/v0;->k:Lcom/google/android/gms/clearcut/zze;

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lb5/q;
    .locals 0

    return-object p1
.end method

.method public final k(Lb5/e;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/v0;->k:Lcom/google/android/gms/clearcut/zze;

    check-cast p1, Lcom/google/android/gms/internal/clearcut/z0;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/y0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/clearcut/y0;-><init>(Lcom/google/android/gms/internal/clearcut/v0;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/gms/clearcut/zze;->i:Lcom/google/android/gms/internal/clearcut/w0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/m0;->c()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/clearcut/m0;->b(Lcom/google/android/gms/internal/clearcut/m0;[BI)V

    iput-object v4, v0, Lcom/google/android/gms/clearcut/zze;->b:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/A0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    const-string v2, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v2, Lcom/google/android/gms/internal/clearcut/p;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/clearcut/zze;->writeToParcel(Landroid/os/Parcel;I)V

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/A0;->a:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p0, v1, p1, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lc5/e;->l(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
