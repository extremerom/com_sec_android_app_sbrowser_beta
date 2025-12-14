.class public final Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final LGEmailWorkaroundMaxVersion:I = 0x4060014


# direct methods
.method private static allowActionModeDestroyOnNonUiThread(Landroid/view/ActionMode;)V
    .locals 7

    const-string v0, "mCallback"

    :try_start_0
    invoke-static {p0, v0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ActionMode$Callback2;

    new-instance v2, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;

    invoke-direct {v2, v1}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;-><init>(Landroid/view/ActionMode$Callback2;)V

    invoke-static {p0, v0, v2}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mFloatingToolbar"

    invoke-static {p0, v0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mPopup"

    invoke-static {p0, v0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mContentContainer"

    invoke-static {v0, v1}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const-string v2, "mPopupWindow"

    invoke-static {v0, v2}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v3, "createExitAnimation"

    const-class v4, Landroid/view/View;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/animation/Animator$AnimatorListener;

    filled-new-array {v4, v5, v6}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;

    invoke-direct {v4, v2, v1}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$2;-><init>(Landroid/widget/PopupWindow;Landroid/view/ViewGroup;)V

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "mDismissAnimation"

    invoke-static {v0, v1, p0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Ime"

    const-string v1, "Error occurred during LGEmailActionModeWorkaround: "

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static runIfNecessary(Landroid/content/Context;Landroid/view/ActionMode;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->shouldAllowActionModeDestroyOnNonUiThread(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->allowActionModeDestroyOnNonUiThread(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static shouldAllowActionModeDestroyOnNonUiThread(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt p0, v2, :cond_4

    const/16 v2, 0x18

    if-le p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "com.lge.email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    const p0, 0x4060014

    if-le v1, p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Working around action mode LG Email bug in WebView (http://crbug.com/651706). APK name: com.lge.email, versionCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ime"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v3
.end method
