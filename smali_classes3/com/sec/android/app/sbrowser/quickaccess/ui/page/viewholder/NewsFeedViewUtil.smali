.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;",
        "",
        "<init>",
        "()V",
        "getCategoriesTitleText",
        "",
        "context",
        "Landroid/content/Context;",
        "category",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedViewUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCategoriesTitleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7f1407f8

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "national"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f1407f3

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "science"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f1407f5

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f1407f4

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "entertainment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f1407f0

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "world"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const v1, 0x7f1407fa

    goto :goto_0

    :sswitch_5
    const-string v0, "tech"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const v1, 0x7f1407f7

    goto :goto_0

    :sswitch_6
    const-string v0, "food"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const v1, 0x7f1407f1

    goto :goto_0

    :sswitch_7
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :sswitch_8
    const-string v0, "travel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const v1, 0x7f1407f9

    goto :goto_0

    :sswitch_9
    const-string v0, "sports"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const v1, 0x7f1407f6

    goto :goto_0

    :sswitch_a
    const-string v0, "business"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const v1, 0x7f1407ef

    goto :goto_0

    :sswitch_b
    const-string v0, "health"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const v1, 0x7f1407f2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48cafda4 -> :sswitch_b
        -0x445b4040 -> :sswitch_a
        -0x35643881 -> :sswitch_9
        -0x339980e6 -> :sswitch_8
        0x1c155 -> :sswitch_7
        0x300c5e -> :sswitch_6
        0x364296 -> :sswitch_5
        0x6c11b92 -> :sswitch_4
        0x1dcd7f88 -> :sswitch_3
        0x20a0ab61 -> :sswitch_2
        0x72539a64 -> :sswitch_1
        0x79eba5b2 -> :sswitch_0
    .end sparse-switch
.end method
