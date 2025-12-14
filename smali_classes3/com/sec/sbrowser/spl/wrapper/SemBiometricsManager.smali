.class public Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;,
        Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;,
        Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationResult;
    }
.end annotation


# static fields
.field public static final ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TYPE_NORMAL_SECURITY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TYPE_STRONG_SECURITY:I

.field private static sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sAuthenticationResultClass:Ljava/lang/Class;

.field private static sCryptoObjectClass:Ljava/lang/Class;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

.field private static sTypeStrongSecurity:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "com.samsung.android.biometrics.SemBiometricsManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.biometrics.SemBiometricsManager$AuthenticationCallback"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v1, "com.samsung.android.biometrics.SemBiometricsManager$AuthenticationResult"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sAuthenticationResultClass:Ljava/lang/Class;

    const-string v1, "com.samsung.android.biometrics.SemBiometricsManager$CryptoObject"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sCryptoObjectClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sCryptoObjectClass:Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    const-class v8, Landroid/os/Bundle;

    const-class v4, Landroid/os/CancellationSignal;

    move-object v2, v7

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "authenticate"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "TYPE_STRONG_SECURITY"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sTypeStrongSecurity:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :try_start_0
    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0x11

    :goto_0
    sput v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->TYPE_STRONG_SECURITY:I

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "TYPE_NORMAL_SECURITY"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->TYPE_NORMAL_SECURITY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "ERROR_TIMEOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "ERROR_CANCELED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sAuthenticationResultClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sCryptoObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;

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

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "TYPE_STRONG_SECURITY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sTypeStrongSecurity:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public authenticate(ILcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 8

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemCryptoObject;->getBaseInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v4, p4, Lcom/sec/sbrowser/spl/wrapper/SemBiometricsManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p3

    move-object v5, p5

    move-object v7, p7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
