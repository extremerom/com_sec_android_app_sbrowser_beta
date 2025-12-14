.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition$Companion;",
        "",
        "<init>",
        "()V",
        "getValue",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;",
        "position",
        "",
        "count",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(II)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;->ONLY_FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;->FIRST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;

    goto :goto_0

    :cond_1
    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;->LAST:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;->MIDDLE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter$ItemPosition;

    :goto_0
    return-object p0
.end method
