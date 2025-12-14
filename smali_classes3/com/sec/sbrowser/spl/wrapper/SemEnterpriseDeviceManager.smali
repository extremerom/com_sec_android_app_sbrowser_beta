.class public Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetApplicationRestrictions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.android.knox.SemEnterpriseDeviceManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getApplicationRestrictions"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetApplicationRestrictions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getApplicationRestrictions"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetApplicationRestrictions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEnterpriseDeviceManager;->sGetApplicationRestrictions:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method
