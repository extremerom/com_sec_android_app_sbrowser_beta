.class public Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;
.super Lcom/osp/app/signin/sasdk/browser/BaseBrowser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$NavigationCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_GOOGLE_URL:Ljava/lang/String; = "https://www.google.com"

.field private static final TAG:Ljava/lang/String; = "CustomTabBrowser"


# instance fields
.field private mCustomTabsClient:LH/k;

.field private mCustomTabsServiceConnection:LH/v;

.field private mCustomTabsSession:LH/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)LH/k;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsClient:LH/k;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;LH/k;)LH/k;
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsClient:LH/k;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->launchCustomTab(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic access$202(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;LH/w;)LH/w;
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    return-object p1
.end method

.method private bindCustomTabsService()V
    .locals 4

    new-instance v0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$1;

    invoke-direct {v0, p0}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$1;-><init>(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;)V

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsServiceConnection:LH/v;

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mTargetBrowserPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsServiceConnection:LH/v;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, LH/v;->setApplicationContext(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private findPriorityCustomTabBrowser(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    sget-object v0, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->PACKAGE_NAMES_FOR_CUSTOM_TAB_BROWSERS:Ljava/util/List;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "findPriorityCustomTabBrowser resolveInfo : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CustomTabBrowser"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSession()LH/w;
    .locals 5

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsClient:LH/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    if-nez v2, :cond_2

    new-instance v2, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$NavigationCallback;

    invoke-direct {v2, v1}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$NavigationCallback;-><init>(Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser$1;)V

    new-instance v3, LH/j;

    invoke-direct {v3, v2}, LH/j;-><init>(LH/c;)V

    iget-object v2, v0, LH/k;->a:Lc/e;

    :try_start_0
    invoke-interface {v2, v3}, Lc/e;->u0(LH/j;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, LH/w;

    iget-object v0, v0, LH/k;->b:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3, v0}, LH/w;-><init>(Lc/e;LH/j;Landroid/content/ComponentName;)V

    :catch_0
    :goto_0
    iput-object v1, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    return-object p0
.end method

.method private launchCustomTab(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, LH/p;

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->getSession()LH/w;

    move-result-object v1

    invoke-direct {v0, v1}, LH/p;-><init>(LH/w;)V

    invoke-virtual {v0}, LH/p;->b()LH/q;

    move-result-object v0

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mHeader:Landroid/os/Bundle;

    iget-object v2, v0, LH/q;->a:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v3, "com.android.browser.headers"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, v0, LH/q;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public generateTargetBrowserPackageName()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://www.google.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->findPriorityCustomTabBrowser(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "targetPackageName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomTabBrowser"

    invoke-static {v1, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->bindCustomTabsService()V

    return-void
.end method

.method public unbindCustomTabsService()V
    .locals 2

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsServiceConnection:LH/v;

    const-string v1, "CustomTabBrowser"

    if-nez v0, :cond_0

    const-string p0, "connection already closed."

    invoke-static {v1, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "unbindCustomTabsService"

    invoke-static {v1, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsServiceConnection:LH/v;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsClient:LH/k;

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsSession:LH/w;

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->mCustomTabsServiceConnection:LH/v;

    return-void
.end method
