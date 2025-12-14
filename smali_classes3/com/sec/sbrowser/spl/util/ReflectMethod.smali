.class public Lcom/sec/sbrowser/spl/util/ReflectMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/util/ReflectMethod$O;,
        Lcom/sec/sbrowser/spl/util/ReflectMethod$S;,
        Lcom/sec/sbrowser/spl/util/ReflectMethod$B;,
        Lcom/sec/sbrowser/spl/util/ReflectMethod$L;,
        Lcom/sec/sbrowser/spl/util/ReflectMethod$I;,
        Lcom/sec/sbrowser/spl/util/ReflectMethod$V;
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
.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/sbrowser/spl/util/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/sbrowser/spl/util/ReflectBase;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->instance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    const-string p1, "mMethod is null or GED device"

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reflectSucceeded()Z
    .locals 0
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
