.class public abstract Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Cdn;,
        Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder$Api;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->getStringFromPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkUrlBuilder;->getWebApkServerProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringFromPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getWebApkServerProfile()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PRD"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "pref_webapk_profile"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
