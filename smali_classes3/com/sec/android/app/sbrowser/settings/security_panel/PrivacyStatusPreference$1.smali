.class Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->onBindViewHolder(Lw2/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->dismiss()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->h(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->g(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->h(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->k(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;->setTipMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->f(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140cb9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
