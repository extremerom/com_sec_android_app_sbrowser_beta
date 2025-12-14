.class abstract Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseDefaultBrowserSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;


# direct methods
.method private getDefaultBrowserResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "http:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ".beta"

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    return p0

    :cond_3
    invoke-static {p1, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p0, v1

    :cond_5
    :goto_0
    return p0
.end method


# virtual methods
.method public isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseDefaultBrowserSet;->getDefaultBrowserResolveInfo(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseDefaultBrowserSet;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public onResult(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method
