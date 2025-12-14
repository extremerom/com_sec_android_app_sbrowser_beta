.class public Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_USER_CURRENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_USER_NULL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_USER_OWNER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemGetMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/UserHandle;

    const-string v4, "myUserId"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v2, "semGetMyUserId"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sSemGetMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_USER_CURRENT"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->SEM_USER_CURRENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_USER_NULL"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->SEM_USER_NULL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_USER_OWNER"

    invoke-direct {v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->SEM_USER_OWNER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public static myUserId()I
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sSemGetMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "myUserId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semGetMyUserId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoUserHandle;->sSemGetMyUserId:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
