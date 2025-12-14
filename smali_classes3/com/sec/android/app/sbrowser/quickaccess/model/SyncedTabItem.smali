.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u001a\u0008\u0087\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011Jr\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001f\u001a\u0004\u0008 \u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001f\u001a\u0004\u0008!\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001f\u001a\u0004\u0008\"\u0010\u0015R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001f\u001a\u0004\u0008#\u0010\u0015R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010$\u001a\u0004\u0008%\u0010&R$\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R$\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\'\u001a\u0004\u0008,\u0010)\"\u0004\u0008-\u0010+R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00063"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "",
        "Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;",
        "itemType",
        "",
        "deviceName",
        "deviceId",
        "url",
        "title",
        "",
        "itemDateModified",
        "Landroid/graphics/Bitmap;",
        "ogImage",
        "icon",
        "",
        "dominantColor",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V",
        "copy",
        "(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;",
        "getItemType",
        "()Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;",
        "Ljava/lang/String;",
        "getDeviceName",
        "getDeviceId",
        "getUrl",
        "getTitle",
        "J",
        "getItemDateModified",
        "()J",
        "Landroid/graphics/Bitmap;",
        "getOgImage",
        "()Landroid/graphics/Bitmap;",
        "setOgImage",
        "(Landroid/graphics/Bitmap;)V",
        "getIcon",
        "setIcon",
        "Ljava/lang/Integer;",
        "getDominantColor",
        "()Ljava/lang/Integer;",
        "setDominantColor",
        "(Ljava/lang/Integer;)V",
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
.field private final deviceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dominantColor:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private icon:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final itemDateModified:J

.field private final itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ogImage:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->copy(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;
    .locals 12
    .param p1    # Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "itemType"

    move-object v2, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    move-object v3, p2

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    move-object v4, p3

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-object v1, v0

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;-><init>(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDominantColor()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getItemType()Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    return-object p0
.end method

.method public final getOgImage()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    invoke-static {v4, v5, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final setDominantColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOgImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemType:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->title:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->itemDateModified:J

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->ogImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->icon:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->dominantColor:Ljava/lang/Integer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SyncedTabItem(itemType="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceName="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    const-string v1, ", title="

    invoke-static {v9, v2, v0, v3, v1}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", itemDateModified="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ogImage="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", dominantColor="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
