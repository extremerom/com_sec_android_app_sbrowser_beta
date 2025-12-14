.class public final Lcom/google/android/gms/internal/location/zzdf;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzdf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/location/zzdd;

.field public final c:LL5/j;

.field public final d:LL5/g;

.field public final e:Landroid/app/PendingIntent;

.field public final f:LD5/v;

.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD5/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LD5/l;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/location/zzdf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/location/zzdf;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzdf;->b:Lcom/google/android/gms/internal/location/zzdd;

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    sget p2, LL5/i;->b:I

    const-string p2, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, LL5/j;

    if-eqz v2, :cond_0

    check-cast v1, LL5/j;

    goto :goto_0

    :cond_0
    new-instance v1, LL5/h;

    invoke-direct {v1, p3, p2, v0}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/location/zzdf;->c:LL5/j;

    iput-object p5, p0, Lcom/google/android/gms/internal/location/zzdf;->e:Landroid/app/PendingIntent;

    if-eqz p4, :cond_3

    sget p2, LD5/j;->p:I

    const-string p2, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p4, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p5, p3, LL5/g;

    if-eqz p5, :cond_2

    check-cast p3, LL5/g;

    goto :goto_1

    :cond_2
    new-instance p3, LL5/f;

    invoke-direct {p3, p4, p2, v0}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    move-object p3, p1

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzdf;->d:LL5/g;

    if-eqz p6, :cond_5

    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, LD5/v;

    if-eqz p3, :cond_4

    move-object p1, p2

    check-cast p1, LD5/v;

    goto :goto_2

    :cond_4
    new-instance p2, LD5/t;

    invoke-direct {p2, p6, p1, v0}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p1, p2

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdf;->f:LD5/v;

    iput-object p7, p0, Lcom/google/android/gms/internal/location/zzdf;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzdf;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzdf;->b:Lcom/google/android/gms/internal/location/zzdd;

    invoke-static {p1, v1, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzdf;->c:LL5/j;

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v3}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzdf;->e:Landroid/app/PendingIntent;

    invoke-static {p1, v2, v3, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzdf;->d:LL5/g;

    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_1
    const/4 v2, 0x5

    invoke-static {p1, v2, p2}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzdf;->f:LD5/v;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    const/4 p2, 0x6

    invoke-static {p1, p2, v1}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/16 p2, 0x8

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdf;->g:Ljava/lang/String;

    invoke-static {p1, p2, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
