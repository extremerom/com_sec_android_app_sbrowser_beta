.class public Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;


# instance fields
.field private mIsCustomProxyUsed:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    return p0
.end method

.method private applyCustomProxySettings(Ljava/lang/String;)V
    .locals 0

    const-string p0, "knox-custom-proxy-server"

    invoke-static {p0, p1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->mIsCustomProxyUsed:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->applyCustomProxySettings(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;

    return-object v0
.end method


# virtual methods
.method public appendSwitchesIfNeeded()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler$ProxyReader;-><init>(Lcom/sec/android/app/sbrowser/net/SBrowserProxyHandler;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getMDMProxy()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->getHttpProxy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
