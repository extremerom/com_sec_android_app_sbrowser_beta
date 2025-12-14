.class public Lorg/chromium/content/browser/input/ImeAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ImeAdapter;
.implements Lorg/chromium/content/browser/WindowEventObserver;
.implements Lorg/chromium/base/UserData;
.implements Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ImeAdapterImpl$UserDataFactoryLazyHolder;,
        Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;,
        Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;,
        Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMPOSITION_KEY_CODE:I = 0xe5

.field protected static final STYLUS_WRITING_COMMIT_TEXT_EVENT:Ljava/lang/String; = "commit_text"

.field private static sSemFlagGrammarSuggestion:I

.field private static sSemFlagTypoSuggestion:I


# instance fields
.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private final mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

.field protected final mEventObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content_public/browser/ImeEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mForceShowKeyboardDuringStylusWriting:Z

.field protected mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

.field protected mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

.field protected mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

.field private mIsConnected:Z

.field private mLastCompositionEnd:I

.field private mLastCompositionStart:I

.field protected mLastSelectionEnd:I

.field protected mLastSelectionStart:I

.field protected mLastText:Ljava/lang/String;

.field protected mNativeImeAdapterAndroid:J

.field protected mNodeEditable:Z

.field private mNodePassword:Z

.field private mOngoingGestures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/content/browser/input/OngoingGesture;",
            ">;"
        }
    .end annotation
.end field

.field protected mRestartInputOnNextStateUpdate:Z

.field private mShowKeyboardResultReceiver:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

.field private mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

.field protected mTextInputAction:I

.field protected mTextInputFlags:I

.field protected mTextInputMode:I

.field protected mTextInputType:I

.field private mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

