.class public Lcom/sec/sbrowser/spl/wrapper/CscFeature;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetBooleanWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetEnableStatusWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sGetStringWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sHasSemCscFeature:Z

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

.field private static sTestOperator:Ljava/lang/String;

.field private static sUATestFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.samsung.android.feature.SemCscFeature"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sHasSemCscFeature:Z

    const-string v0, "com.sec.android.app.CscFeature"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sHasSemCscFeature:Z

    :goto_0
    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getBoolean"

    invoke-direct {v2, v0, v5, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, v0, v5, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBooleanWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getEnableStatus"

    invoke-direct {v2, v0, v6, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v0, v6, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatusWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getString"

    invoke-direct {v2, v0, v5, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v0, v5, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetStringWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getInstance"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    sget-object v3, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/CscFeature;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create sInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "CscFeatureWrapper"

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

    sget-boolean v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sHasSemCscFeature:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getEnableStatus(Ljava/lang/String;Z)Z
    .locals 3

    sget-boolean v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sHasSemCscFeature:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBooleanWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatusWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sUATestFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "CscFeature_Web_SetUserAgent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sTestOperator:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sUATestFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "CscFeature_Web_SetUserAgent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sTestOperator:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetStringWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sInstance:Lcom/sec/sbrowser/spl/wrapper/CscFeature;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getString"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetString:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getStringWithDefault"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetStringWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getEnableStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "getEnableStatusWithDefault"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetEnableStatusWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "getBoolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBoolean:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "getBooleanStatusWithDefault"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sGetBooleanWithDefault:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static setTestOperator(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sTestOperator:Ljava/lang/String;

    return-void
.end method

.method public static setUATestFlag(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p0, Lcom/sec/sbrowser/spl/wrapper/CscFeature;->sUATestFlag:Z

    return-void
.end method
