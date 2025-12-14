.class public final Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantRepaymentDataDocument;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:SAssistantRepayment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;
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
            "Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;"
        }
    .end annotation

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string p0, "bankIcon"

    invoke-virtual {p1, p0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-class v3, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    invoke-virtual {p0, v3, p2}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string p0, "bankName"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    array-length v5, p0

    if-eqz v5, :cond_1

    aget-object p0, p0, v4

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    const-string v5, "creditCardLastTailNum"

    invoke-virtual {p1, v5}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    aget-object v5, v5, v4

    goto :goto_2

    :cond_2
    move-object v5, v0

    :goto_2
    const-string v6, "repayTime"

    invoke-virtual {p1, v6}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-eqz v7, :cond_3

    aget-object v6, v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v0

    :goto_3
    const-string v7, "repayAmount"

    invoke-virtual {p1, v7}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v8, v7

    if-eqz v8, :cond_4

    aget-object v7, v7, v4

    goto :goto_4

    :cond_4
    move-object v7, v0

    :goto_4
    const-string v8, "repaymentType"

    invoke-virtual {p1, v8}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v9, v8

    if-eqz v9, :cond_5

    aget-object v8, v8, v4

    goto :goto_5

    :cond_5
    move-object v8, v0

    :goto_5
    const-string v9, "payNowAction"

    invoke-virtual {p1, v9}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v9

    if-eqz v9, :cond_6

    const-class v10, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-virtual {v9, v10, p2}, Lv/u;->toDocumentClass(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-object v9, p2

    goto :goto_6

    :cond_6
    move-object v9, v0

    :goto_6
    const-string p2, "creditCardId"

    invoke-virtual {p1, p2}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length p2, p1

    if-eqz p2, :cond_7

    aget-object p1, p1, v4

    move-object v10, p1

    goto :goto_7

    :cond_7
    move-object v10, v0

    :goto_7
    new-instance p1, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantRepaymentDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-class p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    const-class v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 23

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "ContextualInsightData:SAssistantRepayment"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-string v13, "cardinality"

    invoke-static {v1, v13, v5, v11, v12}, LB/e;->h(ILjava/lang/String;III)LN/g;

    move-result-object v2

    new-instance v8, LB/d;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v8, v3, v1}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v14, LB/i;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "bankIcon"

    const/4 v4, 0x6

    const-string v6, "ContextualInsightData:ImageResource"

    const/4 v7, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v10}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v2, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v2, LN/g;

    iget-object v3, v14, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Property defined more than once: "

    if-eqz v4, :cond_3

    iget-object v3, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "bankName"

    const/4 v6, 0x2

    invoke-static {v3, v14, v4, v6, v1}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v3

    const-string v4, "creditCardLastTailNum"

    invoke-static {v3, v1, v1, v0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v3

    invoke-static {v3, v6, v1, v1, v1}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v3

    const-string v4, "repayTime"

    invoke-static {v0, v3, v4, v6, v1}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v3

    const-string v4, "repayAmount"

    invoke-static {v3, v1, v1, v0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v3

    invoke-static {v3, v6, v1, v1, v1}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v3

    const-string v4, "repaymentType"

    invoke-static {v0, v3, v4, v6, v1}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v3

    invoke-static {v3, v1, v1, v0, v1}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v11, v12, v13}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8, v1}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v3, LB/i;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v15, "payNowAction"

    const/16 v16, 0x6

    const-string v18, "ContextualInsightData:PotentialAction"

    const/16 v19, 0x0

    move-object v14, v3

    move/from16 v17, v4

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v22}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v4, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v4, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v4, v3, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const-string v4, "creditCardId"

    invoke-static {v2, v3, v4, v6, v1}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v2

    invoke-static {v2, v1, v1, v0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lx/b;

    invoke-static {v5, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lx/b;

    invoke-static {v5, v3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:SAssistantRepayment"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;)Lv/u;
    .locals 3

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextualInsightData:SAssistantRepayment"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getBankIcon()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "bankIcon"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getBankName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "bankName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getCreditCardLastTailNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "creditCardLastTailNum"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getRepayTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "repayTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getRepayAmount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "repayAmount"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getRepaymentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "repaymentType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getPayNowAction()Lcom/samsung/android/sdk/aisuggestion/schema/core/PotentialActionDataDocument;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v0

    const-string v1, "payNowAction"

    filled-new-array {v0}, [Lv/u;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;->getCreditCardId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "creditCardId"

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

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/$$__AppSearch__SAssistantRepaymentDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/sassistant/SAssistantRepaymentDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
