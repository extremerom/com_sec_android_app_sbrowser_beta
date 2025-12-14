.class public final Lcom/google/android/gms/internal/location/zzdb;
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
            "Lcom/google/android/gms/internal/location/zzdb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Landroid/os/IBinder;

.field public final c:Landroid/os/IBinder;

.field public final d:Landroid/app/PendingIntent;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD5/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD5/l;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/location/zzdb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/location/zzdb;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzdb;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzdb;->c:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzdb;->d:Landroid/app/PendingIntent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/internal/location/zzdb;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/location/zzdb;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzdb;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzdb;->b:Landroid/os/IBinder;

    invoke-static {p1, v1, v3}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzdb;->c:Landroid/os/IBinder;

    invoke-static {p1, v1, v3}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzdb;->d:Landroid/app/PendingIntent;

    invoke-static {p1, v2, v1, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzdb;->e:Ljava/lang/String;

    invoke-static {p1, p2, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x6

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdb;->f:Ljava/lang/String;

    invoke-static {p1, p2, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
