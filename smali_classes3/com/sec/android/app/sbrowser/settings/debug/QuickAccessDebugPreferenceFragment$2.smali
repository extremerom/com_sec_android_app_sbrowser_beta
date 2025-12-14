.class Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initAddSampleItemsPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Lm/k;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140b51

    invoke-virtual {p1, v0}, Lm/k;->a(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;)V

    const-string p0, "OK"

    invoke-virtual {p1, p0, v0}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p0, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method
