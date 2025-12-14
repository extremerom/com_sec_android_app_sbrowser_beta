.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string p3, "seekBar"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingUtils$Companion;->getTransparencyFromProgress(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->setAlphaValue(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-static {p3, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->access$getTransparencyStateDescriptionFromProgress(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lf1/W;->a:Ljava/util/WeakHashMap;

    new-instance p3, Lf1/J;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    const v1, 0x7f0b0d24

    const-class v2, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lf1/J;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {p3, p1, p2}, Lf1/L;->g(Landroid/view/View;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->setBackgroundColor()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->setPreviewImage()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment$seekBarChangeListener$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->getAlphaValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "752"

    const-string p2, "7532"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
