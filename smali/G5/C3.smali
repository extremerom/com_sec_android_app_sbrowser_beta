.class public abstract LG5/C3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/b;
    .locals 2

    new-instance v0, LJ7/a;

    invoke-direct {v0, p0, p1}, LJ7/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, LJ7/a;

    invoke-static {p0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object p0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/firebase/components/a;->e:I

    new-instance p1, LAa/a;

    const/16 v1, 0x1a

    invoke-direct {p1, v1, v0}, LAa/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {p0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lf1/g;)Lcom/google/firebase/components/b;
    .locals 3

    const-class v0, LJ7/a;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/a;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/firebase/components/a;->e:I

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/lang/Class;)Lcom/google/firebase/components/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/a;->a(Lcom/google/firebase/components/k;)V

    new-instance v1, LHa/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/firebase/components/a;->f:Lcom/google/firebase/components/d;

    invoke-virtual {v0}, Lcom/google/firebase/components/a;->b()Lcom/google/firebase/components/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lhc/f;)Lhc/c;
    .locals 4

    const-string v0, "shortName"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/c;

    new-instance v1, Lhc/d;

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asString(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lhc/c;->c:Lhc/c;

    iget-object v3, v3, Lhc/c;->a:Lhc/d;

    invoke-direct {v1, v2, v3, p0}, Lhc/d;-><init>(Ljava/lang/String;Lhc/d;Lhc/f;)V

    invoke-direct {v0, v1}, Lhc/c;-><init>(Lhc/d;)V

    return-object v0
.end method

.method public static d(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, LY5/h;->b(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const-string v1, "ACCOUNT_KEY_CREATION_FAILED"

    goto :goto_0

    :pswitch_1
    const-string v1, "UNSUPPORTED_BY_TARGET"

    goto :goto_0

    :pswitch_2
    const-string v1, "WIFI_CREDENTIAL_SYNC_NO_CREDENTIAL_FETCHED"

    goto :goto_0

    :pswitch_3
    const-string v1, "UNKNOWN_CAPABILITY"

    goto :goto_0

    :pswitch_4
    const-string v1, "DUPLICATE_CAPABILITY"

    goto :goto_0

    :pswitch_5
    const-string v1, "ASSET_UNAVAILABLE"

    goto :goto_0

    :pswitch_6
    const-string v1, "INVALID_TARGET_NODE"

    goto :goto_0

    :pswitch_7
    const-string v1, "DATA_ITEM_TOO_LARGE"

    goto :goto_0

    :pswitch_8
    const-string v1, "UNKNOWN_LISTENER"

    goto :goto_0

    :pswitch_9
    const-string v1, "DUPLICATE_LISTENER"

    goto :goto_0

    :pswitch_a
    const-string v1, "TARGET_NODE_NOT_CONNECTED"

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0xfa0
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
