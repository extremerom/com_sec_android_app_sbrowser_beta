.class public Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging$BrowserPackageName;
    }
.end annotation


# instance fields
.field private final mBrowsablePackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->mBrowsablePackageMap:Ljava/util/Map;

    const p0, 0x7f140c10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "com.sec.android.app.sbrowser.beta.beta"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const p0, 0x7f140c07

    const-string v1, "com.android.chrome"

    const v2, 0x7f140c11

    const-string v3, "com.UCMobile"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "com.UCMobile.intl"

    const v1, 0x7f140c13

    const-string v3, "com.yandex.browser"

    invoke-static {v2, v0, p0, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const p0, 0x7f140c0d

    const-string v1, "com.opera.browser"

    const v2, 0x7f140c0f

    const-string v3, "com.tencent.mtt"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const p0, 0x7f140c0b

    const-string v1, "com.nhn.android.search"

    const v2, 0x7f140c08

    const-string v3, "net.daum.android.daum"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const p0, 0x7f140c0a

    const-string v1, "org.mozilla.firefox"

    const v2, 0x7f140c06

    const-string v3, "com.brave.browser"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const p0, 0x7f140c09

    const-string v1, "com.microsoft.emmx"

    const v2, 0x7f140c12

    const-string v3, "com.naver.whale"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->p(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    return-object v0
.end method


# virtual methods
.method public getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const v1, 0x7f140c0c

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->mBrowsablePackageMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    const p0, 0x7f140c0e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "DefaultBrowserLogging"

    const-string v0, "PackageManager returns null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sendEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->getCurrentDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
