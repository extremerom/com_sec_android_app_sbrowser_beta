.class public Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final DISABLE_BACK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISABLE_HOME:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISABLE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISABLE_RECENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sDisable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.SemStatusBarManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "disable"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->sDisable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISABLE_BACK"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_BACK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISABLE_HOME"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_HOME:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISABLE_NONE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISABLE_RECENT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->DISABLE_RECENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;
    .locals 2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->SEM_STATUS_BAR_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "disable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->sDisable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public disable(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemStatusBarManager;->sDisable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
