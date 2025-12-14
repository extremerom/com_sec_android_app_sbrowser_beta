.class public Lcom/sec/terrace/browser/webapps/TinWebappDirectoryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final UPDATE_DIRECTORY_PATH:Ljava/lang/String; = "webapk/update"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static final getWebApkUpdateDirectory()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/chromium/base/PathUtils;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webapk/update"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getWebApkUpdateFilePathForStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebappDirectoryManager;->getWebApkUpdateDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
