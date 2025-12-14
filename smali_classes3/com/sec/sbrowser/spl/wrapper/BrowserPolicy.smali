.class public Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sGetAutoFillSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetCookiesSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetHttpProxy:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

.field private static sGetJavaScriptSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

.field private static sGetPopupsSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.app.enterprise.BrowserPolicy"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getAutoFillSetting"

    invoke-direct {v1, v0, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetAutoFillSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "getCookiesSetting"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetCookiesSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "getJavaScriptSetting"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetJavaScriptSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const-string v3, "getHttpProxy"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetHttpProxy:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const-string v3, "getPopupsSetting"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetPopupsSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "getAutoFillSetting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetAutoFillSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getCookiesSetting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetCookiesSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getJavaScriptSetting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetJavaScriptSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getHttpProxy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetHttpProxy:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "getPopupsSetting"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetPopupsSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetAutoFillSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getCookiesSetting()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetCookiesSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getHttpProxy()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetHttpProxy:Lcom/sec/sbrowser/spl/util/ReflectMethod$S;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$S;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJavaScriptSetting()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetJavaScriptSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPopupsSetting()Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/BrowserPolicy;->sGetPopupsSetting:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
