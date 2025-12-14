.class public Lcom/sec/terrace/browser/webapps/TerraceWebApkValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static canWebApkHandleUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->canWebApkHandleUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/sec/terrace/base/TestWaiver;
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
