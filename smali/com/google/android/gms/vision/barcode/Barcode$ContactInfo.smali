.class public Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public e:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public f:[Ljava/lang/String;

.field public g:[Lcom/google/android/gms/vision/barcode/Barcode$Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->a:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->d:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->e:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->f:[Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->l(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/16 v1, 0x8

    iget-object p0, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->g:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    invoke-static {p1, v1, p0, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
