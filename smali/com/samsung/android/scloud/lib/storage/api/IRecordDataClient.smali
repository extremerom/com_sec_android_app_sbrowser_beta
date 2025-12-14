.class public interface abstract Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "LI8/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadPathMap(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LI8/c;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "LI8/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LI8/c;",
            ">;",
            "Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;",
            ")Z"
        }
    .end annotation
.end method
