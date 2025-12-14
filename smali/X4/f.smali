.class public final LX4/f;
.super LX4/g;
.source "SourceFile"


# instance fields
.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lb5/m;I)V
    .locals 0

    iput p2, p0, LX4/f;->k:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LX4/g;-><init>(Lb5/m;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Lcom/google/android/gms/common/api/Status;)Lb5/q;
    .locals 0

    iget p0, p0, LX4/f;->k:I

    return-object p1
.end method

.method public final k(Lb5/e;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, LX4/f;->k:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, LX4/d;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LX4/k;

    new-instance v3, LX4/e;

    invoke-direct {v3, p0, v1}, LX4/e;-><init>(LX4/g;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    iget-object v4, v2, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v4, Lv5/b;->a:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p1, LX4/d;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 p1, 0x67

    invoke-virtual {v2, p1, p0}, LD5/a;->w0(ILandroid/os/Parcel;)V

    return-void

    :pswitch_0
    check-cast p1, LX4/d;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, LX4/k;

    new-instance v3, LX4/e;

    invoke-direct {v3, p0, v0}, LX4/e;-><init>(LX4/g;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    iget-object v4, v2, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v4, Lv5/b;->a:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p1, LX4/d;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/16 p1, 0x66

    invoke-virtual {v2, p1, p0}, LD5/a;->w0(ILandroid/os/Parcel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
