.class public abstract LY5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb5/g;

.field public static final b:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 18

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "Wearable.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, LY5/h;->a:Lb5/g;

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v0, "app_client"

    const-wide/16 v1, 0x4

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v0, "carrier_auth"

    const-wide/16 v1, 0x1

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear3_oem_companion"

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_consent"

    const-wide/16 v8, 0x2

    invoke-direct {v7, v0, v8, v9}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_consent_recordoptin"

    invoke-direct {v8, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_consent_supervised"

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v10, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_fast_pair_account_key_sync"

    invoke-direct {v10, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_get_related_configs"

    invoke-direct {v11, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v12, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_get_node_id"

    invoke-direct {v12, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v13, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_retry_connection"

    invoke-direct {v13, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v14, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_set_cloud_sync_setting_by_node"

    invoke-direct {v14, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v15, Lcom/google/android/gms/common/Feature;

    const-string v0, "wear_update_config"

    invoke-direct {v15, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "wear_update_connection_retry_strategy"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/common/Feature;

    move-object/from16 v16, v0

    const-string v0, "wearable_services"

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    move-object/from16 v17, v3

    filled-new-array/range {v4 .. v17}, [Lcom/google/android/gms/common/Feature;

    move-result-object v0

    sput-object v0, LY5/h;->b:[Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method public static a(Landroid/content/Context;)LN5/d;
    .locals 7

    new-instance v6, LN5/d;

    sget-object v5, Lb5/i;->c:Lb5/i;

    sget-object v4, LY5/g;->a:LY5/g;

    const/4 v2, 0x0

    sget-object v3, LY5/h;->a:Lb5/g;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    return-object v6
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "unknown status code: "

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "RECONNECTION_TIMED_OUT"

    return-object p0

    :pswitch_2
    const-string p0, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    return-object p0

    :pswitch_3
    const-string p0, "CONNECTION_SUSPENDED_DURING_CALL"

    return-object p0

    :pswitch_4
    const-string p0, "REMOTE_EXCEPTION"

    return-object p0

    :pswitch_5
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :pswitch_6
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_7
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_8
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_9
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_a
    const-string p0, "ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_c
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_d
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_e
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_f
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_10
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_11
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_12
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_13
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_14
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method
