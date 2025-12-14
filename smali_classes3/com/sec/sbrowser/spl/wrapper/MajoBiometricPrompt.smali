.class public Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_TYPE_DEVICE_CUSTOM_SCAN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_TYPE_FACE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_TYPE_FINGERPRINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_TYPE_IRIS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sSemAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemGetToken:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSemSetBiometricType:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.hardware.biometrics.BiometricPrompt$Builder"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "semSetBiometricType"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemSetBiometricType:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v0, "android.hardware.biometrics.BiometricPrompt"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.BiometricPrompt$CryptoObject"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.hardware.biometrics.BiometricPrompt$AuthenticationCallback"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-class v4, Ljava/util/concurrent/Executor;

    const-class v5, [B

    const-class v6, Landroid/os/CancellationSignal;

    filled-new-array {v1, v6, v4, v2, v5}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "semAuthenticate"

    invoke-direct {v3, v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v1, "android.hardware.biometrics.BiometricPrompt$AuthenticationResult"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const-string v4, "semGetToken"

    invoke-direct {v2, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemGetToken:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_TYPE_FINGERPRINT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_FINGERPRINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_TYPE_FACE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_FACE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_TYPE_IRIS"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_IRIS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_TYPE_DEVICE_CUSTOM_SCAN"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->SEM_TYPE_DEVICE_CUSTOM_SCAN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semSetBiometricType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemSetBiometricType:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semAuthenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "semGetToken"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemGetToken:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static semGetToken(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)[B
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemGetToken:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static semSetBiometricType(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoBiometricPrompt;->sSemSetBiometricType:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    return-object p0
.end method
