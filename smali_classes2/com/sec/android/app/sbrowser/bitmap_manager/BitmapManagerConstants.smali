.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;",
        "",
        "<init>",
        "()V",
        "",
        "FULL_SCREEN_CACHE_DIR",
        "Ljava/lang/String;",
        "THUMBNAIL_CACHE_DIR",
        "LITE_THUMBNAIL_CACHE_DIR",
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


# static fields
.field public static final FULL_SCREEN_CACHE_DIR:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LITE_THUMBNAIL_CACHE_DIR:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final THUMBNAIL_CACHE_DIR:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->INSTANCE:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "Bitmap"

    const-string v2, "FullScreen"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->FULL_SCREEN_CACHE_DIR:Ljava/lang/String;

    const-string v2, "Thumbnail"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->THUMBNAIL_CACHE_DIR:Ljava/lang/String;

    const-string v2, "LiteThumbnail"

    invoke-static {v1, v0, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManagerConstants;->LITE_THUMBNAIL_CACHE_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
