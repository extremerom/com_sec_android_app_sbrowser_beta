.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;->getSectionSummaryForPreviewInASingleLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSectionSummaryForPreviewInASingleLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;
    .locals 7
    .param p2    # Landroid/text/Layout;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/TextPaint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v1

    const v2, 0x7f1400fa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getPreviewString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getPreviewStringResourceId()I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result p2

    :goto_0
    invoke-static {v4, p3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getPreviewString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4
.end method

.method public static showSectionSummaryInTextViewInSingeLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;->getSectionSummaryForPreviewInASingleLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
