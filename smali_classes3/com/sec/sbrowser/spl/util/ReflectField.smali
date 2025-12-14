.class public Lcom/sec/sbrowser/spl/util/ReflectField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/util/ReflectField$O;,
        Lcom/sec/sbrowser/spl/util/ReflectField$S;,
        Lcom/sec/sbrowser/spl/util/ReflectField$L;,
        Lcom/sec/sbrowser/spl/util/ReflectField$I;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/sbrowser/spl/util/ReflectField;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/sbrowser/spl/util/ReflectField;->mField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/sec/sbrowser/spl/util/ReflectField;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/sbrowser/spl/util/ReflectField;->mField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static checkFinal(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->checkFinal(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->getValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public static getString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->checkFinal(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->getValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private static getValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->instance()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method private static setValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->instance()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method


# virtual methods
.method public get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/sbrowser/spl/util/ReflectBase;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-static {p1, p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->getValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public reflectSucceeded()Z
    .locals 0
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectField;->mField:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public set(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/sbrowser/spl/util/ReflectBase;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-static {p1, p0, p2}, Lcom/sec/sbrowser/spl/util/ReflectField;->setValue(Lcom/sec/sbrowser/spl/util/ReflectBase;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method
