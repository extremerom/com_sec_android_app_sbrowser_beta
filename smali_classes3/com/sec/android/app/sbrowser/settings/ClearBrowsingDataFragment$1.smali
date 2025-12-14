.class Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->setTimeRangeSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->q(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->k(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setClearBrowsingDataTimeRangeSpinnerSelectedIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->t(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->n(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->o(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Time Range"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
