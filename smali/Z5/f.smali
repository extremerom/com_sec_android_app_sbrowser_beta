.class public final LZ5/f;
.super LX4/g;
.source "SourceFile"


# instance fields
.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb5/m;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LZ5/f;->k:I

    iput-object p2, p0, LZ5/f;->l:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(Lb5/m;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzbq;Lb5/m;I)V
    .locals 0

    iput p3, p0, LZ5/f;->k:I

    iput-object p1, p0, LZ5/f;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, LX4/g;-><init>(Lb5/m;I)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lb5/q;
    .locals 1

    iget p0, p0, LZ5/f;->k:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LZ5/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LZ5/c;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Channel;)V

    return-object p0

    :pswitch_0
    new-instance p0, LZ5/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LZ5/h;-><init>(Lcom/google/android/gms/common/api/Status;LZ5/j;)V

    return-object p0

    :pswitch_1
    new-instance p0, LZ5/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LZ5/g;-><init>(Lcom/google/android/gms/common/api/Status;LZ5/i;)V

    return-object p0

    :pswitch_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Lb5/e;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, LZ5/f;->l:Ljava/lang/Object;

    iget v2, p0, LZ5/f;->k:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, LZ5/A;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LZ5/s;

    new-instance v0, LZ5/x;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LZ5/x;-><init>(LX4/g;I)V

    invoke-virtual {p1}, LD5/a;->z0()Landroid/os/Parcel;

    move-result-object p0

    sget v2, LK5/a;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "/messageToSent"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x1f

    invoke-virtual {p1, v0, p0}, LD5/a;->y0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_0
    check-cast p1, LZ5/A;

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzbq;

    new-instance v0, LZ5/k;

    invoke-direct {v0}, LZ5/k;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LZ5/s;

    new-instance v2, LZ5/y;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, LZ5/y;-><init>(LX4/g;LZ5/k;I)V

    invoke-virtual {p1}, LD5/a;->z0()Landroid/os/Parcel;

    move-result-object p0

    sget v3, LK5/a;->a:I

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v1, Lcom/google/android/gms/wearable/internal/zzbq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x23

    invoke-virtual {p1, v0, p0}, LD5/a;->y0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_1
    check-cast p1, LZ5/A;

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzbq;

    new-instance v2, LZ5/k;

    invoke-direct {v2}, LZ5/k;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LZ5/s;

    new-instance v3, LZ5/y;

    invoke-direct {v3, p0, v2, v0}, LZ5/y;-><init>(LX4/g;LZ5/k;I)V

    invoke-virtual {p1}, LD5/a;->z0()Landroid/os/Parcel;

    move-result-object p0

    sget v0, LK5/a;->a:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v1, Lcom/google/android/gms/wearable/internal/zzbq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0, p0}, LD5/a;->y0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_2
    check-cast p1, LZ5/A;

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LZ5/s;

    new-instance v2, LZ5/x;

    invoke-direct {v2, p0, v0}, LZ5/x;-><init>(LX4/g;I)V

    invoke-virtual {p1}, LD5/a;->z0()Landroid/os/Parcel;

    move-result-object p0

    sget v0, LK5/a;->a:I

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, v1, Lcom/google/android/gms/wearable/internal/zzbq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0, p0}, LD5/a;->y0(ILandroid/os/Parcel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
