.class interface abstract Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/provider/TinBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract addHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J
.end method

.method public abstract destroy(JLcom/sec/terrace/browser/provider/TinBrowserProvider;)V
.end method

.method public abstract init(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)J
.end method

.method public abstract queryHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;
.end method

.method public abstract querySurfedDataFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;
.end method

.method public abstract removeHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract toMilliSecondsTime(JLcom/sec/terrace/browser/provider/TinBrowserProvider;J)J
.end method
