.class Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/help_intro/utils/ErrorReportDialogListener;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$1;->val$listener:Lcom/sec/android/app/sbrowser/help_intro/utils/ErrorReportDialogListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/ErrorReportDialogListener;->onButtonClicked()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->b(Landroid/app/Activity;Landroid/text/TextPaint;)V

    return-void
.end method
