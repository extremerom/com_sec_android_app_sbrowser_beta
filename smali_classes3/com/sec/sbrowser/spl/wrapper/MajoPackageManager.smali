.class public Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FEATURE_DUAL_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FEATURE_FINGERPRINT_MANAGER_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FEATURE_FOLDER_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FEATURE_HOVERING_UI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FEATURE_SEM_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final FEATURE_SEM_SUPPORT_LITE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final ICON_TRAY_SQUIRCLE_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sGetApplicationIconForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetDrawableForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "SEM_FEATURE_SAMSUNG_EXPERIENCE_MOBILE"

    const-class v2, Landroid/content/pm/PackageManager;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_SEM_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v1, "SEM_FEATURE_SAMSUNG_EXPERIENCE_MOBILE_LITE"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_SEM_SUPPORT_LITE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-class v3, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_FEATURE_FINGERPRINT_MANAGER_SERVICE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_FINGERPRINT_MANAGER_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_FEATURE_HOVERING_UI"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_HOVERING_UI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_FEATURE_FOLDER_TYPE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_FOLDER_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "SEM_FEATURE_DUAL_SCREEN"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_DUAL_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v4, "SEM_ICON_TRAY_SQUIRCLE_MODE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->ICON_TRAY_SQUIRCLE_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "semGetApplicationIconForIconTray"

    invoke-direct {v0, v2, v5, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetApplicationIconForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "semGetDrawableForIconTray"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetDrawableForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "FEATURE_FINGERPRINT_MANAGER_SERVICE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_FINGERPRINT_MANAGER_SERVICE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "FEATURE_HOVERING_UI"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_HOVERING_UI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "FEATURE_FOLDER_TYPE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_FOLDER_TYPE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v4, "FEATURE_DUAL_LCD"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_DUAL_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v4, "ICON_TRAY_SQUICLE_MODE"

    invoke-direct {v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->ICON_TRAY_SQUIRCLE_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getApplicationIconForIconTray"

    invoke-direct {v0, v2, v5, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetApplicationIconForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v3, "getDrawableForIconTray"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetDrawableForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    :goto_0
    return-void
.end method

.method public static getApplicationIconForIconTray(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetApplicationIconForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getDrawableForIconTray(Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetDrawableForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getApplicationIconForIconTray"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetApplicationIconForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getDrawableForIconTray"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->sGetDrawableForIconTray:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
