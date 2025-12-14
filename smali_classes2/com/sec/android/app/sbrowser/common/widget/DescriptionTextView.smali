.class public Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;
    }
.end annotation


# instance fields
.field private mStyleSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTextClickListener:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;)Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->mTextClickListener:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    return-object p0
.end method


# virtual methods
.method public setDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->setDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 8

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    const-string v0, "DescriptionTextView"

    const-string v1, "There is no annotation in description"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    check-cast p1, Landroid/text/SpannedString;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/text/SpannedString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;

    invoke-direct {v5, p0, v4}, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$1;-><init>(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->mStyleSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p1, v2}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v2}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v4, v5, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setOnTextClickListener(Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView;->mTextClickListener:Lcom/sec/android/app/sbrowser/common/widget/DescriptionTextView$OnTextClickListener;

    return-void
.end method
