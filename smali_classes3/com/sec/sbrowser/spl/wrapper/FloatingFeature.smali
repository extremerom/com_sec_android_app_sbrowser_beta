.class public Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetInteger:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "getEnableStatus"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "getBoolean"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v2, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getInteger"

    invoke-direct {v1, v0, v5, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInteger:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-string v2, "getString"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create FloatingFeature instatnce: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "FloatingFeatureWrapper"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInteger:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getEnableStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getBoolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getInteger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetInteger:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "getString"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
