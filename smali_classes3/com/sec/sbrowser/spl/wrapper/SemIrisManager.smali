.class public Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;,
        Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;,
        Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationResult;
    }
.end annotation


# static fields
.field public static final IRIS_ACQUIRED_EYES_CLOSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ACQUIRED_INCORRECT_POSITION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ACQUIRED_TOO_BRIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ACQUIRED_TOO_CLOSE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ACQUIRED_TOO_FAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_EVICTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_EYE_SAFETY_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_FEATURE_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_HW_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_PROXIMITY_ALERT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_VIEW_TYPE_PREVIEW_INVISIBLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final IRIS_VIEW_TYPE_PREVIEW_VISIBLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sAuthenticationResultClass:Ljava/lang/Class;

.field private static sCryptoObjectClass:Ljava/lang/Class;

.field private static sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sHasDisabledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sHasEnrolledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

.field private static sIrisClass:Ljava/lang/Class;

.field private static sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sSetIrisViewType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.samsung.android.bio.iris.SemIrisManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.samsung.android.bio.iris.SemIrisManager$AuthenticationCallback"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.samsung.android.bio.iris.SemIrisManager$AuthenticationResult"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sAuthenticationResultClass:Ljava/lang/Class;

    const-string v2, "com.samsung.android.bio.iris.SemIrisManager$CryptoObject"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sCryptoObjectClass:Ljava/lang/Class;

    const-string v2, "com.samsung.android.camera.iris.Iris"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sIrisClass:Ljava/lang/Class;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    invoke-direct {v2, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v2, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sCryptoObjectClass:Ljava/lang/Class;

    const-class v4, Landroid/os/Handler;

    const-class v5, Landroid/view/View;

    const-class v6, Landroid/os/CancellationSignal;

    filled-new-array {v3, v6, v1, v4, v5}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "authenticate"

    invoke-direct {v2, v0, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hasEnrolledIris"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasEnrolledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasDisabledIrises"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "hasDisabledIris"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "isHardwareDetected"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setIrisViewType"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sSetIrisViewType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ACQUIRED_EYES_CLOSED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ACQUIRED_EYES_CLOSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ACQUIRED_INCORRECT_POSITION"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ACQUIRED_INCORRECT_POSITION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ACQUIRED_TOO_BRIGHT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ACQUIRED_TOO_BRIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ACQUIRED_TOO_CLOSE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ACQUIRED_TOO_CLOSE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ACQUIRED_TOO_FAR"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ACQUIRED_TOO_FAR:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_EVICTED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_EVICTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_EYE_SAFETY_TIMEOUT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_EYE_SAFETY_TIMEOUT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_FEATURE_OFF"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_FEATURE_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_HW_UNAVAILABLE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_HW_UNAVAILABLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_PROXIMITY_ALERT"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_PROXIMITY_ALERT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_ERROR_UNABLE_TO_PROCESS"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_ERROR_UNABLE_TO_PROCESS:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_VIEW_TYPE_PREVIEW_INVISIBLE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_VIEW_TYPE_PREVIEW_INVISIBLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "IRIS_VIEW_TYPE_PREVIEW_VISIBLE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->IRIS_VIEW_TYPE_PREVIEW_VISIBLE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sAuthenticationResultClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sCryptoObjectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sIrisClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

    :cond_0
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;

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

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "hasEnrolledIris"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasEnrolledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "hasDisabledIrises"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "hasDisabledIris"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "isHardwareDetected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "setIrisViewType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sSetIrisViewType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public authenticate(Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;Landroid/os/CancellationSignal;Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sAuthenticate:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemCryptoObject;->getBaseInstance()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object p3, p3, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager$SemAuthenticationCallback;->mCallback:Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public hasDisabledIrises()Z
    .locals 2

    const v0, 0xf4256

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasDisabledIrises:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasEnrolledIris()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sHasEnrolledIris:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

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

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sIsHardwareDetected:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setIrisViewType(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemIrisManager;->sSetIrisViewType:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
