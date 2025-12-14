.class public Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final FLAG_CHECK_CONDITION_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FLAG_CHECK_CONDITION_PERMISSION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sBaseClass:Ljava/lang/Class;

.field private static sRegisterPendingIntent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "com.samsung.android.sepunion.SemEventDelegationManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sBaseClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FLAG_CHECK_CONDITION_PERMISSION"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->FLAG_CHECK_CONDITION_PERMISSION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sBaseClass:Ljava/lang/Class;

    const-string v2, "FLAG_CHECK_CONDITION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->FLAG_CHECK_CONDITION_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    const-class v4, Landroid/content/IntentFilter;

    const-class v5, Landroid/app/PendingIntent;

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerPendingIntent"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sRegisterPendingIntent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;
    .locals 2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoContext;->SEM_EVENT_DELEGATION_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isSemEventDelegationManagerSupported()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "registerPendingIntent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sRegisterPendingIntent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemEventDelegationManager;->sRegisterPendingIntent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
