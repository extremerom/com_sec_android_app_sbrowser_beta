.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;",
        "mHeightManager",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;",
        "helper",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;",
        "recyclerView",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "create",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHeightManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;)V

    return-object v0
.end method
