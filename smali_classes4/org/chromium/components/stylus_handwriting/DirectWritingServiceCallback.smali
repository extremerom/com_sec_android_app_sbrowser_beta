.class public Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;
.super Landroid/widget/directwriting/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUNDLE_KEY_SHOW_KEYBOARD:Ljava/lang/String; = "showKeyboard"

.field static final GESTURE_ACTION_RECOGNITION_INFO:Ljava/lang/String; = "recognition_info"

.field static final GESTURE_BUNDLE_KEY_CENTER_POINT:Ljava/lang/String; = "center_point"

.field static final GESTURE_BUNDLE_KEY_END_POINT:Ljava/lang/String; = "end_point"

.field static final GESTURE_BUNDLE_KEY_GESTURE_TYPE:Ljava/lang/String; = "gesture_type"

.field static final GESTURE_BUNDLE_KEY_HIGHEST_POINT:Ljava/lang/String; = "highest_point"

.field static final GESTURE_BUNDLE_KEY_LOWEST_POINT:Ljava/lang/String; = "lowest_point"

.field static final GESTURE_BUNDLE_KEY_START_POINT:Ljava/lang/String; = "start_point"

.field static final GESTURE_BUNDLE_KEY_TEXT_ALTERNATIVE:Ljava/lang/String; = "text_alternative"

.field static final GESTURE_BUNDLE_KEY_TEXT_INSERTION:Ljava/lang/String; = "text_insertion"

.field public static final GESTURE_I_TYPE_FUNCTIONAL:Ljava/lang/String; = "i_type_functional"

.field public static final GESTURE_TYPE_ARCH_TYPE_REMOVE_SPACE:Ljava/lang/String; = "arch_type_remove_space"

.field public static final GESTURE_TYPE_BACKSPACE:Ljava/lang/String; = "backspace"

.field public static final GESTURE_TYPE_U_TYPE_REMOVE_SPACE:Ljava/lang/String; = "u_type_remove_space"

.field public static final GESTURE_TYPE_V_SPACE:Ljava/lang/String; = "v_space"

.field public static final GESTURE_TYPE_WEDGE_SPACE:Ljava/lang/String; = "wedge_space"

.field public static final GESTURE_TYPE_ZIGZAG:Ljava/lang/String; = "zigzag"


# instance fields
.field private mCursorPosition:Landroid/graphics/Point;

.field private mEditableBounds:Landroid/graphics/Rect;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLastText:Ljava/lang/String;

.field private mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

