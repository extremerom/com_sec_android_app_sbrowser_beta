.class public final Lcom/google/android/gms/internal/clearcut/zzr;
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
            "Lcom/google/android/gms/internal/clearcut/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/C0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    iput p6, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    iput p9, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/clearcut/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    invoke-virtual {p5}, Lcom/google/android/gms/internal/clearcut/o0;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/clearcut/zzr;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v1, p1, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayLoggerContext[package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uploadAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",loggingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",logAndroidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p2, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/zzr;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzr;->d:Ljava/lang/String;

    invoke-static {p1, v0, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzr;->e:Ljava/lang/String;

    invoke-static {p1, v0, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/zzr;->g:Ljava/lang/String;

    invoke-static {p1, v0, v2}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0xa

    invoke-static {p1, v0, v1}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/zzr;->i:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p2, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
