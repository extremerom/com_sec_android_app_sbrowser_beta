.class public Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sEDMConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

.field private static sGetBrowserPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetFirewallPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sEDMConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getBrowserPolicy"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetBrowserPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getFirewallPolicy"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetFirewallPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sEDMConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "EnterpriseDeviceManager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sEDMConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getBrowserPolicy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetBrowserPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getFirewallPolicy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetFirewallPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBrowserPolicy()Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetBrowserPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFirewallPolicy()Lcom/sec/sbrowser/spl/wrapper/FirewallPolicy;
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/FirewallPolicy;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/EnterpriseDeviceManager;->sGetFirewallPolicy:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/FirewallPolicy;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
