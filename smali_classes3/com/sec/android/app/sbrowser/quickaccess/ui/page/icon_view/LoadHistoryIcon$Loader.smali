.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Loader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0001\u0002\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "item",
        "Ldb/r;",
        "load",
        "(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract load(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
