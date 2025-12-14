.class Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListJson;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBlockedList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blockedList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getBlockedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListJson;->mBlockedList:Ljava/util/List;

    return-object p0
.end method
