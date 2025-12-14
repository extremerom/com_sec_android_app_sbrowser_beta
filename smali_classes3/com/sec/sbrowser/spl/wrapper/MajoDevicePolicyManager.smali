.class public Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetAllowBrowser:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.admin.DevicePolicyManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const v1, 0xf424e

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    const-class v2, Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "semGetAllowBrowser"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->sGetAllowBrowser:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "getAllowBrowser"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->sGetAllowBrowser:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;
    .locals 2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getAllowBrowser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->sGetAllowBrowser:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAllowBrowser(Landroid/content/ComponentName;)Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->sGetAllowBrowser:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
