.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateSiteItemIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 1

    const-string p0, "QuickAccessRepository"

    const-string v0, "failed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 3

    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemByUrl(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    const-string v1, "QuickAccessRepository"

    if-nez v0, :cond_1

    const-string p0, "unknown item"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "not modified"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->j(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)Landroid/content/Context;

    move-result-object p0

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIconByIconUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
