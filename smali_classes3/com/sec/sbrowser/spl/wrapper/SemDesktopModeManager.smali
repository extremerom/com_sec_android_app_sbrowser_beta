.class public Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sBaseClass:Ljava/lang/Class;

.field private static sGetDesktopModeState:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.android.desktopmode.SemDesktopModeManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->sBaseClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "getDesktopModeState"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->sGetDesktopModeState:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static exists()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->sBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;
    .locals 2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->DESKTOP_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getDesktopModeState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->sGetDesktopModeState:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDesktopModeState()Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->sGetDesktopModeState:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
