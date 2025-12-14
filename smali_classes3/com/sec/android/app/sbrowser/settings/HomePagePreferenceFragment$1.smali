.class Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->showSetHomePageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->m(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V

    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->setIsPreferenceClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->getOtherPage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    const-string v2, "other_page"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setOtherHomePage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    iget v1, v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    const v1, 0x7f140d5f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getSACodeForHomepage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
