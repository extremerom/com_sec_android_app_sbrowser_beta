.class public final Lcom/google/android/gms/internal/auth/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/y0;


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/n;

.field public static final b:Lcom/google/android/gms/internal/auth/n;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/gms/internal/auth/m;->a:LN/f;

    const-class v1, Lcom/google/android/gms/internal/auth/m;

    monitor-enter v1

    :try_start_0
    const-string v2, "com.google.android.gms.auth_account"

    sget-object v3, Lcom/google/android/gms/internal/auth/m;->a:LN/f;

    invoke-virtual {v3, v2}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://com.google.android.gms.phenotype/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    new-instance v1, Lcom/google/android/gms/internal/auth/U;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/auth/U;-><init>(Landroid/net/Uri;Z)V

    const-string v3, "getTokenRefactor__account_data_service_sample_percentage"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/auth/n;

    invoke-direct {v7, v1, v3, v6, v0}, Lcom/google/android/gms/internal/auth/n;-><init>(Lcom/google/android/gms/internal/auth/U;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string v3, "getTokenRefactor__account_data_service_tokenAPI_usable"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    const-string v3, "getTokenRefactor__account_manager_timeout_seconds"

    const-wide/16 v6, 0x14

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/gms/internal/auth/U;->a(JLjava/lang/String;)V

    const-string v3, "getTokenRefactor__android_id_shift"

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9, v3}, Lcom/google/android/gms/internal/auth/U;->a(JLjava/lang/String;)V

    const-string v3, "getTokenRefactor__authenticator_logic_improved"

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    const/16 v3, 0x5a

    :try_start_1
    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/w0;->f([B)Lcom/google/android/gms/internal/auth/w0;

    move-result-object v3

    new-instance v9, Lcom/google/android/gms/internal/auth/n;

    const-string v10, "getTokenRefactor__blocked_packages"

    const/4 v11, 0x3

    invoke-direct {v9, v1, v10, v3, v11}, Lcom/google/android/gms/internal/auth/n;-><init>(Lcom/google/android/gms/internal/auth/U;Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v9, Lcom/google/android/gms/internal/auth/z0;->a:Lcom/google/android/gms/internal/auth/n;
    :try_end_1
    .catch Lcom/google/android/gms/internal/auth/L; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "getTokenRefactor__chimera_get_token_evolved"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    const-string v3, "getTokenRefactor__clear_token_timeout_seconds"

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/gms/internal/auth/U;->a(JLjava/lang/String;)V

    const-string v3, "getTokenRefactor__default_task_timeout_seconds"

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/gms/internal/auth/U;->a(JLjava/lang/String;)V

    const-string v3, "getTokenRefactor__gaul_accounts_api_evolved"

    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    const-string v3, "getTokenRefactor__gaul_token_api_evolved"

    invoke-virtual {v1, v3, v8}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/auth/z0;->b:Lcom/google/android/gms/internal/auth/n;

    const-string v3, "getTokenRefactor__get_token_timeout_seconds"

    const-wide/16 v6, 0x78

    invoke-virtual {v1, v6, v7, v3}, Lcom/google/android/gms/internal/auth/U;->a(JLjava/lang/String;)V

    const-string v3, "getTokenRefactor__gms_account_authenticator_evolved"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/auth/U;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/n;

    const-string v2, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/auth/n;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/android/gms/internal/auth/n;-><init>(Lcom/google/android/gms/internal/auth/U;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Could not parse proto flag \"getTokenRefactor__blocked_packages\""

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    nop

    :array_0
    .array-data 1
        0xat
        0x13t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x76t
        0x65t
        0x6et
        0x64t
        0x69t
        0x6et
        0x67t
        0xat
        0x20t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x6dt
        0x65t
        0x65t
        0x74t
        0x69t
        0x6et
        0x67t
        0x73t
        0xat
        0x21t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x6dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x69t
        0x6et
        0x67t
    .end array-data
.end method