.field private mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.widget.directwriting.IDirectWritingServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$1;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleDwGesture(Landroid/os/Bundle;)V
    .locals 12

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gesture_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Received Direct Writing gesture of type: "

    invoke-static {v2, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DwCallbackImpl"

    invoke-static {v5, v2, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "text_alternative"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v4}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    iput v3, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    const-string v6, "backspace"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "end_point"

    const-string v8, "start_point"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    if-nez v6, :cond_9

    const-string v6, "zigzag"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v6, "v_space"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "lowest_point"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    invoke-static {v4, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->populateDataForAddSpaceOrTextGesture(Lorg/chromium/blink/mojom/StylusWritingGestureData;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_3
    const-string v6, "wedge_space"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "highest_point"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    invoke-static {v4, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->populateDataForAddSpaceOrTextGesture(Lorg/chromium/blink/mojom/StylusWritingGestureData;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_4
    const-string v6, "u_type_remove_space"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "arch_type_remove_space"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, "i_type_functional"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "center_point"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    iput v11, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    goto :goto_3

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Commit fallback text for unsupported gesture: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p0, v2, p1, v10}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->sendCompositionToNative(Ljava/lang/CharSequence;IZ)V

    goto :goto_0

    :cond_7
    const-string p0, "Skip handling unsupported gesture: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_8
    :goto_1
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-direct {p0, v6}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mojoRectClampedToEditableBounds([F)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    iput v9, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    invoke-direct {p0, v6}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mojoRectClampedToEditableBounds([F)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    iput-object v6, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    iput v3, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    :goto_3
    iget v6, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    if-eqz v6, :cond_d

    if-eq v6, v10, :cond_c

    if-eq v6, v9, :cond_b

    if-eq v6, v11, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v11}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    goto :goto_4

    :cond_b
    invoke-static {v9}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    goto :goto_4

    :cond_c
    invoke-static {v10}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    goto :goto_4

    :cond_d
    invoke-static {v3}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    :goto_4
    invoke-direct {p0, v5}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mojoRectClampedToEditableBounds([F)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->javaStringToMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v2

    iput-object v2, v4, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    const-string v2, "text_insertion"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    invoke-interface {v1, v0, p1}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->sendStylusWritingSALogging(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    const/4 p1, -0x1

    invoke-interface {p0, p1, v4}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->handleStylusWritingGestureAction(ILorg/chromium/blink/mojom/StylusWritingGestureData;)V

    return-void
.end method

.method private static javaStringToMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/mojo_base/mojom/String16;

    invoke-direct {p0}, Lorg/chromium/mojo_base/mojom/String16;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo_base/mojom/String16;->data:[S

    return-object p0
.end method

.method private mojoRectClampedToEditableBounds([F)Lorg/chromium/gfx/mojom/Rect;
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-static {v1, v3, v2}, Lorg/chromium/base/MathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x1

    aget p1, p1, v2

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-static {p1, v3, p0}, Lorg/chromium/base/MathUtils;->clamp(FFF)F

    move-result p0

    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v1, p1, v0

    aput p0, p1, v2

    invoke-static {p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->toMojoZeroSizeRect([F)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static populateDataForAddSpaceOrTextGesture(Lorg/chromium/blink/mojom/StylusWritingGestureData;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "text_insertion"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, " "

    :cond_0
    invoke-static {p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->javaStringToMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textToInsert:Lorg/chromium/mojo_base/mojom/String16;

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    return-void
.end method

.method private static toMojoZeroSizeRect([F)Lorg/chromium/gfx/mojom/Rect;
    .locals 3

    new-instance v0, Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {v0}, Lorg/chromium/gfx/mojom/Rect;-><init>()V

    const/4 v1, 0x0

    aget v2, p0, v1

    float-to-int v2, v2

    iput v2, v0, Lorg/chromium/gfx/mojom/Rect;->x:I

    const/4 v2, 0x1

    aget p0, p0, v2

    float-to-int p0, p0

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->y:I

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->width:I

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->height:I

    return-object v0
.end method

.method public static bridge synthetic v0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    return-object p0
.end method

.method public static bridge synthetic w0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;

    return-object p0
.end method

.method public static bridge synthetic x0(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->handleDwGesture(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bindEditIn(FF)V
    .locals 0

    return-void
.end method

.method public getBaseLine()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBottom()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCursorLocation(I)Landroid/graphics/PointF;
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mCursorPosition:Landroid/graphics/Point;

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mCursorPosition:Landroid/graphics/Point;

    invoke-direct {p1, p0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public getHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImeOptions()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getInputType()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLeft()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLineAscent(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineBaseline(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineBottom(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineDescent(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineEnd(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineForOffset(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineHeightByIndex(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineMax(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineMaxIncludePadding(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineStart(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineTop(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLineVisibleEnd(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOffsetForPosition(FF)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingBottom()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingEnd()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPaddingTop()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getParagraphDirection(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getRight()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getScrollY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectionEnd()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastSelectionEnd:I

    return p0
.end method

.method public getSelectionStart()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastSelectionStart:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getTextAreaRect(I)Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getTop()I
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHoverIconShowing()Z
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;

    invoke-interface {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;->isHandwritingIconShowing()Z

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "showKeyboard"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x12d

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFinishRecognition()V
    .locals 0

    return-void
.end method

.method public onTextViewExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public semForceHideSoftInput()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setImeCallback(Lorg/chromium/content_public/browser/StylusWritingImeCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTextSelection(Ljava/lang/CharSequence;I)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setTriggerCallback(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mTriggerCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;

    return-void
.end method

.method public updateBoundedEditTextRect()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateEditableBounds(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Initializer;
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditableBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mCursorPosition:Landroid/graphics/Point;

    return-void
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method

.method public updateInputState(Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastText:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastSelectionStart:I

    iput p3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->mLastSelectionEnd:I

    return-void
.end method
