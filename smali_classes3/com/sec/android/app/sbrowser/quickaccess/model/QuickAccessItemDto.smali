.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u00085\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00d5\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001a\u0010\"\u001a\u00020!2\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u0096\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u00e8\u0001\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010(\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010*\u001a\u0004\u0008+\u0010,R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010-\u001a\u0004\u0008.\u0010)R\u0017\u0010\u0006\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010-\u001a\u0004\u0008/\u0010)R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00100\u001a\u0004\u00081\u0010%\"\u0004\u00082\u00103R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u00104\u001a\u0004\u00085\u00106R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010-\u001a\u0004\u00087\u0010)R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u00100\u001a\u0004\u00088\u0010%R\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u00109\u001a\u0004\u0008:\u0010;R\u0017\u0010\u000f\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u00100\u001a\u0004\u0008<\u0010%R\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010=\u001a\u0004\u0008>\u0010?R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010-\u001a\u0004\u0008@\u0010)\"\u0004\u0008A\u0010BR\"\u0010\u0013\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010-\u001a\u0004\u0008C\u0010)\"\u0004\u0008D\u0010BR\"\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u00100\u001a\u0004\u0008E\u0010%\"\u0004\u0008F\u00103R\u0017\u0010\u0015\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00100\u001a\u0004\u0008G\u0010%R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010-\u001a\u0004\u0008H\u0010)\"\u0004\u0008I\u0010BR\"\u0010\u0017\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010-\u001a\u0004\u0008J\u0010)\"\u0004\u0008K\u0010BR\"\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010-\u001a\u0004\u0008L\u0010)\"\u0004\u0008M\u0010BR\u0017\u0010\u0019\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010-\u001a\u0004\u0008N\u0010)R\u0017\u0010\u001a\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010-\u001a\u0004\u0008O\u0010)R\u0017\u0010\u001b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010-\u001a\u0004\u0008P\u0010)R\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010-\u001a\u0004\u0008Q\u0010)\"\u0004\u0008R\u0010BR\u001b\u0010V\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010)R\u001d\u0010[\u001a\u0004\u0018\u00010W8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008X\u0010T\u001a\u0004\u0008Y\u0010ZR\u001b\u0010^\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\\\u0010T\u001a\u0004\u0008]\u0010%R\u001b\u0010a\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008_\u0010T\u001a\u0004\u0008`\u0010)R\u001b\u0010f\u001a\u00020b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008c\u0010T\u001a\u0004\u0008d\u0010eR\u0011\u0010h\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010,\u00a8\u0006i"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;",
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
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "()I",
        "copy",
        "(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "toString",
        "()Ljava/lang/String;",
        "J",
        "getId",
        "()J",
        "Ljava/lang/String;",
        "getTitle",
        "getUrl",
        "I",
        "getPosition",
        "setPosition",
        "(I)V",
        "[B",
        "getTouchIcon",
        "()[B",
        "getTouchIconUrl",
        "getDominant",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "getType",
        "()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        "getItemId",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;",
        "getTitleState",
        "()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;",
        "getDeviceName",
        "setDeviceName",
        "(Ljava/lang/String;)V",
        "getDeviceId",
        "setDeviceId",
        "getDirty",
        "setDirty",
        "getDeleted",
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
        "originalUrl$delegate",
        "Ldb/f;",
        "getOriginalUrl",
        "originalUrl",
        "Landroid/graphics/Bitmap;",
        "touchIconBitmap$delegate",
        "getTouchIconBitmap",
        "()Landroid/graphics/Bitmap;",
        "touchIconBitmap",
        "touchIconHash$delegate",
        "getTouchIconHash",
        "touchIconHash",
        "dominantChar$delegate",
        "getDominantChar",
        "dominantChar",
        "Landroid/content/res/ColorStateList;",
        "modifiedDominantColorStateList$delegate",
        "getModifiedDominantColorStateList",
        "()Landroid/content/res/ColorStateList;",
        "modifiedDominantColorStateList",
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private accountType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deleted:I

.field private deviceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dirty:I

.field private final dominant:I

.field private final dominantChar$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:J

.field private final itemId:I

.field private final modifiedDominantColorStateList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final originalUrl$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private position:I

.field private sync1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync3:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sync4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sync5:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final touchIcon:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final touchIconBitmap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final touchIconHash$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final touchIconUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
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

    const/4 v13, 0x0

    invoke-direct {p0, v13}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;-><init>(Ltb/f;)V

    move-wide/from16 v13, p1

    iput-wide v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    move/from16 v1, p5

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    move/from16 v1, p8

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move/from16 v1, p10

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    move/from16 v1, p15

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->originalUrl$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/s;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconBitmap$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconHash$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/s;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominantChar$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/s;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->modifiedDominantColorStateList$delegate:Ldb/f;

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

    invoke-direct/range {v3 .. v25}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->originalUrl_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconBitmap_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconHash_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)I

    move-result p0

    return p0
.end method

.method public static synthetic copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p22

    :goto_14
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p21, v15

    move-object/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->copy(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominantChar_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final dominantChar_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getDomainNameFirstLetter(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->modifiedDominantColorStateList_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private static final modifiedDominantColorStateList_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/content/res/ColorStateList;
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getModifiedDominantIconColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final originalUrl_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getOriginalUrlFromReferer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final touchIconBitmap_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getSyncItemIconSize()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->getResizedBitmapImage([BI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final touchIconHash_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final copy(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;
    .locals 24
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    const-string v0, "title"

    move-wide/from16 p0, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleState"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync1"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync2"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync3"

    move-object/from16 v1, p20

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync4"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync5"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v23, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-object/from16 v0, v23

    move-wide/from16 v1, p0

    invoke-direct/range {v0 .. v22}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
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
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.sec.android.app.sbrowser.quickaccess.model.QuickAccessItemDto"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    if-nez v3, :cond_7

    return v2

    :cond_7
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public final getAccountType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeleted()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    return p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDirty()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    return p0
.end method

.method public final getDominant()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    return p0
.end method

.method public final getDominantChar()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominantChar$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getItemId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    return p0
.end method

.method public final getLastModifiedTime()J
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

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

.method public final getModifiedDominantColorStateList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->modifiedDominantColorStateList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public final getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->originalUrl$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    return p0
.end method

.method public final getSync1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync3()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    return-object p0
.end method

.method public final getSync5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleState()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    return-object p0
.end method

.method public final getTouchIcon()[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    return-object p0
.end method

.method public final getTouchIconBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconBitmap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getTouchIconHash()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconHash$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getTouchIconUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 23
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->id:J

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->url:Ljava/lang/String;

    iget v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->position:I

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIcon:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->touchIconUrl:Ljava/lang/String;

    iget v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dominant:I

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->type:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    iget v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->itemId:I

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->titleState:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceName:Ljava/lang/String;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deviceId:Ljava/lang/String;

    iget v14, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->dirty:I

    iget v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->deleted:I

    move/from16 v16, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountName:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->accountType:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync1:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync2:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync3:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync4:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->sync5:Ljava/lang/String;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    const-string v15, "QuickAccessItemDto(id="

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
