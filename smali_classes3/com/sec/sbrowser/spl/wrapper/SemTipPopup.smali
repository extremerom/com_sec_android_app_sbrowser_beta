.class public Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DIRECTION_BOTTOM_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DIRECTION_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DIRECTION_TOP_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DIRECTION_TOP_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final STATE_DISMISSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final STATE_EXPANDED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final STATE_HINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sBaseClass:Ljava/lang/Class;

.field private static sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sOnStateChangeListenerClass:Ljava/lang/Class;

.field private static sSetAction:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetActionTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetBorderColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetExpanded:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetMessage:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetMessageTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetOnStateChangeListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetTargetPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sShow:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sTPConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.samsung.android.widget.SemTipPopup"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v0, "com.samsung.android.widget.SemTipPopup$OnStateChangeListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sOnStateChangeListenerClass:Ljava/lang/Class;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sTPConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DIRECTION_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DIRECTION_BOTTOM_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_BOTTOM_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DIRECTION_BOTTOM_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_BOTTOM_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DIRECTION_TOP_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_TOP_LEFT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "DIRECTION_TOP_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_TOP_RIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "STATE_DISMISSED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_DISMISSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "STATE_HINT"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_HINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "STATE_EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_EXPANDED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setMessage"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessage:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "show"

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sShow:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setExpanded"

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetExpanded:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    const-string v6, "isShowing"

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v5, "setMessageTextColor"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessageTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v5, "setActionTextColor"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetActionTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v5, "setBackgroundColor"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v5, "setBorderColor"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBorderColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-class v5, Landroid/view/View$OnClickListener;

    filled-new-array {v2, v5}, [Ljava/lang/Class;

    move-result-object v2

    const-string v5, "setAction"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetAction:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "dismiss"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sOnStateChangeListenerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setOnStateChangeListener"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetOnStateChangeListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    const-string v2, "setTargetPosition"

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetTargetPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sTPConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sOnStateChangeListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static exists()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "SemTipPopup"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sTPConstructor:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "setMessage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessage:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "show"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sShow:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "setExpanded"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetExpanded:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "isShowing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "setMessageTextColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessageTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "setActionTextColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetActionTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "setBackgroundColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "setBorderColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBorderColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "setAction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetAction:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "dismiss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_a
    const-string v0, "setOnStateChangeListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetOnStateChangeListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "setTargetPosition"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetTargetPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sDismiss:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public isShowing()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sIsShowing:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetAction:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setActionTextColor(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetActionTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBackgroundColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetBorderColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetExpanded:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessage:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetMessageTextColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetOnStateChangeListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;->mProxyInstance:Ljava/lang/Object;

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setTargetPosition(II)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sSetTargetPosition:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public show(I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->sShow:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method
