.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDtoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toDto",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "toEntity",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
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
.method public static final toDto(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
    .locals 27
    .param p0    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string v2, "getTitle(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const-string v2, "getUrl(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDefaultTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDominantColor()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    move-object v11, v0

    const-string v2, "getType(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v0

    move-object v13, v0

    const-string v1, "getTitleState(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getNoDeviceNameMarker()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const-string v1, "getNoDeviceNameMarker(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-object v2, v0

    const v25, 0x1ff001

    const/16 v26, 0x0

    const-wide/16 v3, 0x0

    const-string v15, "no_device_id"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v26}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-object v0
.end method

.method public static final toDto(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
    .locals 27
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getPosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIcon()[B

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDominant()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getItemId()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDirty()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getDeleted()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getAccountType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync1()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync2()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync3()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync4()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->getSync5()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v26}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-object v0
.end method

.method public static final toEntity(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
    .locals 27
    .param p0    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getPosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIcon()[B

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDominant()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getItemId()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDeviceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDirty()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDeleted()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getAccountName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getAccountType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getSync1()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getSync2()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getSync3()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getSync4()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getSync5()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v2 .. v26}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    return-object v0
.end method
