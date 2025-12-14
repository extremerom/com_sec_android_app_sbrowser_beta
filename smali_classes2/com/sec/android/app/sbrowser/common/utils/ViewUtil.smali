.class public Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATE_ACTIVATED:[I

.field public static final STATE_EMPTY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a9

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->STATE_EMPTY:[I

    const v0, 0x10102fe

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->STATE_ACTIVATED:[I

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->lambda$showStorageFullDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->lambda$showStorageFullDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static backupViewStates(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->hasStates(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->STATE_ACTIVATED:[I

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->STATE_EMPTY:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static synthetic c(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->lambda$showConfirmDialog$2(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static captureBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "si__ViewUtils"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    const/4 v3, 0x0

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const-string p0, "Bitmap.createBitmap failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bitmap.createBitmap failed! : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v3
.end method

.method public static computeVerticalScrollOffsetForGridView(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    div-int v4, v2, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/J0;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/J0;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    sub-int/2addr v3, v2

    add-int/2addr v3, p1

    div-int/2addr v3, p1

    int-to-float p1, v1

    int-to-float v1, v3

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/J0;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr p1, v1

    sub-int/2addr p1, p0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static contains(Landroid/view/View;[III)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p1, v0

    if-gt v1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    if-gt p2, v2, :cond_1

    const/4 p2, 0x1

    aget p1, p1, p2

    if-gt p1, p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p1

    if-gt p3, p0, :cond_1

    move v0, p2

    :cond_1
    return v0
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->lambda$setConsumeMouseEvent$3(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static disableBlurEffect(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "si__ViewUtils"

    const-string v0, "[disableBlurEffect] reflection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static dismissCustomHoverPopup(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->getHoverPopupWindow(Landroid/view/View;)Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->dismiss()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "si__ViewUtils"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getDefaultAppbarHeight(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070140

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getListViewHeight(Landroid/content/Context;Landroid/widget/Adapter;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p0

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-interface {p1, v3, v2, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v0
.end method

.method public static getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoTextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "FallbackException for getPrefixCharForIndianString "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__ViewUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getWidestChildWidth(Landroid/content/Context;Landroid/widget/Adapter;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p0

    const/4 v2, 0x0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_3

    invoke-interface {p1, v3, v2, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v4, :cond_2

    move v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_2
    return v0
.end method

.method public static getWindowHeight(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "si__ViewUtils"

    const-string v1, "cannot get window width"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "si__ViewUtils"

    const-string v1, "cannot get window width"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static hasStates(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static synthetic lambda$setConsumeMouseEvent$3(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static synthetic lambda$showConfirmDialog$2(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x2

    invoke-interface {p0, p1, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$showStorageFullDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showStorageFullDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static requestFocusDown(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public static requestFocusLeft(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public static requestFocusRight(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public static requestFocusUp(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public static resetStates(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->STATE_EMPTY:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static resetStatesRecursive(Landroid/view/ViewGroup;)V
    .locals 4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStates(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resetStatesRecursive(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static resolveTargetView(Landroid/view/View;[III)Landroid/view/View;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->contains(Landroid/view/View;[III)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->resolveTargetView(Landroid/view/View;[III)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static restoreViewStates(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "[I>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setAccessibilityEnabled(Landroid/view/View;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public static setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 p1, 0x60000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_0
    return-void
.end method

.method public static setActivatedWithBackground(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    if-eqz p1, :cond_2

    const p1, 0x7f060983

    goto :goto_0

    :cond_2
    const p1, 0x7f06020a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public static setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const v0, 0xf4259

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    const-string v3, "tw_screen_background_color_dark"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackgroundWithoutChangingHotspot(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public static setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->drawableHotspotChanged(FF)V

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public static setBlurEffect(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x78

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    return-void
.end method

.method public static setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V
    .locals 8

    const-string v0, "color"

    const-string v1, "si__ViewUtils"

    const-string v2, "android"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->supportBlurEffect()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "sem_popup_menu_blur_background"

    invoke-virtual {v5, v6, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sem_popup_menu_blur_background_dark"

    invoke-virtual {v6, v7, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v4, :cond_1

    move v5, v0

    :cond_1
    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p5, v4, :cond_3

    move p5, v5

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, p5, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "sem_popup_menu_corner_radius"

    const-string v6, "dimen"

    invoke-virtual {v0, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    const v0, 0x7f070348

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    move v0, v2

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_6
    move p0, v2

    :goto_1
    const-string v0, "[setBlurEffect] apply blur effect"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    move p3, v2

    :goto_2
    invoke-virtual {v3, p3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setRadius(I)V

    invoke-virtual {v3, p5}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundColor(I)V

    if-ne p4, v4, :cond_8

    int-to-float p0, p0

    goto :goto_3

    :cond_8
    int-to-float p0, p4

    :goto_3
    invoke-virtual {v3, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    const-string p0, "[setBlurEffect] SemBlurInfo.builder - reflection failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p0, "[setBlurEffect] MajoView.semSetBlurInfo - reflection failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public static setBlurUiHighUltraThick(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0xf425e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0xf4260

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0xfa

    const v8, 0x7f0600ff

    const/4 v5, 0x1

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    return v2

    :cond_2
    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_HIGH_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    const v3, 0x7f0600ff

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_HIGH_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    :goto_0
    int-to-float p0, p2

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "si__ViewUtils"

    const-string p1, "[setBlurUiHighUltraThick] reflection failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setBlurUiLowRegular(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0xf425e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0xf4260

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0xfa

    const v8, 0x7f06005d

    const/4 v5, 0x1

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    return v2

    :cond_2
    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_REGULAR_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    const v3, 0x7f06005d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_REGULAR_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    :goto_0
    int-to-float p0, p2

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "si__ViewUtils"

    const-string p1, "[setBlurUiLowRegular] reflection failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setBlurUiLowUltraThick(Landroid/view/View;I)Z
    .locals 30

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0xf425e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    const v2, 0xf4260

    invoke-static {v2}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    const v15, 0x4164cccd    # 14.3f

    const v16, 0x42b5999a    # 90.8f

    const/16 v5, 0x12c

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const v11, 0x3dcccccd    # 0.1f

    const/high16 v12, -0x3e600000    # -20.0f

    const/4 v13, 0x0

    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-static/range {v4 .. v16}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setColorCuve(Landroid/view/View;IIFFFFFFFFFF)V

    goto :goto_0

    :cond_2
    const v28, 0x4350199a    # 208.1f

    const v29, 0x43764ccd    # 246.3f

    const/16 v18, 0x12c

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v22, -0x40800000    # -1.0f

    const/high16 v23, -0x40800000    # -1.0f

    const v24, 0x3dcccccd    # 0.1f

    const/high16 v25, 0x40a00000    # 5.0f

    const/16 v26, 0x0

    const/high16 v27, 0x437a0000    # 250.0f

    move-object/from16 v17, p0

    move/from16 v19, p1

    invoke-static/range {v17 .. v29}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setColorCuve(Landroid/view/View;IIFFFFFFFFFF)V

    :goto_0
    return v3

    :cond_3
    :try_start_0
    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v4, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_ULTRA_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_LOW_ULTRA_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    move/from16 v0, p1

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string v0, "si__ViewUtils"

    const-string v2, "[setBlurUiLowUltraThick] reflection failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setBlurUiMediumUltraThin(Landroid/view/View;IFFFFIZ)Z
    .locals 14

    move v2, p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0xf425e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v0, 0xf4260

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v13, 0x1

    if-nez v0, :cond_3

    if-eqz p7, :cond_2

    const v11, 0x4154cccd    # 13.3f

    const v12, 0x436b199a    # 235.1f

    const/16 v1, 0x12c

    const v7, 0x3eb33333    # 0.35f

    const/high16 v8, -0x3f600000    # -5.0f

    const/4 v9, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v12}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setColorCuve(Landroid/view/View;IIFFFFFFFFFF)V

    goto :goto_0

    :cond_2
    const v11, 0x418e6666    # 17.8f

    const v12, 0x43774ccd    # 247.3f

    const/16 v1, 0x12c

    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x436b0000    # 235.0f

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v12}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setColorCuve(Landroid/view/View;IIFFFFFFFFFF)V

    :goto_0
    return v13

    :cond_3
    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    if-eqz p7, :cond_4

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THIN_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_ULTRA_THIN_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    :goto_2
    move/from16 v2, p6

    goto :goto_3

    :cond_5
    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)V

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundColor(I)V

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object v0

    move-object v2, p0

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v13

    :catch_0
    const-string v0, "si__ViewUtils"

    const-string v2, "[setBlurUiMediumUltraThin] reflection failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$1;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$1;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setColorCuve(Landroid/view/View;IIFFFFFFFFFF)V
    .locals 9

    move v0, p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    move-object v2, v1

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v2 .. v8}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurve(FFFFFF)V

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setRadius(I)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    goto :goto_0

    :cond_1
    move v0, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)V

    :goto_0
    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "si__ViewUtils"

    const-string v1, "[setColorCuve] reflection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setConsumeMouseEvent(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method public static setDrawableTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1
.end method

.method public static setEnabledRecursive(Landroid/view/View;Z)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledRecursive(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setEnabledWithAlpha(Landroid/view/View;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setHovered(Z)V

    :cond_2
    return-void
.end method

.method public static setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->setHoverPopupType(Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__ViewUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->setHoverPopupType(Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__ViewUtils"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setListItemContentDescription(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f14081f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "%s, %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setMenuItemEnabled(Landroid/view/MenuItem;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public static setMenuItemTitle(Landroid/view/MenuItem;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method public static setMenuItemVisible(Landroid/view/MenuItem;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public static setTooltip(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->setHoverPopupType(Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__ViewUtils"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const v0, 0xf4254

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/ContentDescHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private static shouldIgnoreBlurEffect()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getCurrentActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isReduceTransparency()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const-string v0, "si__ViewUtils"

    const-string v1, "[setBlurEffect] cannot apply blur effect by system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isRemoveAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const v0, 0x7f010037

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$3;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$3;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static showBasicEditModeCheckBoxOutroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isRemoveAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const v0, 0x7f010035

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$4;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil$4;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized showConfirmDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lm/l;
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance v1, Lm/k;

    const v2, 0x7f1502e8

    invoke-direct {v1, p0, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p2

    iget-object v1, p2, Lm/k;->a:Lm/h;

    iput-object p3, v1, Lm/h;->f:Ljava/lang/CharSequence;

    invoke-virtual {p2, p4, p5}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p2

    invoke-virtual {p2, p6, p7}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/common/utils/e;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p7}, Lcom/sec/android/app/sbrowser/common/utils/e;-><init>(ILjava/lang/Object;)V

    iget-object p4, p2, Lm/k;->a:Lm/h;

    iput-object p3, p4, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p2}, Lm/k;->create()Lm/l;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static showContextMenu(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->showContextMenu(FF)Z

    move-result p0

    return p0
.end method

.method public static showStorageFullDialog(Landroid/content/Context;)Lm/l;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140fde

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    const v1, 0x7f140fdc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->f:Ljava/lang/CharSequence;

    const v1, 0x7f140fdd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/d;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/d;-><init>(I)V

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-object p0, v1, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fails to show dialog. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ViewUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static supportBlurEffect()Z
    .locals 1

    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->shouldIgnoreBlurEffect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static tintMenuIcon(Landroid/view/MenuItem;Landroid/app/Activity;)V
    .locals 2

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0601f4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public static updateQueryHint(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, -0xf

    const/4 v2, 0x1

    const/16 v3, -0xf

    invoke-virtual {p2, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    const/16 v1, 0x21

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
