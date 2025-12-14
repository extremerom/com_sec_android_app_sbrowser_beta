.class public Lcom/google/android/gms/safetynet/SafeBrowsingData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/safetynet/SafeBrowsingData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/common/data/DataHolder;

.field public c:Landroid/os/ParcelFileDescriptor;

.field public d:J

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LN5/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LN5/e;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->c:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0x8

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-wide v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->d:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->e:[B

    invoke-static {p1, p2, v1}, LG5/g3;->e(Landroid/os/Parcel;I[B)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->c:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
