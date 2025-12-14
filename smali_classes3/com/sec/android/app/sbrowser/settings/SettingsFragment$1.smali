.class Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initializeSetAsDefaultCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->G(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;->SET_AS_DEFAULT:Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TipCardUtils;->updatePreferenceStatus(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/TipCardUtils$TipCardType;)V

    return-void
.end method
