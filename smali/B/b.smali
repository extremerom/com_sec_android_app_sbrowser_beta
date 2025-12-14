.class public final LB/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, LG5/g3;->p(ILandroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    invoke-static {p1, v1, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    invoke-static {p1, v1, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->d:Ljava/lang/String;

    invoke-static {p1, v3, v1}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->e:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, LG5/g3;->g(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->g:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, LG5/g3;->d(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, LG5/g3;->n(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/16 p2, 0xc

    invoke-static {p1, p2, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xd

    invoke-static {p1, p2, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->m:Z

    const/16 v1, 0xe

    invoke-static {p1, v1, v3}, LG5/g3;->r(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->n:Ljava/lang/String;

    invoke-static {p1, p2, p0}, LG5/g3;->k(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {v0, p1}, LG5/g3;->q(ILandroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, LB/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-wide v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_3
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzn;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/fido/fido2/api/common/zzn;-><init>(J[B[B[B)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_5
    invoke-static {v5, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v4

    goto :goto_1

    :cond_6
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[B)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_b

    const/4 v8, 0x4

    if-eq v7, v8, :cond_a

    const/4 v8, 0x5

    if-eq v7, v8, :cond_9

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_9
    invoke-static {v6, v1}, LG5/f3;->h(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    invoke-static {v6, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v4

    goto :goto_2

    :cond_b
    invoke-static {v6, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v3

    goto :goto_2

    :cond_c
    invoke-static {v6, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_2

    :cond_d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;-><init>([B[B[B[Ljava/lang/String;)V

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

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :pswitch_3
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    goto :goto_3

    :pswitch_4
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzad;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/fido/fido2/api/common/zzad;

    goto :goto_3

    :pswitch_5
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/fido/fido2/api/common/zzr;

    goto :goto_3

    :pswitch_6
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/fido/fido2/api/common/zzaa;

    goto :goto_3

    :pswitch_7
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/fido/fido2/api/common/zzy;

    goto :goto_3

    :pswitch_8
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/fido/fido2/api/common/zzw;

    goto :goto_3

    :pswitch_9
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    goto :goto_3

    :pswitch_a
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/fido/fido2/api/common/zzp;

    goto :goto_3

    :pswitch_b
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    goto :goto_3

    :cond_e
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;Lcom/google/android/gms/fido/fido2/api/common/zzp;Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;Lcom/google/android/gms/fido/fido2/api/common/zzw;Lcom/google/android/gms/fido/fido2/api/common/zzy;Lcom/google/android/gms/fido/fido2/api/common/zzaa;Lcom/google/android/gms/fido/fido2/api/common/zzr;Lcom/google/android/gms/fido/fido2/api/common/zzad;Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eq v6, v7, :cond_10

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_f
    invoke-static {v1, v5, v8}, LG5/f3;->A(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-short v4, v4

    goto :goto_4

    :cond_10
    invoke-static {v1, v5, v8}, LG5/f3;->A(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    goto :goto_4

    :cond_11
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_4

    :cond_12
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->a:I

    iput-short v3, v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->b:S

    iput-short v4, v0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->c:S

    return-object v0

    :pswitch_d
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_13
    invoke-static {v3, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_5

    :cond_14
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;-><init>(Z)V

    return-object v0

    :pswitch_e
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_18

    const/4 v8, 0x3

    if-eq v7, v8, :cond_17

    const/4 v8, 0x4

    if-eq v7, v8, :cond_16

    const/4 v8, 0x5

    if-eq v7, v8, :cond_15

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_15
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_16
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_17
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_18
    invoke-static {v6, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_6

    :cond_19
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0

    :pswitch_f
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

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v13, v3

    const/16 v14, 0x8

    packed-switch v13, :pswitch_data_2

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :pswitch_10
    invoke-static {v3, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v3

    if-nez v3, :cond_1a

    move-object v12, v2

    goto :goto_7

    :cond_1a
    invoke-static {v1, v3, v14}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v12, v3

    goto :goto_7

    :pswitch_11
    sget-object v11, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v11}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    goto :goto_7

    :pswitch_12
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :pswitch_13
    sget-object v9, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v9}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    goto :goto_7

    :pswitch_14
    invoke-static {v3, v1}, LG5/f3;->s(ILandroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_7

    :pswitch_15
    sget-object v7, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v7}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_7

    :pswitch_16
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :pswitch_17
    invoke-static {v3, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v3

    if-nez v3, :cond_1b

    move-object v5, v2

    goto :goto_7

    :cond_1b
    invoke-static {v1, v3, v14}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v5, v3

    goto :goto_7

    :pswitch_18
    invoke-static {v3, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v4

    goto :goto_7

    :cond_1c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;-><init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;Ljava/lang/Long;)V

    return-object v0

    :pswitch_19
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

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_8

    :pswitch_1a
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :pswitch_1b
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;

    goto :goto_8

    :pswitch_1c
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    goto :goto_8

    :pswitch_1d
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    goto :goto_8

    :pswitch_1e
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    goto :goto_8

    :pswitch_1f
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v6

    goto :goto_8

    :pswitch_20
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :pswitch_21
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_1d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;Ljava/lang/String;)V

    return-object v0

    :pswitch_22
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1e

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_1e
    invoke-static {v3, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_9

    :cond_1f
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;-><init>(Z)V

    return-object v0

    :pswitch_23
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/github/mikephil/charting/data/Entry;->a:F

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/github/mikephil/charting/data/Entry;->b:Landroid/os/Parcelable;

    iput v2, v0, Lcom/github/mikephil/charting/data/Entry;->c:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/github/mikephil/charting/data/Entry;->c:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/github/mikephil/charting/data/Entry;->a:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    iput-object v1, v0, Lcom/github/mikephil/charting/data/Entry;->b:Landroid/os/Parcelable;

    :cond_20
    return-object v0

    :pswitch_24
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xff

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->i:I

    const/4 v2, -0x2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->k:I

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->m:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->t:Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->b:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->c:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->d:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->e:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->i:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->k:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->l:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->m:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/google/android/material/badge/BadgeState$State;->q:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->u:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->v:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->t:Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/util/Locale;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Boolean;

    return-object v0

    :pswitch_25
    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->b:F

    return-object v0

    :pswitch_26
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    sget-object v2, Lcom/google/android/gms/common/internal/GetServiceRequest;->o:[Lcom/google/android/gms/common/api/Scope;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->p:[Lcom/google/android/gms/common/Feature;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v13, v2

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v16

    move v8, v5

    move v9, v8

    move v10, v9

    move/from16 v18, v10

    move/from16 v19, v18

    move/from16 v20, v19

    move-object v11, v6

    move-object v12, v11

    move-object v15, v12

    move-object/from16 v21, v15

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    :pswitch_27
    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_a

    :pswitch_28
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_a

    :pswitch_29
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move/from16 v20, v2

    goto :goto_a

    :pswitch_2a
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v19, v2

    goto :goto_a

    :pswitch_2b
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move/from16 v18, v2

    goto :goto_a

    :pswitch_2c
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/Feature;

    move-object/from16 v17, v2

    goto :goto_a

    :pswitch_2d
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/Feature;

    move-object/from16 v16, v2

    goto :goto_a

    :pswitch_2e
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v15, v2

    goto :goto_a

    :pswitch_2f
    invoke-static {v2, v1}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v2

    move-object v14, v2

    goto :goto_a

    :pswitch_30
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    move-object v13, v2

    goto :goto_a

    :pswitch_31
    invoke-static {v2, v1}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v2

    move-object v12, v2

    goto :goto_a

    :pswitch_32
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_a

    :pswitch_33
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v10, v2

    goto :goto_a

    :pswitch_34
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v9, v2

    goto :goto_a

    :pswitch_35
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v8, v2

    goto :goto_a

    :cond_21
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-object v7, v0

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    return-object v0

    :pswitch_36
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v9, 0x1

    if-eq v3, v9, :cond_26

    const/4 v9, 0x2

    if-eq v3, v9, :cond_25

    const/4 v9, 0x3

    if-eq v3, v9, :cond_24

    const/4 v9, 0x4

    if-eq v3, v9, :cond_23

    const/4 v9, 0x5

    if-eq v3, v9, :cond_22

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_22
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v6, v2

    goto :goto_b

    :cond_23
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_b

    :cond_24
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v8, v2

    goto :goto_b

    :cond_25
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v7, v2

    goto :goto_b

    :cond_26
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v4, v2

    goto :goto_b

    :cond_27
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IIIZZ)V

    return-object v0

    :pswitch_37
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v8, v2

    move v9, v8

    move v10, v9

    move/from16 v17, v10

    move-wide v11, v3

    move-wide v13, v11

    move-object v15, v5

    move-object/from16 v16, v15

    move/from16 v18, v6

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_5

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_c

    :pswitch_38
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v18, v2

    goto :goto_c

    :pswitch_39
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v17, v2

    goto :goto_c

    :pswitch_3a
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_c

    :pswitch_3b
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_c

    :pswitch_3c
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v13, v2

    goto :goto_c

    :pswitch_3d
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_c

    :pswitch_3e
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v10, v2

    goto :goto_c

    :pswitch_3f
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v9, v2

    goto :goto_c

    :pswitch_40
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v8, v2

    goto :goto_c

    :cond_28
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/MethodInvocation;

    move-object v7, v0

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :pswitch_41
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_29

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_29
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_d

    :cond_2a
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/ConnectionResult;

    move-object v9, v2

    goto :goto_d

    :cond_2b
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object v8, v2

    goto :goto_d

    :cond_2c
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_d

    :cond_2d
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v6, v2

    goto :goto_d

    :cond_2e
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0

    :pswitch_42
    const-string v0, "parcel"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2f

    const/4 v1, 0x0

    goto :goto_e

    :cond_2f
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_e
    invoke-direct {v0, v2, v1}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    return-object v0

    :pswitch_43
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    check-cast v0, Landroid/media/MediaDescription;

    invoke-static {v0}, Landroid/support/v4/media/a;->g(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/support/v4/media/a;->i(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0}, Landroid/support/v4/media/a;->h(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0}, Landroid/support/v4/media/a;->c(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v0}, Landroid/support/v4/media/a;->e(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v0}, Landroid/support/v4/media/a;->f(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v0}, Landroid/support/v4/media/a;->d(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {v2}, Landroid/support/v4/media/session/p;->f(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_30
    const-string v9, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v2, :cond_31

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    goto :goto_f

    :cond_31
    move-object v10, v1

    :goto_f
    if-eqz v10, :cond_33

    const-string v11, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_32

    move-object v9, v1

    goto :goto_10

    :cond_32
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_33
    move-object v9, v2

    :goto_10
    if-eqz v10, :cond_34

    goto :goto_11

    :cond_34
    invoke-static {v0}, Landroid/support/v4/media/b;->a(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v1

    move-object v10, v1

    :goto_11
    new-instance v1, Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object v0, v1, Landroid/support/v4/media/MediaDescriptionCompat;->i:Landroid/media/MediaDescription;

    :cond_35
    return-object v1

    :pswitch_44
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move v3, v2

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_39

    const/4 v8, 0x2

    if-eq v7, v8, :cond_38

    const/4 v8, 0x3

    if-eq v7, v8, :cond_37

    const/4 v8, 0x4

    if-eq v7, v8, :cond_36

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_12

    :cond_36
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_37
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v4}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    goto :goto_12

    :cond_38
    invoke-static {v6, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_12

    :cond_39
    invoke-static {v6, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_12

    :cond_3a
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v0

    :pswitch_45
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move v11, v3

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_6

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_13

    :pswitch_46
    sget-object v3, Lcom/google/android/gms/phenotype/ExperimentTokens;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    goto :goto_13

    :pswitch_47
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v11

    goto :goto_13

    :pswitch_48
    invoke-static {v2, v1}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v10

    goto :goto_13

    :pswitch_49
    invoke-static {v2, v1}, LG5/f3;->e(ILandroid/os/Parcel;)[I

    move-result-object v9

    goto :goto_13

    :pswitch_4a
    invoke-static {v2, v1}, LG5/f3;->h(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :pswitch_4b
    invoke-static {v2, v1}, LG5/f3;->e(ILandroid/os/Parcel;)[I

    move-result-object v7

    goto :goto_13

    :pswitch_4c
    invoke-static {v2, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v6

    goto :goto_13

    :pswitch_4d
    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/clearcut/zzr;

    goto :goto_13

    :cond_3b
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/clearcut/zze;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/clearcut/zze;-><init>(Lcom/google/android/gms/internal/clearcut/zzr;[B[I[Ljava/lang/String;[I[[BZ[Lcom/google/android/gms/phenotype/ExperimentTokens;)V

    return-object v0

    :pswitch_4e
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_3f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3e

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3d

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3c

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_14

    :cond_3c
    invoke-static {v5, v1}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_14

    :cond_3d
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_14

    :cond_3e
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_14

    :cond_3f
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;-><init>(IILandroid/os/Bundle;)V

    return-object v0

    :pswitch_4f
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v3

    move v3, v6

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    packed-switch v9, :pswitch_data_7

    invoke-static {v8, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_15

    :pswitch_50
    invoke-static {v8, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v7

    goto :goto_15

    :pswitch_51
    invoke-static {v8, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v6

    goto :goto_15

    :pswitch_52
    invoke-static {v8, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v5

    goto :goto_15

    :pswitch_53
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_15

    :pswitch_54
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_15

    :pswitch_55
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_15

    :cond_40
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->a:I

    iput v3, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->b:I

    iput v4, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->c:I

    iput-boolean v5, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->d:Z

    iput-boolean v6, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->e:Z

    iput v7, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->f:F

    return-object v0

    :pswitch_56
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scs/ai/sdkcommon/image/localization/BoundaryInternal;->a(Landroid/os/Parcel;)Lcom/samsung/android/scs/ai/sdkcommon/image/localization/BoundaryInternal;

    move-result-object v0

    return-object v0

    :pswitch_57
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_43

    const/4 v7, 0x2

    if-eq v6, v7, :cond_42

    const/4 v7, 0x3

    if-eq v6, v7, :cond_41

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_16

    :cond_41
    sget-object v4, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/zav;

    goto :goto_16

    :cond_42
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_16

    :cond_43
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_16

    :cond_44
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/signin/internal/zak;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    return-object v0

    :pswitch_58
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_47

    const/4 v7, 0x2

    if-eq v6, v7, :cond_46

    const/4 v7, 0x3

    if-eq v6, v7, :cond_45

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_17

    :cond_45
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    goto :goto_17

    :cond_46
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_17

    :cond_47
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_17

    :cond_48
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zaa;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/signin/internal/zaa;-><init>(IILandroid/content/Intent;)V

    return-object v0

    :pswitch_59
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_49

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_18

    :cond_49
    invoke-static {v5, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v4

    goto :goto_18

    :cond_4a
    invoke-static {v5, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v3

    goto :goto_18

    :cond_4b
    sget-object v2, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v2}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_18

    :cond_4c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/ArrayList;ZZ)V

    return-object v0

    :pswitch_5a
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v8, v2

    move v9, v3

    move v10, v9

    move-wide v11, v4

    move-object v13, v6

    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_4d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_8

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_19

    :pswitch_5b
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    goto :goto_19

    :pswitch_5c
    sget-object v3, Lcom/google/android/gms/location/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/location/zzac;

    move-object v13, v2

    goto :goto_19

    :pswitch_5d
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v8, v2

    goto :goto_19

    :pswitch_5e
    invoke-static {v2, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_19

    :pswitch_5f
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v10, v2

    goto :goto_19

    :pswitch_60
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v9, v2

    goto :goto_19

    :cond_4d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationAvailability;

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/location/LocationAvailability;-><init>(IIIJ[Lcom/google/android/gms/location/zzac;)V

    return-object v0

    :pswitch_61
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4e

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1a

    :cond_4e
    sget-object v3, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/LocationSettingsStates;

    goto :goto_1a

    :cond_4f
    sget-object v2, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Status;

    goto :goto_1a

    :cond_50
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/LocationSettingsStates;)V

    return-object v0

    :pswitch_62
    const-class v0, LB/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "namespace"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "schemaType"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_55

    if-eqz v4, :cond_55

    if-eqz v5, :cond_55

    new-instance v1, LN/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LN/A;-><init>(I)V

    const-string v2, "parentTypes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_51

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v6

    goto :goto_1b

    :cond_51
    const/4 v2, 0x0

    move-object v12, v2

    :goto_1b
    const-string v2, "score"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v2, "creationTimestampMillis"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v2, "ttlMillis"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v13, 0x0

    cmp-long v2, v8, v13

    if-ltz v2, :cond_54

    const-string v2, "properties"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroidx/appsearch/safeparcel/PropertyParcel;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11, v13}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_52
    const-wide/16 v13, -0x1

    cmp-long v0, v6, v13

    if-nez v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :cond_53
    new-instance v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v1}, LN/f;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroidx/appsearch/safeparcel/GenericDocumentParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Document ttlMillis cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericDocumentParcel bundle doesn\'t have namespace, id, or schemaType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_62
        :pswitch_61
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_4f
        :pswitch_4e
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_37
        :pswitch_36
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_19
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_27
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LB/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzn;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialCreationOptions;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/github/mikephil/charting/data/Entry;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/material/badge/BadgeState$State;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/common/internal/MethodInvocation;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/common/ConnectionResult;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/clearcut/zze;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/vision/face/internal/client/zzf;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/samsung/android/scs/ai/sdkcommon/image/localization/BoundaryInternal;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zak;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zaa;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/location/LocationSettingsRequest;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/location/LocationAvailability;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/location/LocationSettingsResult;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

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
