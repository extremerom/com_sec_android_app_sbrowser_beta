.class public final Lcom/google/android/gms/fido/fido2/api/common/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/zzn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:[B

.field public final c:[B

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB/b;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LB/b;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->a:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->b:[B

    invoke-static {p4}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->c:[B

    invoke-static {p5}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->d:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;

    iget-wide v2, p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->b:[B

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;->b:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->c:[B

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;->c:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->d:[B

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/zzn;->d:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->c:[B

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->d:[B

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->b:[B

    filled-new-array {v0, p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->b:[B

    invoke-static {p1, v0, v1}, LG5/g3;->e(Landroid/os/Parcel;I[B)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->c:[B

    invoke-static {p1, v0, v1}, LG5/g3;->e(Landroid/os/Parcel;I[B)V

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzn;->d:[B

    invoke-static {p1, v0, p0}, LG5/g3;->e(Landroid/os/Parcel;I[B)V

    invoke-static {p2, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
