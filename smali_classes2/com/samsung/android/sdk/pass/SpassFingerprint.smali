.class public Lcom/samsung/android/sdk/pass/SpassFingerprint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pass/SpassFingerprint$a;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$b;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$c;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;,
        Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;
    }
.end annotation


# static fields
.field public static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field public static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field public static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field public static final SENSOR_POSITION_HOMEKEY:I = 0x1

.field public static final SENSOR_POSITION_REAR:I = 0x3

.field public static final STATUS_AUTHENTIFICATION_FAILED:I = 0x10

.field public static final STATUS_AUTHENTIFICATION_PASSWORD_SUCCESS:I = 0x64

.field public static final STATUS_AUTHENTIFICATION_SUCCESS:I = 0x0

.field public static final STATUS_BUTTON_PRESSED:I = 0x9

.field public static final STATUS_OPERATION_DENIED:I = 0x33

.field public static final STATUS_QUALITY_FAILED:I = 0xc

.field public static final STATUS_SENSOR_FAILED:I = 0x7

.field public static final STATUS_TIMEOUT_FAILED:I = 0x4

.field public static final STATUS_USER_CANCELLED:I = 0x8

.field public static final STATUS_USER_CANCELLED_BY_TOUCH_OUTSIDE:I = 0xd

.field private static r:Ljava/lang/String; = "sdk_version"


