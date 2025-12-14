.class public Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessAddItem;
.super Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setType(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setItemId(I)V

    return-void
.end method


# virtual methods
.method public areContentsSame(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessAddItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
