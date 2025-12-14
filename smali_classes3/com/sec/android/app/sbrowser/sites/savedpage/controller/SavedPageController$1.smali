.class Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->delete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

.field final synthetic val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

.field final synthetic val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->d(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->isSmartSearchAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)I

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchData;->remove(Ljava/lang/Long;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->val$savedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->e(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    :cond_2
    return-void
.end method
