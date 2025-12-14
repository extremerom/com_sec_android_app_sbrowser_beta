.class public final Lcom/google/android/gms/wearable/internal/zzd;
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
            "Lcom/google/android/gms/wearable/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:LZ5/r;

.field public final b:[Landroid/content/IntentFilter;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ5/b;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LZ5/b;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzd;->a:LZ5/r;

    throw v0
.end method

.method public constructor <init>(Landroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, LZ5/r;

    if-eqz v2, :cond_0

    check-cast v1, LZ5/r;

    goto :goto_0

    :cond_0
    new-instance v1, LZ5/q;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzd;->a:LZ5/r;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzd;->a:LZ5/r;

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzd;->b:[Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzd;->a:LZ5/r;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzd;->b:[Landroid/content/IntentFilter;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 p2, 0x4

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzd;->c:Ljava/lang/String;

    invoke-static {p1, p2, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 p2, 0x5

    iget-object p0, p0, Lcom/google/android/gms/wearable/internal/zzd;->d:Ljava/lang/String;

    invoke-static {p1, p2, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
