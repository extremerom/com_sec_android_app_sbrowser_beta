.class Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;->showSectionSummaryInTextViewInSingeLine(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$section:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$section:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$section:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$context:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$section:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-static {p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionUiUtils$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
