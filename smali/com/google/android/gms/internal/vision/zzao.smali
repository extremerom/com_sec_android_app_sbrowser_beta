.class public final Lcom/google/android/gms/internal/vision/zzao;
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
            "Lcom/google/android/gms/internal/vision/zzao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:[Lcom/google/android/gms/internal/vision/zzal;

.field public final b:Lcom/google/android/gms/internal/vision/zzab;

.field public final c:Lcom/google/android/gms/internal/vision/zzab;

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/a;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzal;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzao;->a:[Lcom/google/android/gms/internal/vision/zzal;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzao;->b:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzao;->c:Lcom/google/android/gms/internal/vision/zzab;

    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzao;->d:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/vision/zzao;->e:F

    iput-object p6, p0, Lcom/google/android/gms/internal/vision/zzao;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/vision/zzao;->g:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->a:[Lcom/google/android/gms/internal/vision/zzal;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->b:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->c:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->d:Ljava/lang/String;

    invoke-static {p1, p2, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x6

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzao;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p2, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->f:Ljava/lang/String;

    invoke-static {p1, p2, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 p2, 0x8

    invoke-static {p1, p2, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/vision/zzao;->g:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
