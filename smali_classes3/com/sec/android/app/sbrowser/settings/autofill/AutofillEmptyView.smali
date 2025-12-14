.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mEmptyItemView:Landroid/widget/LinearLayout;

.field private mEmptyTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setContentDescription()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyItemView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyItemView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f1502ec

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEmptyView;->setContentDescription()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
