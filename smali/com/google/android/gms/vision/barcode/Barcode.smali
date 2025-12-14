.class public Lcom/google/android/gms/vision/barcode/Barcode;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;,
        Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;,
        Lcom/google/android/gms/vision/barcode/Barcode$Address;,
        Lcom/google/android/gms/vision/barcode/Barcode$PersonName;,
        Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;,
        Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;,
        Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;,
        Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;,
        Lcom/google/android/gms/vision/barcode/Barcode$WiFi;,
        Lcom/google/android/gms/vision/barcode/Barcode$Sms;,
        Lcom/google/android/gms/vision/barcode/Barcode$Phone;,
        Lcom/google/android/gms/vision/barcode/Barcode$Email;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:[Landroid/graphics/Point;

.field public f:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public g:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public h:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

.field public i:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

.field public j:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

.field public k:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

.field public l:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

.field public m:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

.field public n:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

.field public o:[B

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->b:Ljava/lang/String;

    invoke-static {p1, v1, v3}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    invoke-static {p1, v2, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->e:[Landroid/graphics/Point;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->f:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->g:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->h:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->i:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->j:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->k:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->l:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->m:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->n:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0x10

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->o:[B

    invoke-static {p1, p2, v1}, LG5/g3;->e(Landroid/os/Parcel;I[B)V

    const/16 p2, 0x11

    invoke-static {p1, p2, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lcom/google/android/gms/vision/barcode/Barcode;->p:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
