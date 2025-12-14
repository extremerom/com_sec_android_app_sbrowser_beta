.class Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->getWebsiteInfoFetcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->k(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->t(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->isPermissionAllowed()Z

    move-result v0

    const-string v1, "PrivacyInfoDialog"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$6;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->n(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const-string v0, "[Mic] : allowed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "[Mic] : not allowed"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method
