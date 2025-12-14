.class Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;->showSetOtherDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getCountryCodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()I
    .locals 0

    const p0, 0x7f140535

    return p0
.end method

.method public onNegativeClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Other"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CountryCodePreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
