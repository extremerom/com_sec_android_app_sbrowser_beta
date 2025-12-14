.class public final enum Lcom/google/android/gms/fido/fido2/api/common/zzat;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/zzat;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/zzat;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zza:Lcom/google/android/gms/fido/fido2/api/common/zzat;

.field public static final enum zzb:Lcom/google/android/gms/fido/fido2/api/common/zzat;

.field public static final enum zzc:Lcom/google/android/gms/fido/fido2/api/common/zzat;

.field private static final synthetic zzd:[Lcom/google/android/gms/fido/fido2/api/common/zzat;


# instance fields
.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzat;

    const/4 v1, 0x0

    const-string v2, "required"

    const-string v3, "USER_VERIFICATION_REQUIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/zzat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zza:Lcom/google/android/gms/fido/fido2/api/common/zzat;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/zzat;

    const/4 v2, 0x1

    const-string v3, "preferred"

    const-string v4, "USER_VERIFICATION_PREFERRED"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/zzat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zzb:Lcom/google/android/gms/fido/fido2/api/common/zzat;

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/zzat;

    const/4 v3, 0x2

    const-string v4, "discouraged"

    const-string v5, "USER_VERIFICATION_DISCOURAGED"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/zzat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zzc:Lcom/google/android/gms/fido/fido2/api/common/zzat;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/fido/fido2/api/common/zzat;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zzd:[Lcom/google/android/gms/fido/fido2/api/common/zzat;

    new-instance v0, LB/c;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LB/c;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zze:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/zzat;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/zzat;->values()[Lcom/google/android/gms/fido/fido2/api/common/zzat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zze:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lr5/k;

    const-string v1, "User verification requirement "

    const-string v2, " not supported"

    invoke-static {v1, p0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/zzat;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zzd:[Lcom/google/android/gms/fido/fido2/api/common/zzat;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/zzat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/zzat;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzat;->zze:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
