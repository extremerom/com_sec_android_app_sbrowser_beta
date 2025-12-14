.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Entity;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008>\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00d5\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001a\u0010!\u001a\u00020 2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010%\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008%\u0010&R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\'\u001a\u0004\u0008(\u0010)R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010*\u001a\u0004\u0008+\u0010&\"\u0004\u0008,\u0010-R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010*\u001a\u0004\u0008.\u0010&\"\u0004\u0008/\u0010-R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00100\u001a\u0004\u00081\u0010$\"\u0004\u00082\u00103R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010*\u001a\u0004\u00089\u0010&\"\u0004\u0008:\u0010-R\"\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u00100\u001a\u0004\u0008;\u0010$\"\u0004\u0008<\u00103R\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\"\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u00100\u001a\u0004\u0008B\u0010$\"\u0004\u0008C\u00103R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010*\u001a\u0004\u0008I\u0010&\"\u0004\u0008J\u0010-R\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010*\u001a\u0004\u0008K\u0010&\"\u0004\u0008L\u0010-R\"\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u00100\u001a\u0004\u0008M\u0010$\"\u0004\u0008N\u00103R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u00100\u001a\u0004\u0008O\u0010$\"\u0004\u0008P\u00103R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010*\u001a\u0004\u0008Q\u0010&\"\u0004\u0008R\u0010-R\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010*\u001a\u0004\u0008S\u0010&\"\u0004\u0008T\u0010-R\"\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010*\u001a\u0004\u0008U\u0010&\"\u0004\u0008V\u0010-R\u001a\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010*\u001a\u0004\u0008W\u0010&R\u001a\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010*\u001a\u0004\u0008X\u0010&R\u001a\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010*\u001a\u0004\u0008Y\u0010&R\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010*\u001a\u0004\u0008Z\u0010&\"\u0004\u0008[\u0010-R\u0011\u0010]\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010)\u00a8\u0006^"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
        "",
        "",
        "id",
        "",
        "title",
        "url",
        "",
        "position",
        "",
        "touchIcon",
        "touchIconUrl",
        "dominant",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "type",
        "itemId",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;",
        "titleState",
        "deviceName",
        "deviceId",
        "dirty",
        "deleted",
        "accountName",
        "accountType",
        "sync1",
        "sync2",
        "sync3",
        "sync4",
        "sync5",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "toString",
        "()Ljava/lang/String;",
        "J",
        "getId",
        "()J",
        "Ljava/lang/String;",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getUrl",
        "setUrl",
        "I",
        "getPosition",
        "setPosition",
        "(I)V",
        "[B",
        "getTouchIcon",
        "()[B",
        "setTouchIcon",
        "([B)V",
        "getTouchIconUrl",
        "setTouchIconUrl",
        "getDominant",
        "setDominant",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "getType",
        "()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "setType",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V",
        "getItemId",
        "setItemId",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;",
        "getTitleState",
        "()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;",
        "setTitleState",
        "(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V",
        "getDeviceName",
        "setDeviceName",
        "getDeviceId",
        "setDeviceId",
        "getDirty",
        "setDirty",
        "getDeleted",
        "setDeleted",
        "getAccountName",
        "setAccountName",
        "getAccountType",
        "setAccountType",
        "getSync1",
        "setSync1",
        "getSync2",
        "getSync3",
        "getSync4",
        "getSync5",
        "setSync5",
        "getLastModifiedTime",
        "lastModifiedTime",
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
.field private accountName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private accountType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deleted:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dirty:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private dominant:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private final id:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private itemId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private position:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private sync1:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync2:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync3:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync4:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sync5:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private touchIcon:[B
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private touchIconUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p17

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    move-object/from16 v10, p20

    move-object/from16 v11, p21

    move-object/from16 v12, p22

    const-string v13, "title"

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "url"

    invoke-static {v2, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "type"

    invoke-static {v3, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "titleState"

    invoke-static {v4, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "deviceName"

    invoke-static {v5, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "deviceId"

    invoke-static {v6, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "accountType"

    invoke-static {v7, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sync1"

    invoke-static {v8, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sync2"

    invoke-static {v9, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sync3"

    invoke-static {v10, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sync4"

    invoke-static {v11, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "sync5"

    invoke-static {v12, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v13, p1

    iput-wide v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    move/from16 v1, p5

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    move/from16 v1, p8

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move/from16 v1, p10

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    move/from16 v1, p15

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V
    .locals 26

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    move v11, v2

    goto :goto_1

    :cond_1
    move/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->NOT_EDITED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-object v14, v1

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x400

    const-string v2, ""

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    move/from16 v17, v3

    goto :goto_7

    :cond_7
    move/from16 v17, p14

    :goto_7
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    move/from16 v18, v3

    goto :goto_8

    :cond_8
    move/from16 v18, p15

    :goto_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object/from16 v19, v1

    goto :goto_9

    :cond_9
    move-object/from16 v19, p16

    :goto_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-object/from16 v20, v2

    goto :goto_a

    :cond_a
    move-object/from16 v20, p17

    :goto_a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move-object/from16 v21, v2

    goto :goto_b

    :cond_b
    move-object/from16 v21, p18

    :goto_b
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v22, v2

    goto :goto_c

    :cond_c
    move-object/from16 v22, p19

    :goto_c
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v23, v2

    goto :goto_d

    :cond_d
    move-object/from16 v23, p20

    :goto_d
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v24, v2

    goto :goto_e

    :cond_e
    move-object/from16 v24, p21

    :goto_e
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    move-object/from16 v25, v2

    goto :goto_f

    :cond_f
    move-object/from16 v25, p22

    :goto_f
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v25}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.quickaccess.model.entity.QuickAccessItemEntity"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    if-nez v3, :cond_7

    return v2

    :cond_7
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccountType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeleted()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    return p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDirty()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    return p0
.end method

.method public final getDominant()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    return p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    return-wide v0
.end method

.method public final getItemId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    return p0
.end method

.method public final getLastModifiedTime()J
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    sget-object v0, Lid/b;->a:[B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v2, v0

    :goto_0
    invoke-static {v2, v3, v0, v1}, LG5/d3;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    return p0
.end method

.method public final getSync1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-object p0
.end method

.method public final getTouchIcon()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    return-object p0
.end method

.method public final getTouchIconUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    return-void
.end method

.method public final setAccountType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    return-void
.end method

.method public final setDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public final setDirty(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    return-void
.end method

.method public final setDominant(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    return-void
.end method

.method public final setItemId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    return-void
.end method

.method public final setSync1(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    return-void
.end method

.method public final setSync5(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTitleState(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-void
.end method

.method public final setTouchIcon([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    return-void
.end method

.method public final setTouchIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 23
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->id:J

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->url:Ljava/lang/String;

    iget v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->position:I

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIcon:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->touchIconUrl:Ljava/lang/String;

    iget v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dominant:I

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->itemId:I

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceName:Ljava/lang/String;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deviceId:Ljava/lang/String;

    iget v14, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->dirty:I

    iget v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->deleted:I

    move/from16 v16, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountName:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->accountType:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync1:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync2:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync3:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync4:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->sync5:Ljava/lang/String;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    const-string v15, "QuickAccessItemEntity(id="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchIcon="

    const-string v2, ", touchIconUrl="

    invoke-static {v0, v1, v6, v2, v7}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", dominant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    const-string v2, ", deviceId="

    invoke-static {v0, v1, v12, v2, v13}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", dirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    const-string v2, ", accountType="

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-static {v0, v1, v3, v2, v4}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sync1="

    const-string v2, ", sync2="

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-static {v0, v1, v3, v2, v4}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sync3="

    const-string v2, ", sync4="

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v3, v2, v4}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sync5="

    const-string v2, ")"

    move-object/from16 v3, p0

    invoke-static {v0, v1, v3, v2}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
