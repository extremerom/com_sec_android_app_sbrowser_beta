.class public final Lcom/google/android/gms/internal/location/zzd;
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
            "Lcom/google/android/gms/internal/location/zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lcom/google/android/gms/internal/location/zzd;

.field public final h:LD5/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD5/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LD5/l;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/location/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    invoke-static {}, Landroid/os/Process;->myPid()I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/gms/internal/location/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/location/zzd;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/location/zzd;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/location/zzd;->e:I

    sget-object p1, LD5/q;->b:LD5/o;

    instance-of p1, p7, LD5/n;

    if-eqz p1, :cond_1

    check-cast p7, LD5/n;

    check-cast p7, LD5/q;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, LD5/n;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LD5/n;->a:[Ljava/lang/Object;

    invoke-virtual {p7, p1}, LD5/n;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    if-nez p2, :cond_0

    sget-object p1, LD5/r;->e:LD5/r;

    :goto_0
    move-object p7, p1

    goto :goto_3

    :cond_0
    new-instance p3, LD5/r;

    invoke-direct {p3, p2, p1}, LD5/r;-><init>(I[Ljava/lang/Object;)V

    :goto_1
    move-object p7, p3

    goto :goto_3

    :cond_1
    invoke-interface {p7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_3

    aget-object p4, p1, p3

    if-eqz p4, :cond_2

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "at index "

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p2, :cond_4

    sget-object p1, LD5/r;->e:LD5/r;

    goto :goto_0

    :cond_4
    new-instance p3, LD5/r;

    invoke-direct {p3, p2, p1}, LD5/r;-><init>(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_3
    iput-object p7, p0, Lcom/google/android/gms/internal/location/zzd;->h:LD5/q;

    iput-object p8, p0, Lcom/google/android/gms/internal/location/zzd;->g:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/location/zzd;

    iget v0, p1, Lcom/google/android/gms/internal/location/zzd;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/location/zzd;->a:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/location/zzd;->b:I

    iget v2, p1, Lcom/google/android/gms/internal/location/zzd;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/location/zzd;->e:I

    iget v2, p1, Lcom/google/android/gms/internal/location/zzd;->e:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    invoke-static {v0, v2}, LG5/C;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    invoke-static {v0, v2}, LG5/C;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzd;->g:Lcom/google/android/gms/internal/location/zzd;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzd;->g:Lcom/google/android/gms/internal/location/zzd;

    invoke-static {v0, v2}, LG5/C;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzd;->h:LD5/q;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzd;->h:LD5/q;

    invoke-virtual {p0, p1}, LD5/q;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/location/zzd;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    filled-new-array {v0, p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzd;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzd;->a:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzd;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/location/zzd;->c:Ljava/lang/String;

    invoke-static {p1, v1, v3}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzd;->d:Ljava/lang/String;

    invoke-static {p1, v2, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/location/zzd;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzd;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzd;->g:Lcom/google/android/gms/internal/location/zzd;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzd;->h:LD5/q;

    const/16 p2, 0x8

    invoke-static {p1, p0, p2}, LG5/g3;->o(Landroid/os/Parcel;Ljava/util/List;I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
