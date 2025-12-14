.class public Lcom/sec/terrace/browser/TinServiceTabLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/TinServiceTabLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/sec/terrace/browser/TinServiceTabLauncher;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TinServiceTabLauncher;->sInstance:Lcom/sec/terrace/browser/TinServiceTabLauncher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/TinServiceTabLauncher;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TinServiceTabLauncher;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/TinServiceTabLauncher;->sInstance:Lcom/sec/terrace/browser/TinServiceTabLauncher;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/TinServiceTabLauncher;->sInstance:Lcom/sec/terrace/browser/TinServiceTabLauncher;

    return-object v0
.end method


# virtual methods
.method public launchTab(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;[B)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1, p3, p2}, Lorg/chromium/webapk/lib/client/WebApkNavigationClient;->createLaunchWebApkIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p5, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, p5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p5, 0x10000000

    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-virtual {p1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p3, 0x3

    if-eq p4, p3, :cond_1

    const/4 p3, 0x4

    if-eq p4, p3, :cond_1

    const/4 p3, 0x5

    if-eq p4, p3, :cond_1

    const/4 p3, 0x6

    if-eq p4, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/terrace/browser/TinMetaInfoHelper;->getMainActivityClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "create_new_tab"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
