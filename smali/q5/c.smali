.class public final Lq5/c;
.super LA5/f;
.source "SourceFile"

# interfaces
.implements LA5/x;


# instance fields
.field public final synthetic b:I

.field public final synthetic p:LR5/i;


# direct methods
.method public constructor <init>(ILR5/i;)V
    .locals 0

    iput p1, p0, Lq5/c;->b:I

    iput-object p2, p0, Lq5/c;->p:LR5/i;

    const-string p1, "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedCallbacks"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LA5/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V
    .locals 1

    iget v0, p0, Lq5/c;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LA5/u;

    invoke-direct {v0, p2}, LA5/u;-><init>(Landroid/app/PendingIntent;)V

    iget-object p0, p0, Lq5/c;->p:LR5/i;

    invoke-static {p1, v0, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return-void

    :pswitch_0
    new-instance v0, LA5/u;

    invoke-direct {v0, p2}, LA5/u;-><init>(Landroid/app/PendingIntent;)V

    iget-object p0, p0, Lq5/c;->p:LR5/i;

    invoke-static {p1, v0, p0}, LG5/B;->m(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LR5/i;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final y0(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    sget v0, LA5/s;->a:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    :goto_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Parcelable;

    :goto_1
    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {p2}, LA5/s;->a(Landroid/os/Parcel;)V

    invoke-interface {p0, p1, v1}, LA5/x;->B(Lcom/google/android/gms/common/api/Status;Landroid/app/PendingIntent;)V

    return p3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
