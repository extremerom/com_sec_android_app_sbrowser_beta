.class public Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteInfoPopulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;->lambda$onWebsitePermissionsAvailable$0()V

    return-void
.end method

.method private static synthetic lambda$onWebsitePermissionsAvailable$0()V
    .locals 2

    const-string v0, "PrivacyInfoDialog"

    const-string v1, "website storage data cleard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->i(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getAddress()Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog$WebsiteInfoPopulator;->this$0:Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;->k(Lcom/sec/android/app/sbrowser/page_info/PrivacyInfoDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWebsitePermissionsAvailable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacyInfoDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->clearLocalStoredData(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V

    goto :goto_0

    :cond_3
    return-void
.end method
