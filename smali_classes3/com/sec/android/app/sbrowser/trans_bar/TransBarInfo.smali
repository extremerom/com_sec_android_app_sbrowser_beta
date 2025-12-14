.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mCode:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->mName:Ljava/lang/String;

    return-object p0
.end method
