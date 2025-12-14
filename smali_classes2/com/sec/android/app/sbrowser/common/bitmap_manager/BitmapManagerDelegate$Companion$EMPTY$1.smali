.class public final Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$Companion$EMPTY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$Companion$EMPTY$1",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
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


# virtual methods
.method public getCacheExcludedTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$DefaultImpls;->getCacheExcludedTabList(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$DefaultImpls;->getUrl(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isIncognitoTab(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$DefaultImpls;->isIncognitoTab(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;I)Z

    move-result p0

    return p0
.end method

.method public isNativePage(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$DefaultImpls;->isNativePage(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;I)Z

    move-result p0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate$DefaultImpls;->isValidTab(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;I)Z

    move-result p0

    return p0
.end method
