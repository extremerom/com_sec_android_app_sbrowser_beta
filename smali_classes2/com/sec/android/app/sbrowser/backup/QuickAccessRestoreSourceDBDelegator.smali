.class public interface abstract Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\u0003H&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "",
        "openRestoreDatabase",
        "",
        "restoreAbsolutePath",
        "",
        "canRestoreDB",
        "query",
        "isQAEdited",
        "queryBuilder",
        "Landroid/database/sqlite/SQLiteQueryBuilder;",
        "getQuickAccessEntity",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "nextValueExist",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract canRestoreDB()Z
.end method

.method public abstract getQuickAccessEntity()Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract nextValueExist()Z
.end method

.method public abstract openRestoreDatabase(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract query(ZLandroid/database/sqlite/SQLiteQueryBuilder;)Z
    .param p2    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
