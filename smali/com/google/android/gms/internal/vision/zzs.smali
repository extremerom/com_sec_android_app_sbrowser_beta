.class public final Lcom/google/android/gms/internal/vision/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/a;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static b(LS5/d;)Lcom/google/android/gms/internal/vision/zzs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vision/zzs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, LS5/d;->a:LS5/c;

    iget v1, p0, LS5/c;->a:I

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->a:I

    iget v1, p0, LS5/c;->b:I

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->b:I

    iget v1, p0, LS5/c;->e:I

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->e:I

    iget v1, p0, LS5/c;->c:I

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzs;->c:I

    iget-wide v1, p0, LS5/c;->d:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/vision/zzs;->d:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzs;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzs;->b:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzs;->c:I

    invoke-static {p1, v2, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/vision/zzs;->d:J

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-static {p1, v4, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzs;->e:I

    const/4 v0, 0x6

    invoke-static {p1, v0, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p2, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
