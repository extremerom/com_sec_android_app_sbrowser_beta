.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a#\u0010\u0008\u001a\u00020\u0007*\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u0019\u0010\u000c\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u0019\u0010\u000e\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "",
        "isSynced",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z",
        "",
        "accountName",
        "accountType",
        "Ldb/r;",
        "insertAccountFieldsOnCreate",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "timestamp",
        "insertSyncFieldsOnUpdate",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V",
        "insertSyncFieldsOnDelete",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final insertAccountFieldsOnCreate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setAccountType(Ljava/lang/String;)V

    return-void
.end method

.method public static final insertSyncFieldsOnDelete(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->getRandomDupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDeleted(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDirty(I)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setSync5(Ljava/lang/String;)V

    return-void
.end method

.method public static final insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDirty(I)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setSync5(Ljava/lang/String;)V

    return-void
.end method

.method public static final isSynced(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync1()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
