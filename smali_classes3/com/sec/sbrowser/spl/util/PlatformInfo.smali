.class public Lcom/sec/sbrowser/spl/util/PlatformInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;
    }
.end annotation


# static fields
.field public static final IS_LOW_RAM_DEVICE:Z

.field public static final ONEUI_VERSION:I

.field public static final SPL_VERSION:I

.field private static final sPlatformGroupVersionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isLowRamDevice()Z

    move-result v0

    sput-boolean v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->IS_LOW_RAM_DEVICE:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->sPlatformGroupVersionMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Landroid/os/Build$VERSION;

    const-string v4, "SDL_INT"

    invoke-static {v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectField;->getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v1, :cond_1

    const-class v6, Landroid/view/KeyEvent;

    const-string v7, "KEYCODE_EMAIL"

    invoke-static {v6, v7, v2}, Lcom/sec/sbrowser/spl/util/ReflectField;->getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_1

    const-string v4, "com.samsung.android.feature.SemCscFeature"

    invoke-static {v4}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3ec

    goto :goto_0

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x837

    if-gt v4, v7, :cond_3

    const/16 v8, 0x835

    if-lt v4, v8, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-class v9, Landroid/view/WindowManager$LayoutParams;

    const-string v10, "MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW"

    invoke-static {v9, v10, v8}, Lcom/sec/sbrowser/spl/util/ReflectField;->getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x80

    if-ne v9, v8, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    const-string v7, "ACTION_PALM_DOWN"

    const/4 v8, 0x0

    const-class v9, Landroid/content/Intent;

    invoke-static {v9, v7, v8}, Lcom/sec/sbrowser/spl/util/ReflectField;->getString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v4, 0x836

    :cond_3
    :goto_1
    const-string v7, "SEM_INT"

    invoke-static {v3, v7, v2}, Lcom/sec/sbrowser/spl/util/ReflectField;->getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :cond_4
    if-eq v2, v1, :cond_5

    move v4, v2

    :cond_5
    sput v4, Lcom/sec/sbrowser/spl/util/PlatformInfo;->SPL_VERSION:I

    if-eq v4, v5, :cond_6

    invoke-static {}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->getOneUIVersion()I

    move-result v6

    :cond_6
    sput v6, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$1;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$1;-><init>()V

    const v2, 0xf424d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$2;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$2;-><init>()V

    const v2, 0xf424e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$3;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$3;-><init>()V

    const v2, 0xf4252

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$4;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$4;-><init>()V

    const v2, 0xf4253

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$5;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$5;-><init>()V

    const v2, 0xf4254

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$6;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$6;-><init>()V

    const v2, 0xf4255

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$7;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$7;-><init>()V

    const v2, 0xf4256

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$8;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$8;-><init>()V

    const v2, 0xf4257

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$9;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$9;-><init>()V

    const v2, 0xf4258

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$10;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$10;-><init>()V

    const v2, 0xf4259

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$11;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$11;-><init>()V

    const v2, 0xf425a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$12;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$12;-><init>()V

    const v2, 0xf425b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$13;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$13;-><init>()V

    const v2, 0xf425c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$14;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$14;-><init>()V

    const v2, 0xf425d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$15;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$15;-><init>()V

    const v2, 0xf425e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$16;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$16;-><init>()V

    const v2, 0xf425f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/sbrowser/spl/util/PlatformInfo$17;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo$17;-><init>()V

    const v2, 0xf4260

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOneUIVersion()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInt"

    const-class v4, Ljava/lang/Integer;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    const-string v3, "ro.build.version.oneui"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOneUIVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-class v1, Landroid/os/Build$VERSION;

    const-string v4, "SEM_PLATFORM_INT"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/sbrowser/spl/util/ReflectField;->getInt(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const v1, 0x15f90

    sub-int/2addr v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static isInGroup(I)Z
    .locals 2

    const v0, 0xf4240

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->sPlatformGroupVersionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/PlatformInfo$CheckPlatformGroupVersion;->run()Z

    move-result p0

    return p0
.end method

.method private static isLowRamDevice()Z
    .locals 5

    :try_start_0
    const-string v0, "true"

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    const-string v3, "ro.config.low_ram"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
