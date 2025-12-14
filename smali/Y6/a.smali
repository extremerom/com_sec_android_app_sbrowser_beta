.class public abstract LY6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x9

    new-instance v1, LW6/d;

    const-class v2, LV6/d;

    invoke-direct {v1, v2, v0}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v1}, [LW6/d;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    aget-object v5, v1, v4

    iget-object v6, v5, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, LW6/d;->a:Ljava/lang/Class;

    if-nez v6, :cond_0

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v1, v4

    iget-object v1, v1, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    sget v1, Lc7/P0;->CONFIG_NAME_FIELD_NUMBER:I

    :try_start_0
    new-instance v1, LW6/f;

    new-instance v3, LW6/d;

    invoke-direct {v3, v2, v0}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v0

    const-class v2, Lc7/O;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v0, v3}, LW6/f;-><init>(Ljava/lang/Class;[LW6/d;I)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, LV6/n;->f(LJ2/i0;Z)V

    new-instance v0, LY6/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LV6/n;->g(LV6/l;)V
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

    invoke-static {v7, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
