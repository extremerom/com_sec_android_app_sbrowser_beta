.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->initSecretDownloadTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

.field final synthetic val$tipCard:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->val$tipCard:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setShouldShowSecretDownloadTip(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->l(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->l(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$2;->val$tipCard:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method
