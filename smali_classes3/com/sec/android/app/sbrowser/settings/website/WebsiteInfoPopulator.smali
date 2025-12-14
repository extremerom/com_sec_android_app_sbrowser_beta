.class public Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;


# instance fields
.field private mWebSiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field mWebsiteInfoFragmentDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;->mWebsiteInfoFragmentDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;

    return-void
.end method


# virtual methods
.method public onWebsitePermissionsAvailable(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;->mWebsiteInfoFragmentDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;->mWebSiteList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;->mWebsiteInfoFragmentDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;->websiteListData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoPopulator;->mWebsiteInfoFragmentDelegate:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFragmentDelegate;->displayWebsiteList(Ljava/util/List;)V

    return-void
.end method
