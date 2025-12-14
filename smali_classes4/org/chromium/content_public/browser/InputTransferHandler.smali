.class public Lorg/chromium/content_public/browser/InputTransferHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;
.implements Lorg/chromium/ui/InsetObserver$WindowInsetObserver;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInitialBrowserToken:Ljava/lang/Integer;


# instance fields
.field private mBrowserToken:Landroid/window/InputTransferToken;

.field private mDelegate:Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;

.field private mInsetObserver:Lorg/chromium/ui/InsetObserver;

.field private mSelectionHandlesActive:Z

.field private mSystemGestureInsetLeft:I

.field private mSystemGestureInsetRight:I

.field private mVizToken:Landroid/window/InputTransferToken;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/window/InputTransferToken;Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/chromium/content_public/browser/InputTransferHandler;->sInitialBrowserToken:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {p1}, LA2/e;->c(Landroid/window/InputTransferToken;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/content_public/browser/InputTransferHandler;->sInitialBrowserToken:Ljava/lang/Integer;

    :cond_0
    iput-object p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mBrowserToken:Landroid/window/InputTransferToken;

    iput-object p2, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mDelegate:Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;

    iput-object p3, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p3, p0}, Lorg/chromium/ui/base/WindowAndroid;->addSelectionHandlesObserver(Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;)V

    iget-object p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getInsetObserver()Lorg/chromium/ui/InsetObserver;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/chromium/ui/InsetObserver;->addObserver(Lorg/chromium/ui/InsetObserver$WindowInsetObserver;)V

    :cond_1
    return-void
.end method

.method private canTransferInputToViz(F)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mVizToken:Landroid/window/InputTransferToken;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lorg/chromium/content_public/browser/InputTransferHandler;->sInitialBrowserToken:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mBrowserToken:Landroid/window/InputTransferToken;

    invoke-static {v1}, LA2/e;->c(Landroid/window/InputTransferToken;)I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 p0, 0x9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSelectionHandlesActive:Z

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Lorg/chromium/content_public/browser/InputTransferHandler;->canTriggerBackGesture(F)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mDelegate:Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;->canTransferInputToViz()Z

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private canTriggerBackGesture(F)Z
    .locals 5

    iget v0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSystemGestureInsetLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSystemGestureInsetRight:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content_public/browser/InputTransferHandler;->isWithinInsets(FFF)Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSystemGestureInsetLeft:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v1, v1}, Lorg/chromium/content_public/browser/InputTransferHandler;->isWithinInsets(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3
.end method

.method private isWithinInsets(FFF)Z
    .locals 0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    iget-object p0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static maybeTransferInputToViz(IF)I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/InputTransferHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/InputTransferHandler;->maybeTransferInputToViz(F)I

    move-result p0

    return p0
.end method

.method private static transferInputToViz(I)I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content_public/browser/SurfaceInputTransferHandlerMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/InputTransferHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content_public/browser/InputTransferHandler;->transferInputToViz()I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeSelectionHandlesObserver(Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;)V

    iget-object v0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mInsetObserver:Lorg/chromium/ui/InsetObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/InsetObserver;->removeObserver(Lorg/chromium/ui/InsetObserver$WindowInsetObserver;)V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mDelegate:Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/InputTransferHandler$Delegate;->destroy()V

    return-void
.end method

.method public maybeTransferInputToViz(F)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content_public/browser/InputTransferHandler;->canTransferInputToViz(F)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content_public/browser/InputTransferHandler;->transferInputToViz()I

    move-result p0

    return p0
.end method

.method public onSelectionHandlesStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSelectionHandlesActive:Z

    return-void
.end method

.method public onSystemGestureInsetsChanged(IIII)V
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSystemGestureInsetLeft:I

    iput p3, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mSystemGestureInsetRight:I

    return-void
.end method

.method public setVizToken(Landroid/window/InputTransferToken;)V
    .locals 1

    const-string v0, "Storing InputTransferToken"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mVizToken:Landroid/window/InputTransferToken;

    return-void
.end method

.method public transferInputToViz()I
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mBrowserToken:Landroid/window/InputTransferToken;

    iget-object p0, p0, Lorg/chromium/content_public/browser/InputTransferHandler;->mVizToken:Landroid/window/InputTransferToken;

    invoke-static {v0, v1, p0}, LA2/e;->D(Landroid/view/WindowManager;Landroid/window/InputTransferToken;Landroid/window/InputTransferToken;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method
