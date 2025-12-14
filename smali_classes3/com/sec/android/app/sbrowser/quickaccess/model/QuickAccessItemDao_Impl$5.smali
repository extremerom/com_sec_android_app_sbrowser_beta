.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;
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
        "com/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5",
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


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(LS2/c;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, LS2/c;->i(IJ)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LS2/c;->x(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getPosition()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIcon()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-interface {p1, v0}, LS2/c;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, LS2/c;->M([B)V

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LS2/c;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDominant()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, LS2/c;->i(IJ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->access$get__quickAccessTypeConverter$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->typeToInt(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)I

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, LS2/c;->i(IJ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->access$get__quickAccessTypeConverter$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessTypeConverter;->titleStateToInt(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)I

    move-result p0

    const/16 v0, 0xa

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, LS2/c;->i(IJ)V

    const/16 p0, 0xb

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0xc

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDirty()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeleted()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0xe

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xf

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, LS2/c;->l(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_2
    const/16 p0, 0x10

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x11

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x12

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync2()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x13

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync3()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x14

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync4()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x15

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync5()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LS2/c;->x(ILjava/lang/String;)V

    const/16 p0, 0x16

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    return-void
.end method

.method public bridge synthetic bind(LS2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$5;->bind(LS2/c;Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR ABORT `quickaccess_item` SET `id` = ?,`title` = ?,`url` = ?,`position` = ?,`touchIcon` = ?,`touchIconUrl` = ?,`dominant` = ?,`type` = ?,`itemId` = ?,`titleState` = ?,`deviceName` = ?,`deviceId` = ?,`dirty` = ?,`deleted` = ?,`accountName` = ?,`accountType` = ?,`sync1` = ?,`sync2` = ?,`sync3` = ?,`sync4` = ?,`sync5` = ? WHERE `id` = ?"

    return-object p0
.end method
