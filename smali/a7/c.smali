.class public abstract La7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LW6/d;

    const-class v1, LV6/i;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v0, v2

    iget-object v4, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v3, LW6/d;->a:Ljava/lang/Class;

    if-nez v4, :cond_0

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sget v0, Lc7/P0;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    invoke-static {}, La7/c;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()V
    .locals 5

    new-instance v0, LW6/f;

    invoke-direct {v0}, LW6/f;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LW6/f;

    new-instance v2, LW6/d;

    const-class v3, LV6/i;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v2}, [LW6/d;

    move-result-object v2

    const-class v3, Lc7/c;

    const/16 v4, 0x9

    invoke-direct {v0, v3, v2, v4}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    invoke-static {v0, v1}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, La7/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LV6/n;->g(LV6/l;)V

    return-void
.end method
