.class public Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final CAMERA_CUTOUT_SETTING_APP_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final CAMERA_CUTOUT_SETTING_HIDE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final CAMERA_CUTOUT_SETTING_SHOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static final sGetCameraCutoutSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static final sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sInstance:Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.app.SemActivityTaskManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getInstance"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getCameraCutoutSetting"

    invoke-direct {v3, v0, v5, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sGetCameraCutoutSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v4, "CAMERA_CUTOUT_SETTING_APP_DEFAULT"

    invoke-direct {v3, v0, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->CAMERA_CUTOUT_SETTING_APP_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v4, "CAMERA_CUTOUT_SETTING_SHOW"

    invoke-direct {v3, v0, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->CAMERA_CUTOUT_SETTING_SHOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v4, "CAMERA_CUTOUT_SETTING_HIDE"

    invoke-direct {v3, v0, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->CAMERA_CUTOUT_SETTING_HIDE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;

    sget-object v3, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create sInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SemActivityTaskManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static getCameraCutoutSettings(ILjava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sGetCameraCutoutSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sInstance:Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getInstance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sGetInstance:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getCameraCutoutSettings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemActivityTaskManager;->sGetCameraCutoutSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
