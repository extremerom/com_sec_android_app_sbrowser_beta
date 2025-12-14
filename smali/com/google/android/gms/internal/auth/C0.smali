.class public final synthetic Lcom/google/android/gms/internal/auth/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/r;


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/a;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/C0;->a:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/C0;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/auth/C0;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/auth/A0;

    check-cast p2, LR5/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/B0;

    new-instance v0, Lcom/google/android/gms/internal/auth/D0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/auth/D0;-><init>(LR5/i;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v1, p1, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/auth/d;->a:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/C0;->a:Landroid/accounts/Account;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/auth/d;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/C0;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/C0;->c:Landroid/os/Bundle;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/auth/d;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0, p2}, LD5/a;->D0(ILandroid/os/Parcel;)V

    return-void
.end method
