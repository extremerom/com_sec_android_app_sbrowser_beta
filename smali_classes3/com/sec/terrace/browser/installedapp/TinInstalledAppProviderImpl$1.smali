.class Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->filterInstalledApps([Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;ZLorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Landroid/util/Pair<",
        "[",
        "Lorg/chromium/installedapp/mojom/RelatedApplication;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;

.field final synthetic val$callback:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

.field final synthetic val$frameUrl:Lorg/chromium/url/GURL;

.field final synthetic val$manifestUrl:Lorg/chromium/url/mojom/Url;

.field final synthetic val$relatedApps:[Lorg/chromium/installedapp/mojom/RelatedApplication;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;[Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->this$0:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;

    iput-object p2, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$relatedApps:[Lorg/chromium/installedapp/mojom/RelatedApplication;

    iput-object p3, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$manifestUrl:Lorg/chromium/url/mojom/Url;

    iput-object p4, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$frameUrl:Lorg/chromium/url/GURL;

    iput-object p5, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$callback:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->lambda$onPostExecute$0(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    return-void
.end method

.method private static synthetic lambda$onPostExecute$0(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;->call([Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    return-void
.end method


# virtual methods
.method public doInBackground()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[",
            "Lorg/chromium/installedapp/mojom/RelatedApplication;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->this$0:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;

    iget-object v1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$relatedApps:[Lorg/chromium/installedapp/mojom/RelatedApplication;

    iget-object v2, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$manifestUrl:Lorg/chromium/url/mojom/Url;

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$frameUrl:Lorg/chromium/url/GURL;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->b(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;[Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->doInBackground()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "[",
            "Lorg/chromium/installedapp/mojom/RelatedApplication;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Lorg/chromium/installedapp/mojom/RelatedApplication;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->this$0:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->val$callback:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

    new-instance v2, Lcom/sec/terrace/browser/installedapp/a;

    invoke-direct {v2, p0, v0}, Lcom/sec/terrace/browser/installedapp/a;-><init>(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    int-to-long p0, p1

    invoke-static {v1, v2, p0, p1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->a(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;Lcom/sec/terrace/browser/installedapp/a;J)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
