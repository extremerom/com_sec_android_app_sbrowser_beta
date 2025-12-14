.class public Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCryptoObject;,
        Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;,
        Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;,
        Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationResult;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_ICON_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final EXTRA_KEY_ICON_CONTAINER_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_GOOD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_LOCKOUT_PERMANENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FINGERPRINT_ERROR_USER_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sAuthenticationResultClass:Ljava/lang/Class;

.field private static sCharacteristicsClass:Ljava/lang/Class;

.field private static sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sCryptoObjectClass:Ljava/lang/Class;

.field private static sFingerprintClass:Ljava/lang/Class;

.field private static sGetCharacteristics:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sHasDisabledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sHasEnrolledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sHasFeature:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "com.samsung.android.bio.fingerprint.SemFingerprintManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.fingerprint.SemFingerprintManager$AuthenticationCallback"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v1, "com.samsung.android.bio.fingerprint.SemFingerprintManager$AuthenticationResult"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sAuthenticationResultClass:Ljava/lang/Class;

    const-string v1, "com.samsung.android.bio.fingerprint.SemFingerprintManager$Characteristics"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCharacteristicsClass:Ljava/lang/Class;

    const-string v1, "com.samsung.android.bio.fingerprint.SemFingerprintManager$CryptoObject"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCryptoObjectClass:Ljava/lang/Class;

    const-string v1, "android.hardware.fingerprint.Fingerprint"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "createInstance"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCryptoObjectClass:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    const-class v3, Landroid/os/CancellationSignal;

    const-class v5, Landroid/os/Handler;

    move-object v6, v8

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "authenticate"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getCharacteristics"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sGetCharacteristics:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasDisabledFingerprints"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasDisabledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasEnrolledFingerprints"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasEnrolledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "hasFeature"

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasFeature:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "EXTRA_KEY_PRIVILEGED_FLAG"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_PRIVILEGED_FLAG:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "PRIVILEGED_FLAG_ALLOW_BACKGROUND"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_ALLOW_BACKGROUND:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "PRIVILEGED_FLAG_AVOID_LOCKOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_AVOID_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_GOOD"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_GOOD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_IMAGER_DIRTY"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_IMAGER_DIRTY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_INSUFFICIENT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_INSUFFICIENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_PARTIAL"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_PARTIAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_TOO_FAST"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_TOO_FAST:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ACQUIRED_TOO_SLOW"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ACQUIRED_TOO_SLOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_CANCELED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_HW_UNAVAILABLE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_HW_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_LOCKOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_LOCKOUT_PERMANENT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_LOCKOUT_PERMANENT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_TEMPLATE_CORRUPTED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_TIMEOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_UNABLE_TO_PROCESS"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FINGERPRINT_ERROR_USER_CANCELED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->FINGERPRINT_ERROR_USER_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "EXTRA_KEY_ICON_COLOR"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v2, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->EXTRA_KEY_ICON_CONTAINER_COLOR:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sAuthenticationResultClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCharacteristicsClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCryptoObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sFingerprintClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "createInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getCharacteristics"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sGetCharacteristics:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "hasDisabledFingerprints"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasDisabledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "hasEnrolledFingerprints"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasEnrolledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "hasFeature"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasFeature:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public authenticate(Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 7

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCryptoObject;->getBaseInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v3, p3, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public getCharacteristics()Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sGetCharacteristics:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager$SemCharacteristics;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasDisabledFingerprints()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasDisabledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasEnrolledFingerprints:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasFeature(I)Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemFingerprintManager;->sHasFeature:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
