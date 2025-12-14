.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getCachedFiltersFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "contentblock_filters_cache.bin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getConfig(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, ""

    const-string v1, "contentblock_list.json"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersFileUtils;->getFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultFilter(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, ""

    const-string v1, "contentblock_default_list.ini"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersFileUtils;->getFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appicon/"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/BlockersFileUtils;->getFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
