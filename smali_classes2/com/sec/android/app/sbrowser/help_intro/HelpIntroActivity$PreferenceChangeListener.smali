.class Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;-><init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->m(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowPermissionPage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    new-instance p2, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionCommonView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->j(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-direct {p2, v0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionCommonView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->l(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionCommonView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->k(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;->getPageView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/n;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->o(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity$PreferenceChangeListener;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->n(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
