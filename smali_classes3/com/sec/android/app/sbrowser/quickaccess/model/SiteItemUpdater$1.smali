.class Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->update(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;->onFailed()V

    :cond_0
    return-void
.end method

.method public onFetched(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;->onSuccess(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/SiteItem;)V

    :cond_0
    return-void
.end method

.method public onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;->onFailed()V

    :cond_0
    return-void
.end method
