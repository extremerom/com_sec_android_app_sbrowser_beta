.class public final LB/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v10, p0

    iget v10, v10, LB/c;->a:I

    packed-switch v10, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_0

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzp;

    invoke-direct {v0, v9}, Lcom/google/android/gms/fido/fido2/api/common/zzp;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    move-object v3, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v8, :cond_4

    if-eq v7, v5, :cond_3

    if-eq v7, v4, :cond_2

    invoke-static {v6, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    invoke-static {v6, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v3

    goto :goto_1

    :cond_3
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v7}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    goto :goto_1

    :cond_5
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

    invoke-direct {v0, v9, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_7

    if-eq v3, v5, :cond_6

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_6
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_7
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_2

    :cond_8
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_a

    if-eq v4, v8, :cond_9

    invoke-static {v3, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_9
    invoke-static {v3, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-static {v3, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v9

    goto :goto_3

    :cond_b
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zze;

    invoke-direct {v0, v9, v2}, Lcom/google/android/gms/fido/fido2/api/common/zze;-><init>([B[B)V

    return-object v0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object v0
    :try_end_0
    .catch Lr5/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzat;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/zzat;

    move-result-object v0
    :try_end_1
    .catch Lr5/k; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :try_start_2
    const-string v0, ""

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_c
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    move-result-object v0
    :try_end_2
    .catch Lr5/i; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_6
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    move-object v3, v2

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v8, :cond_f

    if-eq v7, v5, :cond_e

    if-eq v7, v4, :cond_d

    invoke-static {v6, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_d
    invoke-static {v6, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    invoke-static {v6, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_f
    invoke-static {v6, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_10
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;

    invoke-direct {v0, v9, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_7
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    move-object v3, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    if-eq v7, v8, :cond_13

    if-eq v7, v5, :cond_12

    if-eq v7, v4, :cond_11

    invoke-static {v6, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_11
    sget-object v3, Lcom/google/android/gms/fido/common/Transport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v6, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_7

    :cond_12
    invoke-static {v6, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_7

    :cond_13
    invoke-static {v6, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_14
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;

    invoke-direct {v0, v9, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;-><init>(Ljava/lang/String;[BLjava/util/List;)V

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_15

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_8

    :cond_15
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_16
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzad;

    invoke-direct {v0, v9}, Lcom/google/android/gms/fido/fido2/api/common/zzad;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->a(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    move-result-object v0
    :try_end_3
    .catch Lr5/b; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_a
    new-instance v1, Landroid/support/v4/os/ResultReceiver;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget v2, Lf/c;->b:I

    if-nez v0, :cond_17

    goto :goto_9

    :cond_17
    sget-object v2, Lf/b;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_18

    instance-of v3, v2, Lf/b;

    if-eqz v3, :cond_18

    move-object v9, v2

    check-cast v9, Lf/b;

    goto :goto_9

    :cond_18
    new-instance v9, Lf/a;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lf/a;->a:Landroid/os/IBinder;

    :goto_9
    iput-object v9, v1, Landroid/support/v4/os/ResultReceiver;->a:Lf/b;

    return-object v1

    :pswitch_b
    new-instance v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-direct {v1, v7, v0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;-><init>(ILandroid/os/Parcel;)V

    return-object v1

    :pswitch_c
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_19

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_19
    invoke-static {v2, v0}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v2

    move-object v9, v2

    goto :goto_a

    :cond_1a
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {v0, v9}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :pswitch_d
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    move-object v3, v2

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    if-eq v11, v6, :cond_1e

    if-eq v11, v8, :cond_1d

    if-eq v11, v5, :cond_1c

    if-eq v11, v4, :cond_1b

    invoke-static {v10, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_1b
    sget-object v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v10, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    goto :goto_b

    :cond_1c
    invoke-static {v10, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_b

    :cond_1d
    sget-object v2, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v10, v2}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/Feature;

    goto :goto_b

    :cond_1e
    invoke-static {v10, v0}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v9

    goto :goto_b

    :cond_1f
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/google/android/gms/common/internal/zzj;->a:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/google/android/gms/common/internal/zzj;->b:[Lcom/google/android/gms/common/Feature;

    iput v7, v0, Lcom/google/android/gms/common/internal/zzj;->c:I

    iput-object v3, v0, Lcom/google/android/gms/common/internal/zzj;->d:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object v0

    :pswitch_e
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move v2, v7

    move-object v3, v9

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    if-eq v11, v6, :cond_23

    if-eq v11, v8, :cond_22

    if-eq v11, v5, :cond_21

    if-eq v11, v4, :cond_20

    invoke-static {v10, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_c

    :cond_20
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v10, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    goto :goto_c

    :cond_21
    invoke-static {v10, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_c

    :cond_22
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v10, v9}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/accounts/Account;

    goto :goto_c

    :cond_23
    invoke-static {v10, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_c

    :cond_24
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zat;

    invoke-direct {v0, v7, v9, v2, v3}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-object v0

    :pswitch_f
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v6, :cond_26

    if-eq v3, v8, :cond_25

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_25
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_d

    :cond_26
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v7, v2

    goto :goto_d

    :cond_27
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/internal/ClientIdentity;

    invoke-direct {v0, v7, v9}, Lcom/google/android/gms/common/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_10
    const-string v1, "inParcel"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/activity/result/IntentSenderRequest;

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v2, Landroid/content/IntentSender;

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v1

    :pswitch_11
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_12
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v1, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v10, v4

    if-eq v10, v6, :cond_2a

    if-eq v10, v8, :cond_29

    if-eq v10, v5, :cond_28

    invoke-static {v4, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_e

    :cond_28
    invoke-static {v4, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v2

    goto :goto_e

    :cond_29
    invoke-static {v4, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v4

    move v7, v4

    goto :goto_e

    :cond_2a
    invoke-static {v4, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_e

    :cond_2b
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/common/Feature;

    invoke-direct {v0, v9, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object v0

    :pswitch_13
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move v13, v7

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v18, v16

    move/from16 v21, v18

    move-object v11, v9

    move-object v12, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v17

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_f

    :pswitch_14
    invoke-static {v2, v0}, LG5/f3;->i(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_f

    :pswitch_15
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move/from16 v21, v2

    goto :goto_f

    :pswitch_16
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_f

    :pswitch_17
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_f

    :pswitch_18
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move/from16 v18, v2

    goto :goto_f

    :pswitch_19
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_f

    :pswitch_1a
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move/from16 v16, v2

    goto :goto_f

    :pswitch_1b
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v15, v2

    goto :goto_f

    :pswitch_1c
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v14, v2

    goto :goto_f

    :pswitch_1d
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v13, v2

    goto :goto_f

    :pswitch_1e
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_f

    :pswitch_1f
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_f

    :cond_2c
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move-object v10, v0

    invoke-direct/range {v10 .. v22}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    return-object v0

    :pswitch_20
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v1, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v8, :cond_2e

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2d

    invoke-static {v3, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_10

    :cond_2d
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    goto :goto_10

    :cond_2e
    invoke-static {v3, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_10

    :cond_2f
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-direct {v0, v9, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0

    :pswitch_21
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v2

    move v3, v1

    move v9, v7

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v2, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    if-eq v11, v6, :cond_33

    if-eq v11, v8, :cond_32

    if-eq v11, v5, :cond_31

    if-eq v11, v4, :cond_30

    invoke-static {v10, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_11

    :cond_30
    invoke-static {v10, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v9

    goto :goto_11

    :cond_31
    invoke-static {v10, v0}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v3

    goto :goto_11

    :cond_32
    invoke-static {v10, v0}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v1

    goto :goto_11

    :cond_33
    invoke-static {v10, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_11

    :cond_34
    invoke-static {v2, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    invoke-direct {v0, v7, v1, v3, v9}, Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;-><init>(IFFI)V

    return-object v0

    :pswitch_22
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    if-eq v3, v8, :cond_36

    if-eq v3, v5, :cond_35

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_12

    :cond_35
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_12

    :cond_36
    sget-object v3, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/graphics/PointF;

    goto :goto_12

    :cond_37
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zza;

    invoke-direct {v0, v9, v7}, Lcom/google/android/gms/vision/face/internal/client/zza;-><init>([Landroid/graphics/PointF;I)V

    return-object v0

    :pswitch_23
    new-instance v1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->a(Landroid/os/Parcel;)V

    return-object v1

    :pswitch_24
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v2, v9

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v1, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    if-eq v4, v6, :cond_39

    if-eq v4, v8, :cond_38

    invoke-static {v3, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_13

    :cond_38
    invoke-static {v3, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_39
    invoke-static {v3, v0}, LG5/f3;->i(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v9, v3

    goto :goto_13

    :cond_3a
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/signin/internal/zag;

    invoke-direct {v0, v2, v9}, Lcom/google/android/gms/signin/internal/zag;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_25
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_14

    :pswitch_26
    invoke-static {v2, v0}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v18

    goto :goto_14

    :pswitch_27
    invoke-static {v2, v0}, LG5/f3;->e(ILandroid/os/Parcel;)[I

    move-result-object v17

    goto :goto_14

    :pswitch_28
    invoke-static {v2, v0}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v16

    goto :goto_14

    :pswitch_29
    invoke-static {v2, v0}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v15

    goto :goto_14

    :pswitch_2a
    invoke-static {v2, v0}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v14

    goto :goto_14

    :pswitch_2b
    invoke-static {v2, v0}, LG5/f3;->d(ILandroid/os/Parcel;)[[B

    move-result-object v13

    goto :goto_14

    :pswitch_2c
    invoke-static {v2, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v12

    goto :goto_14

    :pswitch_2d
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_14

    :cond_3b
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/phenotype/ExperimentTokens;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/google/android/gms/phenotype/ExperimentTokens;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    return-object v0

    :pswitch_2e
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v4

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    const/16 v6, 0x66

    const-wide/32 v10, 0x36ee80

    const-wide/32 v12, 0x927c0

    const-wide/16 v14, 0x0

    const-wide v16, 0x7fffffffffffffffL

    const v8, 0x7fffffff

    move/from16 v31, v1

    move-wide/from16 v33, v2

    move-object/from16 v39, v5

    move/from16 v19, v6

    move/from16 v32, v7

    move/from16 v35, v32

    move/from16 v36, v35

    move/from16 v38, v36

    move/from16 v30, v8

    move-object/from16 v37, v9

    move-object/from16 v40, v37

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    move-wide/from16 v28, v26

    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v4, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    packed-switch v2, :pswitch_data_3

    :pswitch_2f
    invoke-static {v1, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_15

    :pswitch_30
    sget-object v2, Lcom/google/android/gms/internal/location/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/location/zzd;

    move-object/from16 v40, v1

    goto :goto_15

    :pswitch_31
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    move-object/from16 v39, v1

    goto :goto_15

    :pswitch_32
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move/from16 v38, v1

    goto :goto_15

    :pswitch_33
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v37, v1

    goto :goto_15

    :pswitch_34
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move/from16 v36, v1

    goto :goto_15

    :pswitch_35
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move/from16 v35, v1

    goto :goto_15

    :pswitch_36
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v33, v1

    goto :goto_15

    :pswitch_37
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v28, v1

    goto :goto_15

    :pswitch_38
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move/from16 v32, v1

    goto :goto_15

    :pswitch_39
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v24, v1

    goto :goto_15

    :pswitch_3a
    invoke-static {v1, v0}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v1

    move/from16 v31, v1

    goto :goto_15

    :pswitch_3b
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move/from16 v30, v1

    goto :goto_15

    :pswitch_3c
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v26, v1

    goto :goto_15

    :pswitch_3d
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v22, v1

    goto :goto_15

    :pswitch_3e
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v1

    move-wide/from16 v20, v1

    goto/16 :goto_15

    :pswitch_3f
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move/from16 v19, v1

    goto/16 :goto_15

    :cond_3c
    invoke-static {v4, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v40}, Lcom/google/android/gms/location/LocationRequest;-><init>(IJJJJJIFZJIILjava/lang/String;ZLandroid/os/WorkSource;Lcom/google/android/gms/internal/location/zzd;)V

    return-object v0

    :pswitch_40
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_16

    :pswitch_41
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v14, v2

    goto :goto_16

    :pswitch_42
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v13, v2

    goto :goto_16

    :pswitch_43
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v12, v2

    goto :goto_16

    :pswitch_44
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v11, v2

    goto :goto_16

    :pswitch_45
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v10, v2

    goto :goto_16

    :pswitch_46
    invoke-static {v2, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    move v9, v2

    goto :goto_16

    :cond_3d
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsStates;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/location/LocationSettingsStates;-><init>(ZZZZZZ)V

    return-object v0

    :pswitch_47
    const-class v1, LB/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "sha256Certificate"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

    invoke-direct {v2, v1, v0}, Landroidx/appsearch/safeparcel/PackageIdentifierParcel;-><init>(Ljava/lang/String;[B)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_40
        :pswitch_2e
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_2f
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LB/c;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzp;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/BrowserPublicKeyCredentialRequestOptions;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zze;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzat;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzad;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroid/support/v4/os/ResultReceiver;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/firebase/messaging/RemoteMessage;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zzj;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/common/internal/zat;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/common/internal/ClientIdentity;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/activity/result/IntentSenderRequest;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/common/Feature;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/vision/face/internal/client/zza;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/signin/internal/zag;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/location/LocationRequest;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/location/LocationSettingsStates;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/appsearch/safeparcel/PackageIdentifierParcel;

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
