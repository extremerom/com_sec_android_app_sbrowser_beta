.class public Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIconUrl:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mIconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mIconUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mIconUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->mIconUrl:Ljava/lang/String;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
