.class public abstract LD5/u;
.super LA5/f;
.source "SourceFile"

# interfaces
.implements LD5/v;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LA5/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final x0(ILandroid/os/Parcel;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, LD5/v;->f()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/location/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LD5/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzg;

    invoke-static {p2}, LD5/e;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, LD5/v;->n0(Lcom/google/android/gms/internal/location/zzg;)V

    :goto_0
    return v0
.end method
