.class public final LD5/j;
.super LA5/f;
.source "SourceFile"

# interfaces
.implements LL5/g;


# static fields
.field public static final synthetic p:I


# instance fields
.field public final b:Lcom/bumptech/glide/manager/o;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/o;)V
    .locals 2

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LA5/f;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    return-void
.end method


# virtual methods
.method public final x0(ILandroid/os/Parcel;)Z
    .locals 3

    iget-object v0, p0, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LD5/j;->z0()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, LD5/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/location/LocationAvailability;

    invoke-static {p2}, LD5/e;->b(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->g()Landroidx/emoji2/text/d;

    move-result-object p1

    new-instance p2, LJ7/c;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, LJ7/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/d;->a(Lc5/n;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p0}, LD5/e;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/location/LocationResult;

    invoke-static {p2}, LD5/e;->b(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->g()Landroidx/emoji2/text/d;

    move-result-object p1

    new-instance p2, LI3/d;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, LI3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/d;->a(Lc5/n;)V

    :goto_0
    return v1
.end method

.method public final z0()V
    .locals 3

    iget-object v0, p0, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->g()Landroidx/emoji2/text/d;

    move-result-object v0

    new-instance v1, LO9/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/d;->a(Lc5/n;)V

    return-void
.end method
