.class public Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sBaseClass:Ljava/lang/Class;

.field private static final sGetCredentialTypeForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sLockPatternUtilsConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.android.widget.SemLockPatternUtils"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sBaseClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sLockPatternUtilsConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCredentialTypeForUser"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sGetCredentialTypeForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sLockPatternUtilsConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getCredentialTypeForUser(I)I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemLockPatternUtils;->sGetCredentialTypeForUser:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
