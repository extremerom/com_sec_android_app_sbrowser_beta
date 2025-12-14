.class public final Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;",
        "",
        "<init>",
        "()V",
        "",
        "id",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;",
        "create",
        "(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/media/assistant/view/item/MAItemFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(ILandroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "[MM]ViewItemFactory"

    const-string p1, "Wrong id"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/AssertUtil;->assertNotReached()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Gesture;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Gesture;-><init>(Landroid/app/Activity;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/PlayNext;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/PlayNext;-><init>(Landroid/app/Activity;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/SmartView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/SmartView;-><init>(Landroid/app/Activity;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Rotate;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Rotate;-><init>(Landroid/app/Activity;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/PopupVideo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/PopupVideo;-><init>(Landroid/app/Activity;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Fullscreen;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/Fullscreen;-><init>(Landroid/app/Activity;)V

    return-object p0
.end method
