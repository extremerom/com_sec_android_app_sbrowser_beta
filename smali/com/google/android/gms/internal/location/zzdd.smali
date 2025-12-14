.class public final Lcom/google/android/gms/internal/location/zzdd;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzdd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD5/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LD5/l;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/location/zzdd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 26

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget v2, v0, Lcom/google/android/gms/location/LocationRequest;->a:I

    iget-wide v3, v0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-wide v5, v0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v7, v0, Lcom/google/android/gms/location/LocationRequest;->i:J

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/common/internal/ClientIdentity;

    iget v11, v10, Lcom/google/android/gms/common/internal/ClientIdentity;->a:I

    iget-object v10, v10, Lcom/google/android/gms/common/internal/ClientIdentity;->b:Ljava/lang/String;

    invoke-static {v1, v11, v10}, Lj5/d;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/location/LocationRequest;->n:Landroid/os/WorkSource;

    :cond_2
    :goto_1
    const/4 v9, 0x1

    if-eqz p3, :cond_3

    move/from16 v18, v9

    goto :goto_2

    :cond_3
    iget v10, v0, Lcom/google/android/gms/location/LocationRequest;->j:I

    move/from16 v18, v10

    :goto_2
    if-eqz p4, :cond_4

    const/4 v10, 0x2

    :goto_3
    move/from16 v19, v10

    goto :goto_4

    :cond_4
    iget v10, v0, Lcom/google/android/gms/location/LocationRequest;->k:I

    goto :goto_3

    :goto_4
    const/16 v10, 0x1e

    iget-object v11, v0, Lcom/google/android/gms/location/LocationRequest;->l:Ljava/lang/String;

    if-eqz p5, :cond_6

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v10, :cond_5

    move-object/from16 v11, p5

    :cond_5
    :goto_5
    move-object/from16 v20, v11

    goto :goto_6

    :cond_6
    if-eqz p8, :cond_5

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v10, :cond_5

    move-object/from16 v11, p8

    goto :goto_5

    :goto_6
    if-eqz p6, :cond_7

    move/from16 v21, v9

    goto :goto_7

    :cond_7
    iget-boolean v10, v0, Lcom/google/android/gms/location/LocationRequest;->m:Z

    move/from16 v21, v10

    :goto_7
    if-eqz p7, :cond_8

    move v15, v9

    goto :goto_8

    :cond_8
    iget-boolean v10, v0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    move v15, v10

    :goto_8
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, p9, v10

    const-wide/16 v11, -0x1

    if-eqz v10, :cond_b

    cmp-long v7, p9, v11

    if-eqz v7, :cond_a

    const-wide/16 v7, 0x0

    cmp-long v7, p9, v7

    if-ltz v7, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_9
    const-string v7, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    invoke-static {v7, v9}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    move-wide/from16 v7, p9

    :cond_b
    new-instance v9, Lcom/google/android/gms/location/LocationRequest;

    cmp-long v10, v5, v11

    if-nez v10, :cond_c

    move-wide v5, v3

    goto :goto_a

    :cond_c
    const/16 v10, 0x69

    if-ne v2, v10, :cond_d

    goto :goto_a

    :cond_d
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_a
    iget-wide v13, v0, Lcom/google/android/gms/location/LocationRequest;->d:J

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    cmp-long v10, v7, v11

    if-nez v10, :cond_e

    move-wide/from16 v24, v3

    goto :goto_b

    :cond_e
    move-wide/from16 v24, v7

    :goto_b
    new-instance v7, Landroid/os/WorkSource;

    move-object/from16 v22, v7

    invoke-direct {v7, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iget-wide v11, v0, Lcom/google/android/gms/location/LocationRequest;->e:J

    iget v13, v0, Lcom/google/android/gms/location/LocationRequest;->f:I

    iget v14, v0, Lcom/google/android/gms/location/LocationRequest;->g:F

    iget-object v0, v0, Lcom/google/android/gms/location/LocationRequest;->o:Lcom/google/android/gms/internal/location/zzd;

    move-object/from16 v23, v0

    const-wide v0, 0x7fffffffffffffffL

    move-object v7, v9

    move-wide v9, v0

    move-object v1, v7

    move-object v0, v7

    move-wide/from16 v7, v16

    move-wide/from16 v16, v24

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzdd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/location/zzdd;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdd;->a:Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x1

    invoke-static {p1, v1, p0, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method
