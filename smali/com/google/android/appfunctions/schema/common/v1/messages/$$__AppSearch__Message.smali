.class public final Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__Message;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.messages.Message"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/messages/Message;
    .locals 12

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "messageType"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    aget-object v0, v0, v2

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    if-eqz v5, :cond_1

    aget-object v0, v0, v2

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const-string v0, "senderId"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v6, v0

    if-eqz v6, :cond_2

    aget-object v0, v0, v2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    const-string v0, "recipientsIds"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    :cond_3
    const-string v0, "dateSent"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    const-class v8, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v8, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v9, v0

    goto :goto_3

    :cond_4
    move-object v9, v3

    :goto_3
    const-string v0, "dateReceived"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v8, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v10, v0

    goto :goto_4

    :cond_5
    move-object v10, v3

    :goto_4
    const-string v0, "dateRead"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v11, v0

    goto :goto_5

    :cond_6
    move-object v11, v3

    :goto_5
    const-string v0, "messageAttachments"

    invoke-virtual {p1, v0}, Lv/u;->h(Ljava/lang/String;)[Lv/u;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    array-length v3, p1

    if-ge v2, v3, :cond_7

    aget-object v3, p1, v2

    const-class v8, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    invoke-virtual {v3, v8, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    move-object p1, v0

    new-instance p2, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Ljava/util/List;)V

    return-object p2
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__Message;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/messages/Message;

    move-result-object p0

    return-object p0
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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    const-class v0, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    invoke-static {p0, v0}, Lt/b;->p(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 19

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.messages.Message"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "messageType"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v4, "body"

    invoke-static {v0, v1, v4, v2, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v4, "senderId"

    invoke-static {v1, v3, v3, v0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v4, "recipientsIds"

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0, v3}, Lt/b;->d(Lv/m;IILcom/google/firebase/messaging/l;I)LN/g;

    move-result-object v1

    const/4 v9, 0x2

    const-string v4, "cardinality"

    invoke-static {v9, v5, v2, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v12, LB/d;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v6, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v7, "dateSent"

    const/4 v8, 0x6

    const-string v10, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v6, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedHashSet;

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v7, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v6, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v6, LN/g;

    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Property defined more than once: "

    if-eqz v8, :cond_7

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v13, 0x2

    invoke-static {v13, v5, v2, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "dateReceived"

    const/4 v12, 0x6

    const-string v14, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v15, 0x0

    move-object v10, v1

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v18}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v13, 0x2

    invoke-static {v13, v5, v2, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v7, LB/d;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "dateRead"

    const/4 v12, 0x6

    const-string v14, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v15, 0x0

    move-object v10, v1

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v18}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v8, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v7, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v1, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v1

    const/4 v13, 0x1

    invoke-static {v13, v5, v2, v4}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v2, LB/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v4, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "messageAttachments"

    const/4 v12, 0x6

    const-string v14, "com.google.android.appfunctions.schema.common.v1.types.Attachment"

    const/4 v15, 0x0

    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v18}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v2, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v4, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_3
    iget-object v2, v1, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/firebase/messaging/l;->c()Lv/o;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lx/b;

    invoke-static {v9, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v9, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.messages.Message"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/messages/Message;)Lv/u;
    .locals 4

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->a:Ljava/lang/String;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.messages.Message"

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "messageType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "body"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "senderId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->f:Ljava/util/List;

    if-eqz v1, :cond_3

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "recipientsIds"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->g:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    const-string v2, "dateSent"

    filled-new-array {v1}, [Lv/u;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->h:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    const-string v2, "dateReceived"

    filled-new-array {v1}, [Lv/u;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->i:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    const-string v2, "dateRead"

    filled-new-array {v1}, [Lv/u;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;->j:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lv/u;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/appfunctions/schema/common/v1/types/Attachment;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v2

    aput-object v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_7
    const-string p1, "messageAttachments"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/messages/Message;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/messages/$$__AppSearch__Message;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/messages/Message;)Lv/u;

    move-result-object p0

    return-object p0
.end method
