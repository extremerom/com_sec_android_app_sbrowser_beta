.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;"
    }
.end annotation


# instance fields
.field private mAutofillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

.field private mAutofillItemViewCompositor:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

.field private mAutofillListView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mIsShowingActionMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillItemViewCompositor:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method private getChangeBounds(Z)LY2/i;
    .locals 3

    new-instance p0, LY2/i;

    invoke-direct {p0}, LY2/i;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method


# virtual methods
.method public getAutofillSelectedItemCount(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;

    return-object p0
.end method

.method public getSummary(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasItem()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstChild(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isItemSelected(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->getItemSelectedList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLastChild(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mIsShowingActionMode:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillItemViewCompositor:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->bindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillListView:Landroid/view/View;

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillListView:Landroid/view/View;

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0042

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;)V

    return-object p2
.end method

.method public setBottombarFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;->setBottombarFocus()Z

    move-result p0

    return p0
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;

    return-void
.end method

.method public setShowingActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mIsShowingActionMode:Z

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillListView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillListView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v2, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mAutofillListView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b012a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
