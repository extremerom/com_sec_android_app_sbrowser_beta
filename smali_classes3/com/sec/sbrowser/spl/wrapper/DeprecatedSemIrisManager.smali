.class public Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetSemIrisManager:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.android.camera.iris.SemIrisManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSemIrisManager"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sGetSemIrisManager:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const v1, 0xf4256

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasDisabledIris"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasDisabledIrises"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    :goto_0
    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sGetSemIrisManager:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create DeprecatedSemIrisManager instance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DeprecatedSemIrisManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static hasDisabledIrises()Z
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getSemIrisManager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sGetSemIrisManager:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "hasDisabledIrises"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/DeprecatedSemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
