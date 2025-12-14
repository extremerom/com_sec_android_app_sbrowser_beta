.class public Lorg/chromium/content/browser/input/StylusGestureConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/StylusGestureConverter$UmaGestureType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static createGestureData(Landroid/view/inputmethod/DeleteGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->c(Landroid/view/inputmethod/DeleteGesture;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->p(Landroid/view/inputmethod/DeleteGesture;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->h(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toTwoMojoRects(Landroid/graphics/RectF;)[Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    aget-object v1, p0, v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    aget-object p0, p0, v3

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method private static createGestureData(Landroid/view/inputmethod/DeleteRangeGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->a(Landroid/view/inputmethod/DeleteRangeGesture;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->q(Landroid/view/inputmethod/DeleteRangeGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->i(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/RectF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->B(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/RectF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method public static createGestureData(Landroid/view/inputmethod/HandwritingGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 1

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->s(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->n(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/SelectGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->C(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->m(Ljava/lang/Object;)Landroid/view/inputmethod/InsertGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/InsertGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->D(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->k(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/DeleteGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->w(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->g(Ljava/lang/Object;)Landroid/view/inputmethod/RemoveSpaceGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/RemoveSpaceGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->f(Ljava/lang/Object;)Landroid/view/inputmethod/JoinOrSplitGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/JoinOrSplitGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->A(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->o(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/SelectRangeGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->z(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->logGestureType(I)V

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->l(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->createGestureData(Landroid/view/inputmethod/DeleteRangeGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createGestureData(Landroid/view/inputmethod/InsertGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->m(Landroid/view/inputmethod/InsertGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->v(Landroid/view/inputmethod/InsertGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textToInsert:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->c(Landroid/view/inputmethod/InsertGesture;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method private static createGestureData(Landroid/view/inputmethod/JoinOrSplitGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->r(Landroid/view/inputmethod/JoinOrSplitGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->f(Landroid/view/inputmethod/JoinOrSplitGesture;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method private static createGestureData(Landroid/view/inputmethod/RemoveSpaceGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->s(Landroid/view/inputmethod/RemoveSpaceGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->g(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->A(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method private static createGestureData(Landroid/view/inputmethod/SelectGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->d(Landroid/view/inputmethod/SelectGesture;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->t(Landroid/view/inputmethod/SelectGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->j(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toTwoMojoRects(Landroid/graphics/RectF;)[Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    aget-object v1, p0, v2

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    aget-object p0, p0, v3

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method private static createGestureData(Landroid/view/inputmethod/SelectRangeGesture;)Lorg/chromium/blink/mojom/StylusWritingGestureData;
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/StylusWritingGestureData;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->action:I

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->b(Landroid/view/inputmethod/SelectRangeGesture;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->granularity:I

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->n(Landroid/view/inputmethod/SelectRangeGesture;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->textAlternative:Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->d(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/RectF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->startRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-static {p0}, Lorg/chromium/components/webauthn/cred_man/c;->t(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/RectF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/StylusWritingGestureData;->endRect:Lorg/chromium/gfx/mojom/Rect;

    return-object v0
.end method

.method public static logGestureType(I)V
    .locals 2

    const-string v0, "InputMethod.StylusHandwriting.Gesture"

    const/16 v1, 0xb

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private static toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;
    .locals 2

    new-instance v0, Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {v0}, Lorg/chromium/gfx/mojom/Rect;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->y:I

    const/4 p0, 0x0

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->width:I

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->height:I

    return-object v0
.end method

.method private static toMojoRect(Landroid/graphics/RectF;)Lorg/chromium/gfx/mojom/Rect;
    .locals 3

    new-instance v0, Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {v0}, Lorg/chromium/gfx/mojom/Rect;-><init>()V

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->y:I

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->width:I

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->height:I

    return-object v0
.end method

.method private static toMojoString(Ljava/lang/String;)Lorg/chromium/mojo_base/mojom/String16;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/chromium/mojo_base/mojom/String16;

    invoke-direct {p0}, Lorg/chromium/mojo_base/mojom/String16;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo_base/mojom/String16;->data:[S

    return-object p0
.end method

.method private static toTwoMojoRects(Landroid/graphics/RectF;)[Lorg/chromium/gfx/mojom/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p0

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    invoke-static {v1}, Lorg/chromium/content/browser/input/StylusGestureConverter;->toMojoRect(Landroid/graphics/PointF;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    filled-new-array {p0, v0}, [Lorg/chromium/gfx/mojom/Rect;

    move-result-object p0

    return-object p0
.end method