# instance fields
.field private a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:[I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/os/IBinder;

.field private v:Landroid/app/Dialog;

.field private w:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private x:Landroid/os/Bundle;

.field private y:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Z

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->s:Z

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Z

    if-eqz v3, :cond_4

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getInstance"

    const-class v6, Landroid/content/Context;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getVersion"

    invoke-virtual {v3, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getVersion failed : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpassFingerprintSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    ushr-int/lit8 v2, v2, 0x18

    if-le v2, v4, :cond_2

    move v2, v4

    :cond_2
    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/pass/support/v1/FingerprintManagerProxyFactory;->create(Landroid/content/Context;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    :cond_3
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->z:Landroid/os/Handler;

    :cond_4
    const-string p1, "EVENT_IDENTIFY_"

    const-class v2, Lcom/samsung/android/sdk/pass/SpassFingerprint;

    invoke-static {p0, v2, v0, p1}, Lcom/samsung/android/sdk/pass/support/SdkSupporter;->copyStaticFields(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    if-eqz p1, :cond_5

    :try_start_2
    invoke-interface {p1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getSensorType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iput-boolean v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    :cond_5
    return-void

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is not valid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->z:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_1
    const-string v2, "drawable"

    invoke-virtual {p0, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    const-string v1, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SM_SDK"

    const-string p1, " com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY is not allowed "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return p0
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Lcom/samsung/android/fingerprint/IFingerprintClient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-object p0
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not running on the device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint Service is not supported in the platform."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic g(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    return-void
.end method

.method private static g()Z
    .locals 10

    const-string v0, "floating feature : "

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    const-class v2, Ljava/lang/String;

    const-string v3, "getInstance"

    const-string v4, "SecFloating"

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "com.samsung.android.feature.FloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getEnableStatus"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v6, "Floating feature is not supported (non-samsung device)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v6, "com.samsung.android.feature.semFloatingFeature"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "getBoolean"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v6

    :catch_1
    const-string v0, "Floating feature is not supported this device (non-samsung device)"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic h(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic i(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    return p0
.end method

.method public static synthetic j(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->q:Z

    return-void
.end method

.method public static synthetic k(Lcom/samsung/android/sdk/pass/SpassFingerprint;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic l(Lcom/samsung/android/sdk/pass/SpassFingerprint;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->t:Z

    return p0
.end method

.method public final b()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->o:I

    const v0, 0x1010100

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSupportFingerprintIds"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportFingerprintIds()Z

    move-result p0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "SpassFingerprintSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result p0

    return p0
.end method

.method public cancelIdentify()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No Identify request."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cancel() returned RESULT_FAILED due to FingerprintService Error."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyAppActivityState(ILandroid/os/Bundle;)V

    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    return-void
.end method

.method public changeStandbyString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the standby text passed is longer than 100 characters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the standby text passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setStandbyString is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkBackupPassword(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->verifyPassword(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "password passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    const-string v0, "com.samsung.android.fingerprint.FingerprintManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSupportBackupPassword"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSupportBackupPassword()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SpassFingerprintSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public getGuideForPoorQuality()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FingerprintGuide is Invalid. This API must be called inside IdentifyListener.onFinished() with STATUS_QUALITY_FAILED only."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGuideImageForPoorQuality()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FingerprintGuideImage is Invalid. This API must be called inside IdentifyListener.onFinished() with STATUS_QUALITY_FAILED only."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIdentifiedFingerprintIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FingerprintIndex is Invalid. This API must be called inside IdentifyListener.onFinished() only."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegisteredFingerprintName()Landroid/util/SparseArray;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    shl-int v4, v2, v3

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getIndexName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getRegisteredFingerprintUniqueID()Landroid/util/SparseArray;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    :goto_1
    return-object v0

    :cond_1
    shl-int v4, v2, v3

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v4, v3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getFingerprintId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getRegisteredFingerprintUniqueID is not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSensorPosition()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SpassFingerprintSDK"

    const-string v1, "getSensorPosition : failed "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public hasRegisteredFinger()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->getEnrolledFingers()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSensorReady()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSensorReady()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isTouchType()Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->p:Z

    return p0
.end method

.method public registerFinger(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V
    .locals 3

    const-string v0, "activityContext is invalid"

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isEnrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->notifyEnrollEnd()Z

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->isSensorReady()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    new-instance v2, Lcom/samsung/android/sdk/pass/b;

    invoke-direct {v2, p2}, Lcom/samsung/android/sdk/pass/b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$RegisterListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An error has occurred with the fingerprint sensor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activityContext passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetListener()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a()V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setCanceledOnTouchOutside is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDialogBgTransparency(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the transparency passed is not valid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setDialogBGTransparency is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDialogButton(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->d()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the title text passed is longer than 32 characters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the buttonText passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setDialogButton is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDialogIcon(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the iconName passed is not valid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the iconName passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setDialogIcon is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDialogTitle(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    ushr-int/lit8 v0, p2, 0x18

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    const/high16 p1, -0x1000000

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha value is not supported in the titleColor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the title text passed is longer than 256 characters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the titletext passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setDialogTitle is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIntendedFingerprintIndex(Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-nez p1, :cond_0

    const-string p0, "SpassFingerprintSDK"

    const-string p1, "requestedIndex is null. Identify is carried out for all indexes."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setIntendedFingerprintIndex is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIdentify(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    const-string v1, "Identify request is denied because a previous request is still in progress."

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a([I)Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a()Lcom/samsung/android/sdk/pass/SpassFingerprint$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->b()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Bundle;

    const-string v2, "privileged"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Bundle;

    const-string v2, "useManualTimeout"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Bundle;

    const-string v2, "privileged_attr"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->x:Landroid/os/Bundle;

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identify(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_6

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->hasPendingCommand()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->cancel(Landroid/os/IBinder;)Z

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Identify operation is failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->y:Lcom/samsung/android/fingerprint/IFingerprintClient;

    check-cast v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;->a(Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;)V

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    new-instance p0, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;

    const-string p1, "Identify request is denied because 5 identify attempts are failed."

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/pass/SpassInvalidStateException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->unregisterClient(Landroid/os/IBinder;)Z

    iput-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->u:Landroid/os/IBinder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "failed because registerClient returned null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIdentifyWithDialog(Landroid/content/Context;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;Z)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f()V

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pass/SpassFingerprint;->b()Z

    move-result v0

    const-string v1, "Identify operation is failed."

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    iget-object v5, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;

    invoke-direct {v0, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$b;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    const/4 p2, -0x1

    :try_start_1
    const-string v0, "%d.%d.%d"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "password"

    invoke-virtual {v5, v6, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/samsung/android/sdk/pass/SpassFingerprint;->r:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Pass-v"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "demandExtraEvent"

    invoke-virtual {v5, p3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    if-eqz p3, :cond_2

    const-string v0, "request_template_index_list"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    if-eqz p3, :cond_3

    const-string v0, "titletext"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    if-eq p3, p2, :cond_4

    const-string v0, "titlecolor"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string v0, "iconname"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    if-eq p3, p2, :cond_6

    const-string v0, "transparency"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-boolean p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Z

    if-eqz p3, :cond_7

    const-string v0, "touchoutside"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    if-eqz p3, :cond_8

    const-string v0, "button_name"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Ljava/lang/String;

    if-eqz p3, :cond_9

    const-string v0, "standby_string"

    invoke-virtual {v5, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->w:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-interface {p3, p1, v0, v5}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_a

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->f:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->k:[I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->g:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->h:I

    iput p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->j:I

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->i:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->l:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->m:Ljava/lang/String;

    throw p1

    :cond_b
    new-instance v0, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;

    invoke-direct {v0, p0, p2, v2}, Lcom/samsung/android/sdk/pass/SpassFingerprint$c;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint;Lcom/samsung/android/sdk/pass/SpassFingerprint$IdentifyListener;B)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->a:Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;

    invoke-interface {p2, p1, v0, v3, p3}, Lcom/samsung/android/sdk/pass/support/IFingerprintManagerProxy;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    if-eqz p1, :cond_c

    new-instance p2, Lcom/samsung/android/sdk/pass/a;

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/pass/a;-><init>(Lcom/samsung/android/sdk/pass/SpassFingerprint$c;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint;->v:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activityContext is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activityContext passed is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
