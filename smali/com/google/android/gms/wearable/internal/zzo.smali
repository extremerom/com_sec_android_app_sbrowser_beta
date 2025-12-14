.class public final Lcom/google/android/gms/wearable/internal/zzo;
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
            "Lcom/google/android/gms/wearable/internal/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/wearable/internal/zziv;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Float;

.field public final g:Lcom/google/android/gms/wearable/internal/zzs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ5/v;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LZ5/v;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wearable/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/zziv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Lcom/google/android/gms/wearable/internal/zzs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    iput-object p7, p0, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/wearable/internal/zzo;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzo;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    invoke-static {v2, v3}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    invoke-static {p0, p1}, LG5/D3;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    iget-object v6, p0, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppParcelable{title=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', developerName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', formattedPrice=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', starRating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", wearDetails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deepLinkUri=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    const-string v0, "\', icon="

    const-string v3, "}"

    invoke-static {v2, p0, v0, v1, v3}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->c:Lcom/google/android/gms/wearable/internal/zziv;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzo;->e:Ljava/lang/String;

    invoke-static {p1, v2, v3}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzo;->f:Ljava/lang/Float;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    invoke-static {p1, v3, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_0
    const/4 v1, 0x7

    iget-object p0, p0, Lcom/google/android/gms/wearable/internal/zzo;->g:Lcom/google/android/gms/wearable/internal/zzs;

    invoke-static {p1, v1, p0, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
