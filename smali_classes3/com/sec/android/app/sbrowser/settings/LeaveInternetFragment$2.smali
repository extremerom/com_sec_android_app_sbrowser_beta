.class Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;)Landroid/text/Spannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->r(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f140df9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment$2;->val$activity:Landroid/app/Activity;

    const v0, 0x7f0601fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
