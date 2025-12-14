.class Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;->restorePreviousValues()V

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/FeatureVariationTestPreferenceFragment;Ljava/lang/String;)V

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setLoadedCsc(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method
