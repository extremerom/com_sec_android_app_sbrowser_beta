.class public Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconImgURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iconImgURL"
    .end annotation
.end field

.field private mIsShowN:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_N_badge"
    .end annotation
.end field

.field private mPickExtId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension_id"
    .end annotation
.end field

.field private mPickExtName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_name"
    .end annotation
.end field

.field private mPickOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pick_order"
    .end annotation
.end field

.field private mPickPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mPickTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pick_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickExtId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickExtName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickTime:J

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mIsShowN:Z

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mIconImgURL:Ljava/lang/String;

    return-void
.end method

.method public static getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;"
        }
    .end annotation

    const-string v0, "getPickedList: "

    const-string v1, "SixSuggestedPickData"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "getPickedList - context is null. returning null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v3, "six_data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "six_suggested_pick_list"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData$1;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v2
.end method

.method public static setPickedList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "SixSuggestedPickData"

    const-string p1, "setPickedList - context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_suggested_pick_list"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickOrder()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->compareTo(Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIconImgURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mIconImgURL:Ljava/lang/String;

    return-object p0
.end method

.method public getPickExtId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickExtId:Ljava/lang/String;

    return-object p0
.end method

.method public getPickExtName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickExtName:Ljava/lang/String;

    return-object p0
.end method

.method public getPickOrder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    return p0
.end method

.method public getPickPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickExtId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isExpired(I)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickTime:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    const-wide/16 v6, 0x7

    mul-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToBeFixed()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mPickOrder:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isToShowNBadge()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->mIsShowN:Z

    return p0
.end method
