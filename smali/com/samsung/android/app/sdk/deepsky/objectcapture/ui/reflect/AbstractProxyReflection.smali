.class public abstract Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection$InvocationHooker;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ObjectCaptureReflection"


# instance fields
.field protected mBaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected mClassName:Ljava/lang/String;

.field protected mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "ObjectCaptureReflection"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Unable to instantiate class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "There\'s no "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection$InvocationHooker;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;)V

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    new-instance v2, Lo7/b;

    invoke-direct {v2, v1}, Lo7/b;-><init>(Ljava/lang/Class;)V

    iput-object p2, v2, Lo7/b;->d:[Ljava/lang/Class;

    iput-object p3, v2, Lo7/b;->e:[Ljava/lang/Object;

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection$InvocationHooker;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;)V

    iput-object p2, v2, Lo7/b;->c:Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {v2}, Lo7/b;->a()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Occur IOException during build proxy instance : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getClassType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getProxyInstance()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/reflect/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object p0, Lo7/b;->g:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p2}, Lo7/b;->d(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    const-string p1, "ObjectCaptureReflection"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
