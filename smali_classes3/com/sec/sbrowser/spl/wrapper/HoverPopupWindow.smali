.class public Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;,
        Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TYPE_USER_CUSTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final TYPE_WIDGET_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sBaseClass:Ljava/lang/Class;

.field private static sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sListenerClass:Ljava/lang/Class;

.field private static sSetContent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetDismissTouchableHPWOnActionUp:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetHoverPopupListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetHoverPopupPreShowListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetHoverPopupPreShowListenerClass:Ljava/lang/Class;

.field private static sSetOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetOnSetContentViewListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetPopupGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetPopupPosOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetTouchable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetTouchablePopup:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow$OnSetContentViewListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sListenerClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "android.widget.HoverPopupWindow"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v0, "android.widget.HoverPopupWindow$HoverPopupListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sListenerClass:Ljava/lang/Class;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sListenerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHoverPopupListener"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sListenerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setOnSetContentViewListener"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOnSetContentViewListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v0, "com.samsung.android.widget.SemHoverPopupWindow$HoverPopupPreShowListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupPreShowListenerClass:Ljava/lang/Class;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setHoverPopupPreShowListener"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupPreShowListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setPopupPosOffset"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupPosOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setOffset"

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setContent"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetContent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "dismiss"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setPopupGravity"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setGravity"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setTouchablePopup"

    invoke-direct {v0, v1, v5, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchablePopup:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setTouchable"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setDismissTouchableHPWOnActionUp"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetDismissTouchableHPWOnActionUp:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v2, "isShowing"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v2, "TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v2, "TYPE_TOOLTIP"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_TOOLTIP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v2, "TYPE_WIDGET_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_WIDGET_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v2, "TYPE_USER_CUSTOM"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_USER_CUSTOM:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupPreShowListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "setHoverPopupListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "setOnSetContentViewListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOnSetContentViewListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "setHoverPopupPreShowListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupPreShowListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "setPopupPosOffset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupPosOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "setOffset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "setContent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetContent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "dismiss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "setPopupGravity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "setGravity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "setTouchablePopup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchablePopup:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "setTouchable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_a
    const-string v0, "setDismissTouchableHPWOnActionUp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetDismissTouchableHPWOnActionUp:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "isShowing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "getContentView"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v3, "getContent"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getIsDismissTouchableHPWOnActionUp"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getIsPopupTouchable()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mIsPopupTouchable"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getObjectOfHoverPopupListener()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mListener"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPopup()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mPopup"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPopupGravity()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mPopupGravity"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPopupPosOffsetX()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mPopupOffsetX"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPopupPosOffsetY()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sBaseClass:Ljava/lang/Class;

    const-string v1, "mPopupOffsetY"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetContent:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetDismissTouchableHPWOnActionUp:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setHoverPopupListener(Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;)V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOnSetContentViewListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->mProxyInstance:Ljava/lang/Object;

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;->mProxyInstance:Ljava/lang/Object;

    :cond_2
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public setHoverPopupPreShowListener(Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupPreShowListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupPreShowListener;->mProxyInstance:Ljava/lang/Object;

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetHoverPopupListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupPreShowListener;->mProxyInstance:Ljava/lang/Object;

    :cond_2
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupGravity:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetPopupPosOffset:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->sSetTouchablePopup:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method
