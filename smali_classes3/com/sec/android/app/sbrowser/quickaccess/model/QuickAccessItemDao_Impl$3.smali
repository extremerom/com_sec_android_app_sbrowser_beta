.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$3;
.super LJ2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;-><init>(LJ2/U;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJ2/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$3",
        "LJ2/e;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "",
        "createQuery",
        "()Ljava/lang/String;",
        "LS2/c;",
        "statement",
        "entity",
        "Ldb/r;",
        "bind",
        "(LS2/c;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(LS2/c;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)V
    .locals 2

    const-string p0, "statement"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entity"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    return-void
.end method

.method public bridge synthetic bind(LS2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$3;->bind(LS2/c;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `quickaccess_item` WHERE `id` = ?"

    return-object p0
.end method
