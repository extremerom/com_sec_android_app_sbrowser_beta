.class public final Landroidx/appcompat/widget/c;
.super Lt/q0;
.source "SourceFile"

# interfaces
.implements Lt/L;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/widget/ListAdapter;

.field public c:I

.field public final synthetic d:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    const v0, 0x7f0404c8

    invoke-direct {p0, p2, p3, v0}, Lt/q0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget p2, p1, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownGravity:I

    invoke-virtual {p0, p2}, Lt/q0;->setDropDownGravity(I)V

    invoke-virtual {p0, p1}, Lt/q0;->setAnchorView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lt/q0;->setModal(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lt/q0;->setPromptPosition(I)V

    new-instance p1, Lt/J;

    invoke-direct {p1, p0}, Lt/J;-><init>(Landroidx/appcompat/widget/c;)V

    invoke-virtual {p0, p1}, Lt/q0;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic g(Landroidx/appcompat/widget/c;)V
    .locals 0

    invoke-super {p0}, Lt/q0;->show()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/c;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/c;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/c;->c:I

    return-void
.end method

.method public final d(II)V
    .locals 2

    invoke-virtual {p0}, Lt/q0;->isShowing()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lt/q0;->setInputMethodMode(I)V

    invoke-super {p0}, Lt/q0;->show()V

    invoke-virtual {p0}, Lt/q0;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setTextAlignment(I)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Lt/q0;->setSelection(I)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatSpinner;->mOnGlobalLayoutListenerWhenShowing:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_1

    new-instance v0, Lt/K;

    invoke-direct {v0, p0}, Lt/K;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object v0, p1, Landroidx/appcompat/widget/AppCompatSpinner;->mOnGlobalLayoutListenerWhenShowing:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Landroidx/appcompat/widget/b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/b;-><init>(Landroidx/appcompat/widget/c;)V

    invoke-virtual {p0, p1}, Lt/q0;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 10

    invoke-virtual {p0}, Lt/q0;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v0, :cond_1

    iget-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move v0, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Landroidx/appcompat/widget/c;->b:Landroid/widget/ListAdapter;

    check-cast v6, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lt/q0;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v9

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    move v6, v7

    :cond_2
    add-int/lit8 v6, v6, 0x4

    sub-int v7, v5, v3

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lt/q0;->setContentWidth(I)V

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    sub-int v6, v5, v3

    sub-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lt/q0;->setContentWidth(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6}, Lt/q0;->setContentWidth(I)V

    :goto_1
    iget v6, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mDropDownHorizontalOffset:I

    if-nez v6, :cond_5

    iget v6, p0, Landroidx/appcompat/widget/c;->c:I

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_6

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lt/q0;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    goto :goto_2

    :cond_6
    add-int/2addr v3, v6

    add-int/2addr v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Lt/q0;->setHorizontalOffset(I)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lt/q0;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->b:Landroid/widget/ListAdapter;

    return-void
.end method
