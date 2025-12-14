.class public final LB/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, LB/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzr;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/zzr;-><init>(Z)V

    return-object v0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/COSEAlgorithmIdentifier;->a(I)Lcom/google/android/gms/fido/fido2/api/common/COSEAlgorithmIdentifier;

    move-result-object v0
    :try_end_0
    .catch Lr5/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eq v8, v9, :cond_4

    if-eq v8, v10, :cond_3

    const/4 v9, 0x5

    if-eq v8, v9, :cond_2

    invoke-static {v7, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    invoke-static {v7, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-static {v7, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-static {v7, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v4

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_1

    :cond_5
    invoke-static {v1, v4, v10}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_7
    invoke-static {v7, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v9, 0x2

    if-eq v3, v9, :cond_d

    const/4 v9, 0x3

    if-eq v3, v9, :cond_c

    const/4 v9, 0x4

    if-eq v3, v9, :cond_b

    const/4 v9, 0x5

    if-eq v3, v9, :cond_a

    const/4 v9, 0x6

    if-eq v3, v9, :cond_9

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_9
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v8

    goto :goto_3

    :cond_a
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v7

    goto :goto_3

    :cond_b
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v6

    goto :goto_3

    :cond_c
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v5

    goto :goto_3

    :cond_d
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v4

    goto :goto_3

    :cond_e
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;-><init>([B[B[B[B[B)V

    return-object v0

    :pswitch_3
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_f
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fido/fido2/api/common/zze;

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    goto :goto_4

    :cond_11
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;-><init>(Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;Lcom/google/android/gms/fido/fido2/api/common/zze;)V

    return-object v0

    :pswitch_4
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_12
    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_5

    :cond_13
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_5
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_15

    const/4 v6, 0x3

    if-eq v5, v6, :cond_14

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_14
    invoke-static {v4, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_15
    invoke-static {v4, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_16
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;

    move-result-object v0
    :try_end_1
    .catch Lr5/g; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_7
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_17
    invoke-static {v4, v1}, LG5/f3;->s(ILandroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_18
    invoke-static {v4, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_19
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;I)V

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v15, v3

    packed-switch v15, :pswitch_data_1

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_8

    :pswitch_9
    sget-object v14, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v14}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    goto :goto_8

    :pswitch_a
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :pswitch_b
    sget-object v12, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v12}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    goto :goto_8

    :pswitch_c
    invoke-static {v3, v1}, LG5/f3;->s(ILandroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_8

    :pswitch_d
    sget-object v10, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v10}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    goto :goto_8

    :pswitch_e
    sget-object v9, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v9}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_8

    :pswitch_f
    invoke-static {v3, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v3

    if-nez v3, :cond_1a

    move-object v8, v2

    goto :goto_8

    :cond_1a
    const/16 v8, 0x8

    invoke-static {v1, v3, v8}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v8, v3

    goto :goto_8

    :pswitch_10
    sget-object v7, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v7}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_8

    :pswitch_11
    invoke-static {v3, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v6

    goto :goto_8

    :pswitch_12
    sget-object v5, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v5}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    goto :goto_8

    :pswitch_13
    sget-object v4, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;

    goto :goto_8

    :cond_1b
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    move-object v3, v0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;[BLjava/util/ArrayList;Ljava/lang/Double;Ljava/util/List;Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)V

    return-object v0

    :pswitch_14
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_1c
    invoke-static {v3, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_9

    :cond_1d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/zzaa;-><init>(Z)V

    return-object v0

    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/fido/common/Transport;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;

    move-result-object v0
    :try_end_2
    .catch Lp5/a; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_16
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move-object v6, v3

    move-object v7, v6

    move-object v9, v7

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v10, 0x1

    if-eq v4, v10, :cond_22

    const/4 v10, 0x2

    if-eq v4, v10, :cond_21

    const/4 v10, 0x3

    if-eq v4, v10, :cond_20

    const/4 v10, 0x4

    if-eq v4, v10, :cond_1f

    const/16 v10, 0x3e8

    if-eq v4, v10, :cond_1e

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_1e
    invoke-static {v3, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v5

    goto :goto_a

    :cond_1f
    invoke-static {v3, v1}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v3

    move-object v9, v3

    goto :goto_a

    :cond_20
    invoke-static {v3, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v8

    goto :goto_a

    :cond_21
    sget-object v4, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v4}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/CursorWindow;

    move-object v7, v3

    goto :goto_a

    :cond_22
    invoke-static {v3, v1}, LG5/f3;->h(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_a

    :cond_23
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    move v1, v2

    :goto_b
    iget-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_24

    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    iget-object v1, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    array-length v3, v1

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    move v3, v2

    :goto_c
    array-length v4, v1

    if-ge v2, v4, :cond_25

    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    aput v3, v4, v2

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v5

    sub-int v4, v3, v4

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    iput v3, v0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    return-object v0

    :pswitch_17
    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->b:Ljava/lang/String;

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v8, v5

    move-object v10, v8

    move v6, v3

    move v7, v6

    move v9, v7

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_d

    :pswitch_19
    invoke-static {v2, v1}, LG5/f3;->e(ILandroid/os/Parcel;)[I

    move-result-object v2

    move-object v10, v2

    goto :goto_d

    :pswitch_1a
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v9, v2

    goto :goto_d

    :pswitch_1b
    invoke-static {v2, v1}, LG5/f3;->e(ILandroid/os/Parcel;)[I

    move-result-object v2

    move-object v8, v2

    goto :goto_d

    :pswitch_1c
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v7, v2

    goto :goto_d

    :pswitch_1d
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v6, v2

    goto :goto_d

    :pswitch_1e
    sget-object v3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-object v5, v2

    goto :goto_d

    :cond_26
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;-><init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V

    return-object v0

    :pswitch_1f
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move v9, v8

    move-object v6, v3

    move-object v7, v6

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_29

    const/4 v4, 0x4

    if-eq v3, v4, :cond_28

    const/4 v4, 0x5

    if-eq v3, v4, :cond_27

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_e

    :cond_27
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v9, v2

    goto :goto_e

    :cond_28
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v8, v2

    goto :goto_e

    :cond_29
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v7, v2

    goto :goto_e

    :cond_2a
    invoke-static {v2, v1}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v2

    move-object v6, v2

    goto :goto_e

    :cond_2b
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_e

    :cond_2c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zav;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/zav;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    return-object v0

    :pswitch_20
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2d

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_f

    :cond_2d
    sget-object v3, Lcom/google/android/gms/common/internal/MethodInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_f

    :cond_2e
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_f

    :cond_2f
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    return-object v0

    :pswitch_21
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_31

    const/4 v6, 0x2

    if-eq v5, v6, :cond_30

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_10

    :cond_30
    invoke-static {v4, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_31
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_10

    :cond_32
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_22
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    return-object v0

    :pswitch_23
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_24
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v10, v2

    move-wide v6, v3

    move-wide v8, v6

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    const/4 v4, 0x3

    if-eq v3, v4, :cond_33

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_11

    :cond_33
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v6

    goto :goto_11

    :cond_34
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v8

    goto :goto_11

    :cond_35
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v10

    goto :goto_11

    :cond_36
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/clearcut/zzc;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/clearcut/zzc;-><init>(JJZ)V

    return-object v0

    :pswitch_26
    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;->c:I

    return-object v0

    :pswitch_27
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move v8, v2

    move v9, v8

    move v10, v3

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v18, v13

    move/from16 v19, v18

    move/from16 v20, v19

    move v14, v4

    move v15, v14

    move/from16 v16, v15

    move-object/from16 v17, v5

    move-object/from16 v21, v17

    move/from16 v22, v6

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_12

    :pswitch_28
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v22

    goto :goto_12

    :pswitch_29
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v16

    goto :goto_12

    :pswitch_2a
    sget-object v3, Lcom/google/android/gms/vision/face/internal/client/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, [Lcom/google/android/gms/vision/face/internal/client/zza;

    goto :goto_12

    :pswitch_2b
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v20

    goto :goto_12

    :pswitch_2c
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v19

    goto :goto_12

    :pswitch_2d
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v18

    goto :goto_12

    :pswitch_2e
    sget-object v3, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    goto :goto_12

    :pswitch_2f
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v15

    goto :goto_12

    :pswitch_30
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v14

    goto :goto_12

    :pswitch_31
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v13

    goto :goto_12

    :pswitch_32
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v12

    goto :goto_12

    :pswitch_33
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v11

    goto :goto_12

    :pswitch_34
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v10

    goto :goto_12

    :pswitch_35
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v9

    goto :goto_12

    :pswitch_36
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v8

    goto :goto_12

    :cond_37
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    move-object v7, v0

    invoke-direct/range {v7 .. v22}, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;-><init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lcom/google/android/gms/vision/face/internal/client/zza;F)V

    return-object v0

    :pswitch_37
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v8, v5

    move v9, v8

    move-object v6, v3

    move-object v7, v6

    move-object v10, v7

    move-object v11, v10

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v4, v2

    packed-switch v4, :pswitch_data_4

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_13

    :pswitch_38
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_13

    :pswitch_39
    invoke-static {v2, v1}, LG5/f3;->i(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_13

    :pswitch_3a
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v9, v2

    goto :goto_13

    :pswitch_3b
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v8, v2

    goto :goto_13

    :pswitch_3c
    invoke-static {v2, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v2

    if-nez v2, :cond_38

    move-object v7, v3

    goto :goto_13

    :cond_38
    const/16 v4, 0x8

    invoke-static {v1, v2, v4}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v7, v2

    goto :goto_13

    :pswitch_3d
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    :pswitch_3e
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_13

    :cond_39
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/auth/TokenData;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/auth/TokenData;-><init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/ArrayList;Ljava/lang/String;)V

    return-object v0

    :pswitch_3f
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3a

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_14

    :cond_3a
    sget-object v3, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zat;

    goto :goto_14

    :cond_3b
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_14

    :cond_3c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zai;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/signin/internal/zai;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    return-object v0

    :pswitch_40
    new-instance v0, Lcom/sec/android/service/singlesignon/aidls/SingleSignOnServiceResponse;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/sec/android/service/singlesignon/aidls/SingleSignOnServiceResponse;->a:I

    iput-object v1, v0, Lcom/sec/android/service/singlesignon/aidls/SingleSignOnServiceResponse;->b:Ljava/lang/Object;

    return-object v0

    :pswitch_41
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/location/LocationResult;->b:Ljava/util/List;

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3d

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_15

    :cond_3d
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_15

    :cond_3e
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationResult;

    invoke-direct {v0, v2}, Lcom/google/android/gms/location/LocationResult;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_42
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    move v6, v2

    move v7, v6

    move-wide v8, v3

    move-wide v10, v8

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_43

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v2, :cond_42

    const/4 v5, 0x2

    if-eq v4, v5, :cond_41

    const/4 v5, 0x3

    if-eq v4, v5, :cond_40

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3f

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_16

    :cond_3f
    invoke-static {v3, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide v10, v3

    goto :goto_16

    :cond_40
    invoke-static {v3, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v3

    move-wide v8, v3

    goto :goto_16

    :cond_41
    invoke-static {v3, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_16

    :cond_42
    invoke-static {v3, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v6

    goto :goto_16

    :cond_43
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/zzac;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/location/zzac;-><init>(IIJJ)V

    return-object v0

    :pswitch_43
    const-class v0, LB/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "propertyName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stringArray"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "longArray"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    const-string v4, "doubleArray"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v4

    const-string v5, "booleanArray"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    const-string v6, "bytesArray"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "docArray"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    const-string v8, "embeddingArray"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v1, :cond_44

    move-object v4, v1

    move-object v5, v8

    move-object v6, v5

    :goto_17
    move-object v7, v6

    :goto_18
    move-object v9, v7

    :goto_19
    move-object v10, v9

    goto/16 :goto_1e

    :cond_44
    if-eqz v2, :cond_45

    move-object v5, v2

    move-object v4, v8

    move-object v6, v4

    goto :goto_17

    :cond_45
    if-eqz v4, :cond_46

    move-object v6, v4

    move-object v4, v8

    move-object v5, v4

    move-object v7, v5

    goto :goto_18

    :cond_46
    if-eqz v5, :cond_47

    move-object v7, v5

    move-object v4, v8

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    goto :goto_19

    :cond_47
    const/4 v1, 0x0

    if-eqz v6, :cond_4b

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    :goto_1a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_48

    goto :goto_1b

    :cond_48
    const-string v4, "byteArray"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_49

    goto :goto_1b

    :cond_49
    aput-object v2, v0, v1

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_4a
    move-object v4, v8

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v8, v0

    goto :goto_1e

    :cond_4b
    if-eqz v7, :cond_4c

    array-length v0, v7

    new-array v0, v0, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    array-length v2, v7

    invoke-static {v7, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v0

    move-object v4, v8

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    goto :goto_1e

    :cond_4c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lv/t;

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_4d

    goto :goto_1d

    :cond_4d
    const-string v5, "embeddingValue"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    const-string v6, "embeddingModelSignature"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_4f

    if-nez v4, :cond_4e

    goto :goto_1d

    :cond_4e
    new-instance v6, Lv/t;

    invoke-direct {v6, v5, v4}, Lv/t;-><init>([FLjava/lang/String;)V

    aput-object v6, v2, v1

    :cond_4f
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_50
    move-object v10, v2

    move-object v4, v8

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    :goto_1e
    new-instance v0, Landroidx/appsearch/safeparcel/PropertyParcel;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroidx/appsearch/safeparcel/PropertyParcel;-><init>(Ljava/lang/String;[Ljava/lang/String;[J[D[Z[[B[Landroidx/appsearch/safeparcel/GenericDocumentParcel;[Lv/t;)V

    return-object v0

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property bundle passed in doesn\'t have any value set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_37
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LB/j;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzr;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/COSEAlgorithmIdentifier;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/common/data/DataHolder;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zav;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/common/internal/TelemetryData;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/clearcut/zzc;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/samsung/android/scs/ai/sdkcommon/suggestion/AppCategoryDetail;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/auth/TokenData;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zai;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/sec/android/service/singlesignon/aidls/SingleSignOnServiceResponse;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/location/LocationResult;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/location/zzac;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/appsearch/safeparcel/PropertyParcel;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
