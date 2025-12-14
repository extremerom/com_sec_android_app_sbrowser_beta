.class public Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsAccessoryKeyboardState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sSemIsAccessoryKeyboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sSemIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sSemMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    const-string v4, "isInputMethodShown"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "semIsInputMethodShown"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v2, "isAccessoryKeyboardState"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-direct {v0, v3, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsAccessoryKeyboardState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v2, "semIsAccessoryKeyboard"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsAccessoryKeyboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2, v1}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "semMinimizeSoftInput"

    invoke-direct {v0, v3, v5, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v4, "minimizeSoftInput"

    filled-new-array {v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    return-void
.end method

.method public static isAccessoryKeyboard(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsAccessoryKeyboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsAccessoryKeyboardState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "isInputMethodShown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semIsInputMethodShown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsInputMethodShown:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "isAccessoryKeyboardState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sIsAccessoryKeyboardState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "semIsAccessoryKeyboard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemIsAccessoryKeyboard:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "semMinimizeSoftInput"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "minimizeSoftInput"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static semMinimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sSemMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->sMinimizeSoftInput:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
