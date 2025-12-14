.class public Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;


# instance fields
.field private mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->addObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)V

    return-object v0
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0807

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->setDelegate(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->startDismissalCount()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    return-object p0
.end method

.method public onCloseButtonClicked()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onCloseButtonClicked()V

    const-string v0, "SavePasswordInfoBar"

    const-string v1, "onCloseButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->stopDismissalCount()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->removeObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V

    return-void
.end method

.method public onMigrationCompleted()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->updateLayout()V

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 2

    const-string v0, "SavePasswordInfoBar"

    const-string v1, "onPrimaryButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->stopDismissalCount()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->removeObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 2

    const-string v0, "SavePasswordInfoBar"

    const-string v1, "onSecondaryButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->stopDismissalCount()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->removeObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V

    return-void
.end method

.method public onTertiaryButtonClicked()V
    .locals 1

    const-string p0, "SavePasswordInfoBar"

    const-string v0, "onTertiaryButtonClicked"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLayout()V
    .locals 2

    const-string v0, "SavePasswordInfoBar"

    const-string v1, "updateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout;->updateLayout()V

    return-void
.end method
