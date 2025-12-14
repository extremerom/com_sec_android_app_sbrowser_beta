.class public Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;
    }
.end annotation


# static fields
.field private static sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->lambda$showKeyboardWithDelayIfFocused$0(Landroid/view/View;)V

    return-void
.end method

.method public static addEventListener(Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->lambda$showKeyboardWithDelayIfFocused$1(Landroid/view/View;)V

    return-void
.end method

.method public static calculateKeyboardHeight(Landroid/view/View;)I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p0

    sub-int/2addr v2, p0

    :cond_1
    return v2
.end method

.method public static forcehideKeyboard(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public static getMetaState(Landroid/view/KeyEvent;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 v1, 0x20000000

    :cond_2
    or-int p0, v0, v1

    return p0
.end method

.method public static hideKeyboard(Landroid/view/View;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideKeyboard: ContainerView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$1;-><init>(Landroid/os/Handler;)V

    :goto_0
    invoke-virtual {v1, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public static hideKeyboardNonDeprecatedForBOS(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideKeyboardNonDeprecatedForBOS: ContainerView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static hideKeyboardWithDelay(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$3;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static isAcceptingText(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    const-string p0, "ImeUtil"

    const-string v1, "isAcceptingText error"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isAccessoryKeyboardConnected(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->isSemAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->isAccessoryKeyboard(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_2

    :cond_1
    move v0, v2

    :catch_0
    :cond_2
    return v0
.end method

.method private static isAndroidSoftKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->calculateKeyboardHeight(Landroid/view/View;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGoogleKeyboard(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ImeUtil"

    const-string v0, "isGoogleKeyboard default_input_method null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isKeyboardShowing(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAndroidSoftKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isKeyboardTurnedOn(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAcceptingText(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p0, "ImeUtil"

    const-string v1, "isKeyboardTurnedOn cannot work"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportMobileKeyboard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->MOBILEKEYBOARD_COVERED_YES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getMobileKeyboardCovered(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method private static synthetic lambda$showKeyboardWithDelayIfFocused$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showKeyboardWithDelayIfFocused$1(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static notifyOnHideKeyboard()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;->onHideKeyboard()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static notifyOnShowKeyboard()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;->onShowKeyboard()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeEventListener(Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$OnKeyboardEventListener;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->sKeyboardEventListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static setPredictionOnIme(Landroid/widget/EditText;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const-string v2, "disablePrediction=true;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v5

    if-eqz p1, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_2
    const p1, -0x80001

    and-int/2addr p1, v4

    const v0, -0x1000001

    and-int/2addr v0, v5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_4
    const/high16 p1, 0x80000

    or-int/2addr p1, v4

    const/high16 v0, 0x1000000

    or-int/2addr v0, v5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showKeyboard: ContainerView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "showKeyboard fail : view is in a window that doesn\'t have a focus"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->notifyOnShowKeyboard()V

    return-void
.end method

.method public static showKeyboard(Landroid/view/View;I)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showKeyboard: ContainerView = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "showKeyboard fail : view is in a window that doesn\'t have a focus"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->notifyOnShowKeyboard()V

    return-void
.end method

.method public static showKeyboardWithDelay(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$2;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showKeyboardWithDelayIfFocused(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, LFa/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LFa/a;-><init>(Landroid/view/View;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showKeyboardWithDelayIfFocused(Landroid/view/View;J)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, LFa/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LFa/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
