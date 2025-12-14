.class public final Lcom/google/android/gms/internal/vision/zzah;
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
            "Lcom/google/android/gms/internal/vision/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lcom/google/android/gms/internal/vision/zzao;

.field public final b:Lcom/google/android/gms/internal/vision/zzab;

.field public final c:Lcom/google/android/gms/internal/vision/zzab;

.field public final d:Lcom/google/android/gms/internal/vision/zzab;

.field public final e:Ljava/lang/String;

.field public final f:F

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Z

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/a;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzao;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzah;->a:[Lcom/google/android/gms/internal/vision/zzao;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzah;->b:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzah;->c:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzah;->d:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzah;->e:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/vision/zzah;->f:F

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/zzah;->g:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/vision/zzah;->h:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/vision/zzah;->i:Z

    iput p10, p0, Lcom/google/android/gms/internal/vision/zzah;->j:I

    iput p11, p0, Lcom/google/android/gms/internal/vision/zzah;->k:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->a:[Lcom/google/android/gms/internal/vision/zzao;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->b:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->c:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzah;->d:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v2, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->e:Ljava/lang/String;

    invoke-static {p1, p2, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x7

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->g:Ljava/lang/String;

    invoke-static {p1, p2, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 p2, 0x9

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzah;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xb

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzah;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xc

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzah;->k:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
