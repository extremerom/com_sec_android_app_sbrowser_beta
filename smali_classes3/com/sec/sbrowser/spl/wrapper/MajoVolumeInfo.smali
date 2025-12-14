.class public Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final STATE_EJECTING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final STATE_MOUNTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sGetDisk:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetEnvironmentForState:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sGetInternalPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.os.storage.VolumeInfo"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getState"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getEnvironmentForState"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetEnvironmentForState:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getDisk"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetDisk:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getPath"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getInternalPath"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetInternalPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "STATE_EJECTING"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->STATE_EJECTING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "STATE_MOUNTED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->STATE_MOUNTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getVolumeInfo(Ljava/lang/Object;)Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;
    .locals 1

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getEnvironmentForState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetEnvironmentForState:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getDisk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetDisk:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getPath"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "getInternalPath"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetInternalPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDisk()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetDisk:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEnvironmentForState(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetEnvironmentForState:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/Object;
    .locals 2

    const v0, 0xf425d

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0xf4254

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetInternalPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetPath:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoVolumeInfo;->sGetState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
