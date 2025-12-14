.class public final Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1",
        "Lt/X0;",
        "Landroidx/appcompat/widget/SeslSeekBar;",
        "seekBar",
        "",
        "progressValue",
        "",
        "fromUser",
        "Ldb/r;",
        "onProgressChanged",
        "(Landroidx/appcompat/widget/SeslSeekBar;IZ)V",
        "onStartTrackingTouch",
        "(Landroidx/appcompat/widget/SeslSeekBar;)V",
        "onStopTrackingTouch",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 4

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getTransparencyFromProgress(I)I

    move-result p1

    int-to-long p2, p1

    const-string v0, "801"

    const-string v1, "7056"

    invoke-static {v0, v1, p2, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const/16 p2, 0x32

    if-gt p1, p2, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I

    move-result p3

    if-ge p3, p2, :cond_1

    :cond_0
    if-lt p1, p2, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I

    move-result p3

    if-gt p3, p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setMIsNeedRefresh$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Z)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMSeekbarText$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_9

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getCurrentTransparentText(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-virtual {p3}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140340

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-virtual {p3}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1401d9

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMSeekbarLayout$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/LinearLayout;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setPreviewImage(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMIsNeedRefresh$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setMIsNeedRefresh$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setPreviewImageColors(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMWidgetListDataModel$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->getWidgetData()Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setPreviewTitle(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMContext$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$isDarkFontRequired(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAppWidgetId$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    invoke-static {p3, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$setMAdapter$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMListView$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->access$getMAdapter$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_3
    const-string p0, "mAdapter"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p0, "mListView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p0, "mContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p0, "mWidgetListDataModel"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_0
    return-void

    :cond_8
    const-string p0, "mSeekbarLayout"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_9
    const-string p0, "mSeekbarText"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    const-string p0, "seekBar"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
