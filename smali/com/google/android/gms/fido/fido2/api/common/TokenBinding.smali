.class public Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB/j;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, LB/j;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->NOT_SUPPORTED:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;
    :try_end_0
    .catch Lr5/j; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->b:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v0, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    invoke-static {v2, v0}, LA5/t;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->b:Ljava/lang/String;

    invoke-static {p0, p1}, LA5/t;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->b:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->a:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding$TokenBindingStatus;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p2, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
