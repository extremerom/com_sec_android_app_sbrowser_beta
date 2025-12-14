.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getSites$default(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILib/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p8, :cond_3

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-string p3, "mobile"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x5

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApiService;->getSites(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getSites"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
