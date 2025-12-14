.class public final LD5/i;
.super LA5/f;
.source "SourceFile"


# instance fields
.field public final synthetic b:LR5/i;


# direct methods
.method public constructor <init>(LR5/i;)V
    .locals 1

    iput-object p1, p0, LD5/i;->b:LR5/i;

    const-string p1, "com.google.android.gms.location.internal.ISettingsCallbacks"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LA5/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final x0(ILandroid/os/Parcel;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/location/LocationSettingsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LD5/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-static {p2}, LD5/e;->b(Landroid/os/Parcel;)V

    iget-object p2, p1, Lcom/google/android/gms/location/LocationSettingsResult;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v1, LL5/d;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LF3/f;-><init>(IZ)V

    iput-object p1, v1, LF3/f;->b:Ljava/lang/Object;

    iget-object p0, p0, LD5/i;->b:LR5/i;

    invoke-static {p2, v1, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
