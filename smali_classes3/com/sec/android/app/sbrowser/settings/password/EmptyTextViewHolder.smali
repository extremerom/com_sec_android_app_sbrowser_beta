.class Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field private mEmptyNestedScroll:Landroidx/core/widget/NestedScrollView;

.field private mEmptyParentView:Landroid/widget/LinearLayout;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyView:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0127

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    const v0, 0x7f0b0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyView:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;

    const v0, 0x7f0b049d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyParentView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyNestedScroll:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method private getEmptyTextViewPreRenderedHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public setEmptyText(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f1502ec

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyNestedScroll:Landroidx/core/widget/NestedScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->getEmptyTextViewPreRenderedHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyView:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->mEmptyView:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
