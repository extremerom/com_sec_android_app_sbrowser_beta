.class public Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;,
        Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;,
        Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationResult;
    }
.end annotation


# static fields
.field public static final FACE_ACQUIRED_FAKE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_GOOD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_INVALID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_LOW_QUALITY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_MISALIGNED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_TOO_BIG:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ACQUIRED_TOO_SMALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_CAMERA_FAILURE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_CAMERA_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_NO_SPACE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sAuthenticationResultClass:Ljava/lang/Class;

.field private static sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sCryptoObjectClass:Ljava/lang/Class;

.field private static sFaceClass:Ljava/lang/Class;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sHasEnrolledFaces:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

.field private static sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "com.samsung.android.bio.face.SemBioFaceManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.face.SemBioFaceManager$AuthenticationCallback"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v1, "com.samsung.android.bio.face.SemBioFaceManager$AuthenticationResult"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sAuthenticationResultClass:Ljava/lang/Class;

    const-string v1, "com.samsung.android.bio.face.SemBioFaceManager$CryptoObject"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCryptoObjectClass:Ljava/lang/Class;

    const-string v1, "com.samsung.android.bio.face.SemBioFace"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sFaceClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "createInstance"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCryptoObjectClass:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/Handler;

    const-class v7, Landroid/view/View;

    const-class v3, Landroid/os/CancellationSignal;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "authenticate"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hasEnrolledFaces"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sHasEnrolledFaces:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "isHardwareDetected"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_FAKE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_FAKE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_GOOD"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_GOOD:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_INVALID"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_INVALID:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_LOW_QUALITY"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_LOW_QUALITY:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_MISALIGNED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_MISALIGNED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_TOO_BIG"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_TOO_BIG:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ACQUIRED_TOO_SMALL"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ACQUIRED_TOO_SMALL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_CAMERA_FAILURE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_CAMERA_FAILURE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_CAMERA_UNAVAILABLE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_CAMERA_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_CANCELED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_CANCELED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_LOCKOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_LOCKOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_NO_SPACE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_NO_SPACE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_TIMEOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "FACE_ERROR_UNABLE_TO_PROCESS"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->FACE_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sAuthenticationResultClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCryptoObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sFaceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    if-nez v0, :cond_1

    const v0, 0xf4254

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "createInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sCreateInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "hasEnrolledFaces"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sHasEnrolledFaces:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "isHardwareDetected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public authenticate(Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 7

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->getBaseInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p3, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public hasEnrolledFaces()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sHasEnrolledFaces:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isHardwareDetected()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