.field protected final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mOngoingGestures:Landroid/util/SparseArray;

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->createDefaultInputMethodManagerWrapper(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;)Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCurrentConfig:Landroid/content/res/Configuration;

    new-instance v1, Lorg/chromium/content/browser/input/ImeAdapterImpl$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;)V

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->create(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->init(Lorg/chromium/content/browser/input/ImeAdapterImpl;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->lambda$setComposingTextForTest$0(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/input/ImeAdapterImpl;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionEnd:I

    return p0
.end method

.method private bindImeRenderHost(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p1

    new-instance p2, Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;

    invoke-direct {p2, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl$ImeRenderWidgetHostImpl;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/input/ImeAdapterImpl;)I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionStart:I

    return p0
.end method

.method private cancelComposition()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->restartInput()V

    :cond_0
    return-void
.end method

.method public static createDefaultInputMethodManagerWrapper(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;)Lorg/chromium/content_public/browser/InputMethodManagerWrapper;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;)V

    return-object v0
.end method

.method private createSpannableStringForInputState(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/input/ImeAdapterImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mForceShowKeyboardDuringStylusWriting:Z

    return-void
.end method

.method private focusedNodeAllowsSoftKeyboard()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private focusedNodeChanged(ZIIII)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mRestartInputOnNextStateUpdate:Z

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    iget-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v5

    iget-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v1

    iget-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v4

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPixInt()I

    move-result v6

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/content_public/browser/StylusWritingHandler;->onFocusedNodeChanged(Landroid/graphics/Rect;ZLandroid/view/View;FI)V

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImpl$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;

    return-object p0
.end method

.method private static getModifiers(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x200

    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr p0, v1

    if-eqz p0, :cond_4

    or-int/lit16 v0, v0, 0x400

    :cond_4
    return v0
.end method

.method private getUnderlineColorForSuggestionSpan(Landroid/text/style/SuggestionSpan;)I
    .locals 3

    const p0, -0x77373738

    :try_start_0
    const-class v0, Landroid/text/style/SuggestionSpan;

    const-string v1, "getUnderlineColor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method private isHardwareKeyboardAttached()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCurrentConfig:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTextInputType(I)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/content/browser/picker/InputDialogContainer;->isDialogInputType(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValid()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mIsConnected:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setComposingTextForTest$0(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    return-void
.end method

.method private onConnectedToRenderProcess()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mIsConnected:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->createInputConnectionFactory()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    return-void
.end method

.method private onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mIsConnected:Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->onImeAdapterDestroyed()V

    :cond_1
    return-void
.end method

.method private onResizeScrollableViewport(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->scrollFocusedEditableNodeIntoView()V

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    :cond_2
    return-void
.end method

.method private onStylusWritingGestureActionCompleted(II)V
    .locals 1
    .param p2    # I
        .annotation build Lorg/chromium/blink/mojom/HandwritingGestureResult$EnumType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mOngoingGestures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/OngoingGesture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/input/OngoingGesture;->onGestureHandled(I)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mOngoingGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method private populateImeTextSpansFromJava(Ljava/lang/CharSequence;J)V
    .locals 21
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/SpannableString;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/text/SpannableString;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_f

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    instance-of v7, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v8

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    check-cast v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v13

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v13}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->appendBackgroundColorSpan(JIII)V

    :cond_1
    :goto_1
    move-object/from16 v6, p0

    goto/16 :goto_b

    :cond_2
    instance-of v7, v5, Landroid/text/style/ForegroundColorSpan;

    if-eqz v7, :cond_3

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v8

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v13

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v13}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->appendForegroundColorSpan(JIII)V

    goto :goto_1

    :cond_3
    instance-of v7, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_4

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v6

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move-wide/from16 v14, p2

    invoke-interface {v6, v14, v15, v7, v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->appendUnderlineSpan(JII)V

    goto :goto_1

    :cond_4
    move-wide/from16 v14, p2

    instance-of v7, v5, Landroid/text/style/SuggestionSpan;

    if-eqz v7, :cond_1

    check-cast v5, Landroid/text/style/SuggestionSpan;

    and-int/lit16 v6, v6, 0x100

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    move/from16 v16, v7

    goto :goto_2

    :cond_5
    move/from16 v16, v3

    :goto_2
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    move v8, v7

    goto :goto_4

    :cond_7
    move v8, v3

    :goto_4
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_8

    move v9, v7

    goto :goto_5

    :cond_8
    move v9, v3

    :goto_5
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v10

    sget v11, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagTypoSuggestion:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    move/from16 v17, v7

    goto :goto_6

    :cond_9
    move/from16 v17, v3

    :goto_6
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v10

    sget v11, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagGrammarSuggestion:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    move/from16 v18, v7

    goto :goto_7

    :cond_a
    move/from16 v18, v3

    :goto_7
    if-nez v6, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-nez v17, :cond_b

    if-nez v18, :cond_b

    goto/16 :goto_1

    :cond_b
    move-object/from16 v6, p0

    invoke-direct {v6, v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getUnderlineColorForSuggestionSpan(Landroid/text/style/SuggestionSpan;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const v11, 0xffffff

    and-int v11, v19, v11

    shl-int/lit8 v10, v10, 0x18

    add-int v20, v11, v10

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v10

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-nez v8, :cond_d

    if-eqz v9, :cond_c

    goto :goto_8

    :cond_c
    move v13, v3

    goto :goto_9

    :cond_d
    :goto_8
    move v13, v7

    :goto_9
    if-eqz v9, :cond_e

    new-array v5, v3, [Ljava/lang/String;

    goto :goto_a

    :cond_e
    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v5

    :goto_a
    move-object v8, v10

    move-wide/from16 v9, p2

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, v5

    invoke-interface/range {v8 .. v19}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->appendSuggestionSpan(JIIZZZZII[Ljava/lang/String;)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static setSemGrammarSuggestionFlags(II)V
    .locals 0

    sput p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagGrammarSuggestion:I

    sput p1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagTypoSuggestion:I

    return-void
.end method

.method private updateFrameInfo(FFZZFFF)V
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v8

    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onUpdateFrameInfo(FFZZFFFLandroid/view/View;)V

    return-void
.end method

.method private updateInputStateForStylusWriting()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->updateInputState(Ljava/lang/String;II)V

    return-void
.end method

.method private updateOnTouchDown()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    return-void
.end method


# virtual methods
.method public addEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGrammarSpanToSpannableString(Landroid/text/SpannableString;II[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/text/style/SuggestionSpan;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagGrammarSuggestion:I

    invoke-direct {v0, p0, p4, v1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public addTypoSpanToSpannableString(Landroid/text/SpannableString;II[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/text/style/SuggestionSpan;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sSemFlagTypoSuggestion:I

    invoke-direct {v0, p0, p4, v1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public advanceFocusForIME(I)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->advanceFocusForIME(JLorg/chromium/content/browser/input/ImeAdapterImpl;I)V

    return-void
.end method

.method public cancelRequestToScrollFocusedEditableNodeIntoView()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public createInputConnectionFactory()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;-><init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 14

    move-object v13, p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onImeEvent()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v9, 0xe5

    const/4 v10, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move v4, p1

    move/from16 v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->deleteSurroundingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 14

    move-object v13, p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onImeEvent()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v9, 0xe5

    const/4 v10, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move v4, p1

    move/from16 v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->deleteSurroundingTextInCodePoints(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public finishComposingText()Z
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->finishComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;)V

    const/4 p0, 0x1

    return p0
.end method

.method public focusedNodeEditable()Z
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getInputConnectionForTest()Landroid/view/inputmethod/InputConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    return-object p0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mShowKeyboardResultReceiver:Lorg/chromium/content/browser/input/ImeAdapterImpl$ShowKeyboardResultReceiver;

    return-object p0
.end method

.method public getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl$2;-><init>(Lorg/chromium/content/browser/input/ImeAdapterImpl;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    return-object p0
.end method

.method public handleGesture(Lorg/chromium/content/browser/input/OngoingGesture;)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mOngoingGestures:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/OngoingGesture;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/OngoingGesture;->getGestureData()Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object v1

    iget-object v2, v1, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    iget v3, v2, Lorg/chromium/gfx/mojom/Rect;->x:I

    const/4 v4, 0x0

    aget v4, v0, v4

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget v3, v2, Lorg/chromium/gfx/mojom/Rect;->y:I

    const/4 v5, 0x1

    aget v0, v0, v5

    sub-int/2addr v3, v0

    iput v3, v2, Lorg/chromium/gfx/mojom/Rect;->y:I

    iget-object v2, v1, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    if-eqz v2, :cond_0

    iget v3, v2, Lorg/chromium/gfx/mojom/Rect;->x:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget v3, v2, Lorg/chromium/gfx/mojom/Rect;->y:I

    sub-int/2addr v3, v0

    iput v3, v2, Lorg/chromium/gfx/mojom/Rect;->y:I

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p0

    invoke-virtual {p1}, Lorg/chromium/content/browser/input/OngoingGesture;->getId()I

    move-result p1

    invoke-interface {p0, p1, v1}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->handleStylusWritingGestureAction(ILorg/chromium/blink/mojom/StylusWritingGestureData;)V

    return-void
.end method

.method public hasInputConnection()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideKeyboard()V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->restartInput()V

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->unblockOnUiThread()V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->onViewAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isTextInputType(I)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeAllowsSoftKeyboard()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->restartInput()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeEditable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->restartInput()V

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isHardwareKeyboardAttached()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 9

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;Z)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/StylusWritingHandler;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt p0, v1, :cond_2

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->k()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->u()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->x()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->z()Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->B()Ljava/lang/Class;

    move-result-object v6

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->C()Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->D()Ljava/lang/Class;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/webauthn/cred_man/c;->r(Landroid/view/inputmethod/EditorInfo;Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;Z)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 12

    const/high16 v0, 0x12000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez p2, :cond_0

    const/high16 p2, 0x1000000

    or-int/2addr p2, v0

    iput p2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeEditable()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V

    return-object v0

    :cond_1
    iget-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    iget v4, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    iget v5, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputFlags:I

    iget v6, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    iget v7, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    iget v8, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    iget v9, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iget-object v10, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p0

    move-object v11, p1

    invoke-interface/range {v1 .. v11}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V

    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onRequestCursorUpdates(ZZLandroid/view/View;)Z

    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->requestCursorUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;ZZ)V

    :cond_4
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->onInputConnectionCreated()V

    :cond_5
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->onViewDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onEditElementFocusedForStylusWriting(IIIIII)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p5, p6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p3

    invoke-virtual {p3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPixInt()I

    move-result p4

    const/4 p3, 0x0

    aget p3, p1, p3

    const/4 p5, 0x1

    aget p1, p1, p5

    add-int/2addr p1, p4

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Point;->offset(II)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p5

    move-object p0, p3

    move p3, v0

    invoke-interface/range {p0 .. p5}, Lorg/chromium/content_public/browser/StylusWritingHandler;->onEditElementFocusedForStylusWriting(Landroid/graphics/Rect;Landroid/graphics/Point;FILandroid/view/View;)V

    return-void
.end method

.method public onImeEvent()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/ImeEventObserver;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/ImeEventObserver;->onImeEvent()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->dismissTextHandles()V

    :cond_1
    return-void
.end method

.method public onRequestCursorUpdates(I)Z
    .locals 9

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move-object v6, p0

    move v7, v0

    move v8, v1

    invoke-interface/range {v3 .. v8}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->requestCursorUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;ZZ)V

    :cond_2
    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onRequestCursorUpdates(ZZLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onShowKeyboardReceiveResult(I)V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/chromium/ui/base/ViewUtils;->hasFocus(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->scrollFocusedEditableNodeIntoView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchDownOutsideWritableArea()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public onViewFocusChanged(ZZ)V
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isHardwareKeyboardAttached()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->onViewFocusChanged(Z)V

    :cond_1
    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->paste()V

    return v0

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->copy()V

    return v0

    :pswitch_2
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->cut()V

    return v0

    :pswitch_3
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->selectAll()V

    return v0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->advanceFocusForIME(I)V

    return v1

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->advanceFocusForIME(I)V

    return v1

    :cond_3
    :goto_0
    const/16 p1, 0x42

    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendSyntheticKeyPress(II)V

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mViewDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;->performPrivateImeCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestTextInputStateUpdate()Z
    .locals 3

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->requestTextInputStateUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;)Z

    move-result p0

    return p0
.end method

.method public resetAndHideKeyboard()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputFlags:I

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mRestartInputOnNextStateUpdate:Z

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    return-void
.end method

.method public restartInput()V
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->onRestartInputOnUiThread()V

    :cond_1
    return-void
.end method

.method public sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z
    .locals 16

    move-object/from16 v13, p0

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onImeEvent()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/16 v9, 0xe5

    move-object/from16 v3, p0

    move-wide v7, v14

    move/from16 v12, p4

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    if-eqz p3, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->commitText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->setComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, v13, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/16 v9, 0xe5

    move-object/from16 v3, p0

    move-wide v7, v14

    move/from16 v12, p4

    invoke-interface/range {v0 .. v12}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/16 v0, 0x9

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/ImeEventObserver;

    invoke-interface {v1, p1}, Lorg/chromium/content_public/browser/ImeEventObserver;->onBeforeSendKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onImeEvent()V

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getModifiers(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v13

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v1 .. v13}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public sendSALogForStylusHandwriting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendSyntheticKeyPress(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    move/from16 v7, p1

    move/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public setComposingRegion(II)Z
    .locals 9

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-gt p1, p2, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->setComposingRegion(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move-object v6, p0

    move v7, p2

    move v8, p1

    invoke-interface/range {v3 .. v8}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->setComposingRegion(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setComposingTextForTest(Ljava/lang/CharSequence;I)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {p0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LB2/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, p2, v2}, LB2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEditableSelectionOffsets(II)Z
    .locals 6

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->setEditableSelectionOffsets(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->unblockOnUiThread()V

    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    return-void
.end method

.method public setInputConnectionFactory(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    return-void
.end method

.method public shouldInitiateStylusWriting()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/ViewUtils;->hasFocus(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/chromium/ui/base/ViewUtils;->requestFocus(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateInputStateForStylusWriting()V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->shouldInitiateStylusWriting()Z

    move-result p0

    return p0
.end method

.method public showSoftKeyboard()V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/base/EventForwarder;->getLastToolType()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/chromium/content_public/browser/StylusWritingHandler;->canShowSoftKeyboard()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mForceShowKeyboardDuringStylusWriting:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->scrollFocusedEditableNodeIntoView()V

    :cond_3
    return-void
.end method

.method public updateCursorAnchorInfo(Lorg/chromium/blink/mojom/InputCursorAnchorInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfoData(Lorg/chromium/blink/mojom/InputCursorAnchorInfo;Landroid/view/View;)V

    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public updateSelection(IIII)V
    .locals 6

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method public updateState(IIIIZZLjava/lang/CharSequence;IIIIZII)V
    .locals 16
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    const-string v9, "ImeAdapter.updateState"

    invoke-static {v9}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mRestartInputOnNextStateUpdate:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_0

    iput-boolean v11, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mRestartInputOnNextStateUpdate:Z

    move/from16 v10, p2

    move v13, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    move/from16 v10, p2

    move v13, v11

    :goto_0
    iput v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputFlags:I

    iget v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    if-eq v10, v2, :cond_2

    iput v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    if-ne v2, v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->isHardwareKeyboardAttached()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v12

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    move v13, v12

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    iget v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eq v10, v1, :cond_4

    iput v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-nez v1, :cond_3

    :goto_3
    move v2, v12

    goto :goto_4

    :cond_3
    move v13, v12

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget v10, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    if-eq v10, v3, :cond_6

    iput v3, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    move v13, v12

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeEditable()Z

    move-result v3

    const/4 v10, 0x2

    if-ne v1, v10, :cond_7

    move v1, v12

    goto :goto_5

    :cond_7
    move v1, v11

    :goto_5
    iget-boolean v14, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    if-ne v14, v3, :cond_8

    iget-boolean v14, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodePassword:Z

    if-eq v14, v1, :cond_a

    :cond_8
    iget-object v14, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/chromium/content_public/browser/ImeEventObserver;

    invoke-interface {v15, v3, v1}, Lorg/chromium/content_public/browser/ImeEventObserver;->onNodeAttributeUpdated(ZZ)V

    goto :goto_6

    :cond_9
    iput-boolean v3, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    iput-boolean v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodePassword:Z

    :cond_a
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    move-object/from16 v3, p7

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    if-ne v1, v4, :cond_b

    iget v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    if-ne v1, v5, :cond_b

    iget v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionStart:I

    if-ne v1, v6, :cond_b

    iget v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionEnd:I

    if-eq v1, v7, :cond_d

    :cond_b
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->invalidateLastCursorAnchorInfo()V

    goto :goto_7

    :cond_c
    move-object/from16 v3, p7

    :cond_d
    :goto_7
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    iput v4, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    iput v5, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iput v6, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionStart:I

    iput v7, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastCompositionEnd:I

    move/from16 v1, p14

    if-ne v1, v12, :cond_f

    if-ne v8, v12, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    goto :goto_9

    :cond_e
    if-ne v8, v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    goto :goto_9

    :cond_f
    if-nez v2, :cond_12

    if-eqz p6, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->restartInput()V

    :cond_11
    if-eqz p5, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->focusedNodeAllowsSoftKeyboard()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    goto :goto_9

    :cond_12
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    :cond_13
    :goto_9
    iget-object v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v1, :cond_15

    iget v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    const/16 v8, 0xe

    if-eq v2, v8, :cond_14

    const/16 v8, 0xf

    if-eq v2, v8, :cond_14

    move v11, v12

    :cond_14
    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move v7, v11

    move/from16 v8, p12

    invoke-interface/range {v1 .. v8}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->updateStateOnUiThread(Ljava/lang/CharSequence;IIIIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_15
    invoke-static {v9}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateInputStateForStylusWriting()V

    return-void

    :goto_a
    invoke-static {v9}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method
