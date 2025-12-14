.class Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$eventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "553"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$eventId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$url:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/custom_tab_intent/CustomTabIntentUtil;->openInternalCustomTab(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$activity:Landroid/app/Activity;

    const v2, 0x7f140bf7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/SuggestionDialog$1;->val$activity:Landroid/app/Activity;

    const v0, 0x7f060203

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
