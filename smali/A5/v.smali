.class public final LA5/v;
.super Lb5/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA5/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lb5/k;Lb5/l;)Lb5/e;
    .locals 15

    move-object v0, p0

    iget v1, v0, LA5/v;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p6}, Lb5/a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lb5/k;Lb5/l;)Lb5/e;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p4

    check-cast v0, LY5/g;

    new-instance v0, LZ5/A;

    move-object/from16 v4, p5

    check-cast v4, Lc5/y;

    move-object/from16 v5, p6

    check-cast v5, Lc5/y;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LZ5/A;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc5/y;Lc5/y;Lcom/google/android/gms/common/internal/h;)V

    return-object v0

    :pswitch_2
    new-instance v7, Lcom/google/android/gms/internal/clearcut/z0;

    const/16 v3, 0x28

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object v7

    :pswitch_3
    move-object/from16 v12, p4

    check-cast v12, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance v0, LX4/d;

    move-object/from16 v13, p5

    check-cast v13, Lc5/y;

    move-object/from16 v14, p6

    check-cast v14, Lc5/y;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v8 .. v14}, LX4/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lc5/y;Lc5/y;)V

    return-object v0

    :pswitch_4
    move-object/from16 v5, p4

    check-cast v5, LU4/a;

    new-instance v0, Lv5/c;

    move-object/from16 v6, p5

    check-cast v6, Lc5/y;

    move-object/from16 v7, p6

    check-cast v7, Lc5/y;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lv5/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;LU4/a;Lc5/y;Lc5/y;)V

    return-object v0

    :pswitch_5
    invoke-static/range {p4 .. p4}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :pswitch_6
    move-object/from16 v0, p4

    check-cast v0, LO5/a;

    new-instance v7, LP5/a;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, p3

    iget-object v0, v5, Lcom/google/android/gms/common/internal/h;->f:Ljava/lang/Integer;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, LP5/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Landroid/os/Bundle;Lb5/k;Lb5/l;)V

    return-object v7

    :pswitch_7
    move-object/from16 v5, p3

    move-object/from16 v0, p4

    check-cast v0, Lb5/b;

    new-instance v6, LH5/b;

    move-object/from16 v3, p5

    check-cast v3, Lc5/y;

    move-object/from16 v4, p6

    check-cast v4, Lc5/y;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, LH5/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc5/y;Lc5/y;Lcom/google/android/gms/common/internal/h;)V

    return-object v6

    :pswitch_8
    move-object/from16 v5, p3

    move-object/from16 v0, p4

    check-cast v0, Lb5/b;

    new-instance v7, LA5/w;

    const/16 v3, 0x95

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lc5/g;Lc5/p;)Lb5/e;
    .locals 7

    iget v0, p0, LA5/v;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super/range {p0 .. p6}, Lb5/a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lc5/g;Lc5/p;)Lb5/e;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p4, Lb5/b;

    new-instance p0, Lw5/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lw5/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object p0

    :sswitch_1
    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/common/internal/q;

    new-instance p0, Lg5/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lg5/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/internal/q;Lc5/g;Lc5/p;)V

    return-object p0

    :sswitch_2
    check-cast p4, Lb5/b;

    new-instance p0, Lcom/google/android/gms/internal/auth/A0;

    const/16 v3, 0xe0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object p0

    :sswitch_3
    check-cast p4, Lb5/b;

    new-instance p0, Lw5/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lw5/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object p0

    :sswitch_4
    check-cast p4, Lb5/b;

    new-instance p0, LD5/k;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LD5/k;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Lc5/g;Lc5/p;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
