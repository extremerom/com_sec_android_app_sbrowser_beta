.class public final LZ5/t;
.super LX4/g;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic e(Lcom/google/android/gms/common/api/Status;)Lb5/q;
    .locals 1

    new-instance p0, LZ5/u;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, LZ5/u;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public final k(Lb5/e;)V
    .locals 2

    check-cast p1, LZ5/A;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LZ5/s;

    new-instance v0, LZ5/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LZ5/x;-><init>(LX4/g;I)V

    invoke-virtual {p1}, LD5/a;->z0()Landroid/os/Parcel;

    move-result-object p0

    sget v1, LK5/a;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, p0}, LD5/a;->y0(ILandroid/os/Parcel;)V

    return-void
.end method
