.class final Lorg/chromium/content/browser/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;,
        Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

.field private final mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private mHasCoordinateInfo:Z

.field private mHasInsertionMarker:Z

.field private mHasPendingImmediateRequest:Z

.field private mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

.field private mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

.field private mInsertionMarkerBottom:F

.field private mInsertionMarkerHorizontal:F

.field private mInsertionMarkerTop:F

.field private mIsEditable:Z

.field private mIsInsertionMarkerVisible:Z

.field private mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMonitorModeEnabled:Z

.field private mScale:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

.field private final mViewOrigin:[I


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    iput-object p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    iput-object p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    return-void
.end method

.method public static create(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
    .locals 2

    new-instance v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    new-instance v1, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;

    invoke-direct {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;-><init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V

    return-object v0
.end method

.method private updateCursorAnchorInfo(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionStart()I

    move-result v3

    iget-object v4, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v4}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionEnd()I

    move-result v4

    iget-object v5, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v5}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextStart()I

    move-result v5

    iget-object v6, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v6}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextEnd()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    if-ltz v5, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v6, v8, :cond_1

    iget-object v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    if-eqz v1, :cond_1

    array-length v6, v1

    move v15, v2

    :goto_0
    if-ge v15, v6, :cond_1

    aget-object v8, v1, v15

    iget-object v9, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget v10, v8, Lorg/chromium/gfx/mojom/Rect;->x:I

    int-to-float v11, v10

    iget v12, v8, Lorg/chromium/gfx/mojom/Rect;->y:I

    int-to-float v13, v12

    iget v14, v8, Lorg/chromium/gfx/mojom/Rect;->width:I

    add-int/2addr v10, v14

    int-to-float v14, v10

    iget v8, v8, Lorg/chromium/gfx/mojom/Rect;->height:I

    add-int/2addr v12, v8

    int-to-float v12, v12

    const/16 v16, 0x1

    move-object v8, v9

    move v9, v5

    move v10, v11

    move v11, v13

    move v13, v12

    move v12, v14

    move/from16 v14, v16

    invoke-virtual/range {v8 .. v14}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    add-int/2addr v5, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    iget v4, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-boolean v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-eqz v1, :cond_3

    iget-object v8, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget v9, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    iget v10, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    iget v12, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    iget-boolean v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-eqz v1, :cond_2

    :goto_1
    move v13, v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    goto :goto_1

    :goto_2
    move v11, v12

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_3
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    if-eqz v1, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_5

    iget-object v1, v1, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->visibleLineBounds:[Lorg/chromium/gfx/mojom/Rect;

    if-eqz v1, :cond_4

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    iget-object v6, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget v7, v5, Lorg/chromium/gfx/mojom/Rect;->x:I

    int-to-float v8, v7

    iget v9, v5, Lorg/chromium/gfx/mojom/Rect;->y:I

    int-to-float v10, v9

    iget v11, v5, Lorg/chromium/gfx/mojom/Rect;->width:I

    add-int/2addr v7, v11

    int-to-float v7, v7

    iget v5, v5, Lorg/chromium/gfx/mojom/Rect;->height:I

    add-int/2addr v9, v5

    int-to-float v5, v9

    invoke-static {v6, v8, v10, v7, v5}, Lorg/chromium/components/webauthn/cred_man/c;->p(Landroid/view/inputmethod/CursorAnchorInfo$Builder;FFFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    iget-object v1, v1, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->textAppearanceInfo:Lorg/chromium/blink/mojom/TextAppearanceInfo;

    iget-object v1, v1, Lorg/chromium/blink/mojom/TextAppearanceInfo;->textColor:Lorg/chromium/skia/mojom/SkColor;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/c;->h()Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v3

    iget-object v4, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    iget-object v4, v4, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->textAppearanceInfo:Lorg/chromium/blink/mojom/TextAppearanceInfo;

    iget-object v4, v4, Lorg/chromium/blink/mojom/TextAppearanceInfo;->textColor:Lorg/chromium/skia/mojom/SkColor;

    iget v4, v4, Lorg/chromium/skia/mojom/SkColor;->value:I

    invoke-static {v3, v4}, Lorg/chromium/components/webauthn/cred_man/c;->i(Landroid/view/inputmethod/TextAppearanceInfo$Builder;I)Landroid/view/inputmethod/TextAppearanceInfo$Builder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/components/webauthn/cred_man/c;->j(Landroid/view/inputmethod/TextAppearanceInfo$Builder;)Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/chromium/components/webauthn/cred_man/c;->q(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/TextAppearanceInfo;)V

    :cond_5
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    iget-object v1, v1, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->editorBoundsInfo:Lorg/chromium/blink/mojom/EditorBoundsInfo;

    iget-object v3, v1, Lorg/chromium/blink/mojom/EditorBoundsInfo;->editorBounds:Lorg/chromium/gfx/mojom/RectF;

    iget-object v1, v1, Lorg/chromium/blink/mojom/EditorBoundsInfo;->handwritingBounds:Lorg/chromium/gfx/mojom/RectF;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_6

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v4, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-static {}, Lorg/chromium/components/autofill/a;->c()Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    iget v7, v3, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v8, v3, Lorg/chromium/gfx/mojom/RectF;->y:F

    iget v9, v3, Lorg/chromium/gfx/mojom/RectF;->width:F

    add-float/2addr v9, v7

    iget v3, v3, Lorg/chromium/gfx/mojom/RectF;->height:F

    add-float/2addr v3, v8

    invoke-direct {v6, v7, v8, v9, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v5, v6}, Lorg/chromium/components/autofill/a;->d(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v3

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v7, v1, Lorg/chromium/gfx/mojom/RectF;->y:F

    iget v8, v1, Lorg/chromium/gfx/mojom/RectF;->width:F

    add-float/2addr v8, v6

    iget v1, v1, Lorg/chromium/gfx/mojom/RectF;->height:F

    add-float/2addr v1, v7

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3, v5}, Lorg/chromium/components/autofill/a;->o(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/components/autofill/a;->e(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v1

    invoke-static {v4, v1}, Lorg/chromium/components/autofill/a;->j(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo;)V

    :cond_6
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    :cond_7
    iget-object v1, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    if-eqz v1, :cond_8

    iget-object v3, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v3}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_8
    iput-boolean v2, v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    return-void
.end method


# virtual methods
.method public focusedNodeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    return-void
.end method

.method public invalidateLastCursorAnchorInfo()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    return-void
.end method

.method public onRequestCursorUpdates(ZZLandroid/view/View;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->invalidateLastCursorAnchorInfo()V

    :cond_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    invoke-direct {p0, p3}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    :cond_2
    return p2
.end method

.method public onUpdateFrameInfo(FFZZFFFLandroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    invoke-interface {v0, p8, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;->getLocationOnScreen(Landroid/view/View;[I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    cmpl-float p2, v1, p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    cmpl-float p2, v0, p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-ne p3, p2, :cond_1

    iget-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-ne p4, p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    cmpl-float p2, p5, p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    cmpl-float p2, p6, p2

    if-nez p2, :cond_1

    iget p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    cmpl-float p2, p7, p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    iput-boolean v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    iput p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    iput v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    iput v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    iput-boolean p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    iput-boolean p4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    iput p5, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    iput p6, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    iput p7, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    :cond_2
    iget-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez p1, :cond_4

    :cond_3
    invoke-direct {p0, p8}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public updateCursorAnchorInfoData(Lorg/chromium/blink/mojom/InputCursorAnchorInfo;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputCursorAnchorInfo:Lorg/chromium/blink/mojom/InputCursorAnchorInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/InputCursorAnchorInfo;->requested:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    :cond_1
    return-void
.end method
