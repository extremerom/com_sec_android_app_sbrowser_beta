.class public Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
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
    name = "CalendarDateTime"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/vision/barcode/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->h:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {p1, v0, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p2, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
