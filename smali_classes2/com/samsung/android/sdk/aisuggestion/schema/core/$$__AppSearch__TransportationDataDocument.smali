.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__TransportationDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/q;"
    }
.end annotation


# static fields
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:Transportation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;"
        }
    .end annotation

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string p0, "title"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    aget-object p0, p0, p2

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string p0, "transport"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v4, p0

    if-eqz v4, :cond_1

    aget-object p0, p0, p2

    move-object v4, p0

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    const-string p0, "departureLocation"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v5, p0

    if-eqz v5, :cond_2

    aget-object p0, p0, p2

    move-object v5, p0

    goto :goto_2

    :cond_2
    move-object v5, v0

    :goto_2
    const-string p0, "arrivalLocation"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v6, p0

    if-eqz v6, :cond_3

    aget-object p0, p0, p2

    move-object v6, p0

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    const-string p0, "departureDate"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    array-length v7, p0

    if-eqz v7, :cond_4

    aget-object p0, p0, p2

    move-object v7, p0

    goto :goto_4

    :cond_4
    move-object v7, v0

    :goto_4
    const-string p0, "departureTime"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length v8, p0

    if-eqz v8, :cond_5

    aget-object p0, p0, p2

    move-object v8, p0

    goto :goto_5

    :cond_5
    move-object v8, v0

    :goto_5
    const-string p0, "arrivalDate"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v9, p0

    if-eqz v9, :cond_6

    aget-object p0, p0, p2

    move-object v9, p0

    goto :goto_6

    :cond_6
    move-object v9, v0

    :goto_6
    const-string p0, "arrivalTime"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    array-length p1, p0

    if-eqz p1, :cond_7

    aget-object p0, p0, p2

    move-object v10, p0

    goto :goto_7

    :cond_7
    move-object v10, v0

    :goto_7
    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__TransportationDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 4

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "ContextualInsightData:Transportation"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2, v2}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    const-string v3, "transport"

    invoke-static {p0, v0, v3, v1, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v3, "departureLocation"

    invoke-static {v0, v2, v2, p0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v2, v2, v2}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    const-string v3, "arrivalLocation"

    invoke-static {p0, v0, v3, v1, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v3, "departureDate"

    invoke-static {v0, v2, v2, p0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v2, v2, v2}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    const-string v3, "departureTime"

    invoke-static {p0, v0, v3, v1, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    const-string v3, "arrivalDate"

    invoke-static {v0, v2, v2, p0, v3}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v0

    invoke-static {v0, v1, v2, v2, v2}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v0

    const-string v3, "arrivalTime"

    invoke-static {p0, v0, v3, v1, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:Transportation"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->id:Ljava/lang/String;

    const-string v2, "ContextualInsightData:Transportation"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->transport:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "transport"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureLocation:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "departureLocation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalLocation:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "arrivalLocation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureDate:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "departureDate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->departureTime:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "departureTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalDate:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "arrivalDate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;->arrivalTime:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, "arrivalTime"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__TransportationDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/TransportationDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
