.class public abstract LW6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, LW6/d;

    const-class v3, LV6/a;

    invoke-direct {v2, v3, v1}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v2}, [LW6/d;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    :goto_0
    const-string v6, "KeyTypeManager constructed with duplicate factories for primitive "

    if-ge v5, v0, :cond_1

    aget-object v7, v2, v5

    iget-object v8, v7, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v7, LW6/d;->a:Ljava/lang/Class;

    if-nez v8, :cond_0

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v0, v2, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x3

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_8

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x4

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_7

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_6

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x6

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_5

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x7

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_4

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/4 v2, 0x5

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v4, v0, v1

    iget-object v5, v4, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, v4, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_3

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, LW6/d;

    const/16 v2, 0x8

    invoke-direct {v0, v3, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v3, v0, v1

    iget-object v4, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v3, LW6/d;->a:Ljava/lang/Class;

    if-nez v4, :cond_2

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sget v0, Lc7/P0;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    invoke-static {}, LW6/a;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()V
    .locals 6

    invoke-static {}, La7/c;->a()V

    new-instance v0, LW6/f;

    new-instance v1, LW6/d;

    const-class v2, LV6/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v1}, [LW6/d;

    move-result-object v1

    const-class v3, Lc7/k;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/w;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/D;

    const/4 v5, 0x2

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/J;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    :catch_0
    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/V;

    const/4 v5, 0x4

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/F0;

    const/4 v5, 0x5

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    const-class v4, Lc7/K0;

    const/4 v5, 0x6

    invoke-direct {v0, v4, v3, v5}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v3, LW6/d;

    const/16 v4, 0x8

    invoke-direct {v3, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v2

    const-class v3, Lc7/S0;

    const/4 v4, 0x7

    invoke-direct {v0, v3, v2, v4}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LV6/n;->g(LV6/l;)V

    return-void
.end method
