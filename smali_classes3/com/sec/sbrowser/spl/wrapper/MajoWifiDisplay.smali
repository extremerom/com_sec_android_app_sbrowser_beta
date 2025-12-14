.class public Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetDeviceAddress:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sGetDeviceName:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sIsAvailable:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.display.SemWifiDisplay"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.display.WifiDisplay"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-string v2, "getDeviceName"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceName:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-string v2, "getDeviceAddress"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceAddress:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "isAvailable"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sIsAvailable:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;
    .locals 9
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    const-string v1, "android.hardware.display.WifiDisplay"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    move-object v5, v7

    move-object v6, v7

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p6

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getDeviceName"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceName:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getDeviceAddress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceAddress:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "isAvailable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sIsAvailable:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceAddress:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sGetDeviceName:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->sIsAvailable:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
