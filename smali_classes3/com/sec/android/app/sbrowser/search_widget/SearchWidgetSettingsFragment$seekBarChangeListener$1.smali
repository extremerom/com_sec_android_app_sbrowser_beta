.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;-><init>()V
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
        "com/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    sget-object p3, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$setAlphaValue$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$getBinding(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWidgetSettingsFragmentBinding;->seekbarPercentage:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$getAlphaValue$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$getCanShowNewWidget$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)Z

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$getCurrentTransparentText(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$getAlphaValue$p(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140340

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1401d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$setBackgroundColor(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->access$setPreviewImage(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;)V

    return-void
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
