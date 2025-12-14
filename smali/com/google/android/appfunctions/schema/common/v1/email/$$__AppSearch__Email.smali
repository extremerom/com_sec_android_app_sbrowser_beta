.class public final Lcom/google/android/appfunctions/schema/common/v1/email/$$__AppSearch__Email;
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
.field public static final SCHEMA_NAME:Ljava/lang/String; = "com.google.android.appfunctions.schema.common.v1.email.Email"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/email/Email;
    .locals 13

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    const-string v0, "subject"

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
    const-string v0, "message"

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
    const-string v0, "recipientIds"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    :cond_3
    const-string v0, "ccRecipientIds"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    :cond_4
    const-string v0, "bccRecipientIds"

    invoke-virtual {p1, v0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    :cond_5
    const-string v0, "isDraft"

    invoke-virtual {p1, v0}, Lv/u;->e(Ljava/lang/String;)[Z

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v10, v0

    if-eqz v10, :cond_6

    aget-boolean v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    :cond_6
    move-object v10, v3

    :goto_3
    const-string v0, "dateSent"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    const-class v2, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v11, v0

    goto :goto_4

    :cond_7
    move-object v11, v3

    :goto_4
    const-string v0, "dateReceived"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    move-object v12, v0

    goto :goto_5

    :cond_8
    move-object v12, v3

    :goto_5
    const-string v0, "dateRead"

    invoke-virtual {p1, v0}, Lv/u;->g(Ljava/lang/String;)Lv/u;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2, p2}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    goto :goto_6

    :cond_9
    move-object p1, v3

    :goto_6
    new-instance p2, Lcom/google/android/appfunctions/schema/common/v1/email/Email;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    move-object v0, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/appfunctions/schema/common/v1/email/Email;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)V

    return-object p2
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/appfunctions/schema/common/v1/email/$$__AppSearch__Email;->fromGenericDocument(Lv/u;Lv/s;)Lcom/google/android/appfunctions/schema/common/v1/email/Email;

    move-result-object p0

    return-object p0
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

    const-class p0, Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {p0}, Lt/b;->o(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 18

    new-instance v0, Lcom/google/firebase/messaging/l;

    const-string v1, "com.google.android.appfunctions.schema.common.v1.email.Email"

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v1, "subject"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v1

    const-string v4, "message"

    invoke-static {v0, v1, v4, v2, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v4, "senderId"

    invoke-static {v1, v3, v3, v0, v4}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v2, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v2, "recipientIds"

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    const-string v2, "ccRecipientIds"

    invoke-static {v1, v3, v3, v0, v2}, Lt/b;->s(Lv/m;IILcom/google/firebase/messaging/l;Ljava/lang/String;)Lv/m;

    move-result-object v1

    invoke-static {v1, v4, v3, v3, v3}, Lt/b;->u(Lv/m;IIII)Lv/n;

    move-result-object v1

    const-string v2, "bccRecipientIds"

    invoke-static {v0, v1, v2, v4, v3}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v1

    invoke-static {v1, v3, v3, v0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v8, 0x2

    const/4 v1, 0x3

    const-string v2, "cardinality"

    invoke-static {v8, v4, v1, v2}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v14, LB/i;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v6, "isDraft"

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v5, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v5, Ljava/util/LinkedHashSet;

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-direct {v5, v6}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v5, v0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v5, LN/g;

    iget-object v6, v14, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Property defined more than once: "

    if-eqz v7, :cond_7

    iget-object v6, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6, v14, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v6

    const/4 v12, 0x2

    invoke-static {v12, v4, v1, v2}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v15, v7, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v6, LB/i;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v10, "dateSent"

    const/4 v11, 0x6

    const-string v13, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v14, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v17}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_1
    iget-object v7, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v6, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v6

    const/4 v12, 0x2

    invoke-static {v12, v4, v1, v2}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/d;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v15, v7, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v6, LB/i;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v10, "dateReceived"

    const/4 v11, 0x6

    const-string v13, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v14, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v17}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v7, v0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-direct {v7, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v7, v0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_2
    iget-object v7, v6, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v7, v0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-static {v7, v6, v3}, Lt/b;->c(Ljava/util/ArrayList;LB/i;I)LN/g;

    move-result-object v6

    const/4 v12, 0x2

    invoke-static {v12, v4, v1, v2}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v15, LB/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v15, v1, v3}, LB/d;-><init>(Ljava/util/ArrayList;Z)V

    new-instance v1, LB/i;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v10, "dateRead"

    const/4 v11, 0x6

    const-string v13, "com.google.android.appfunctions.schema.common.v1.types.DateTime"

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

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

    invoke-virtual {v5, v2}, LN/g;->add(Ljava/lang/Object;)Z

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

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lx/b;

    invoke-static {v8, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lx/b;

    invoke-static {v8, v7}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lx/b;

    invoke-static {v8, v6}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.appfunctions.schema.common.v1.email.Email"

    return-object p0
.end method

.method public toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/email/Email;)Lv/u;
    .locals 4

    const/4 p0, 0x0

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->a:Ljava/lang/String;

    const-string v2, "com.google.android.appfunctions.schema.common.v1.email.Email"

    iget-object v3, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "subject"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "message"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "senderId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->f:Ljava/util/List;

    if-eqz v1, :cond_3

    new-array v2, p0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "recipientIds"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_3
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    new-array v2, p0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "ccRecipientIds"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_4
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->h:Ljava/util/List;

    if-eqz v1, :cond_5

    new-array v2, p0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "bccRecipientIds"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_5
    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Z

    aput-boolean v1, v2, p0

    const-string p0, "isDraft"

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_6
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p0

    const-string v1, "dateSent"

    filled-new-array {p0}, [Lv/u;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_7
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz p0, :cond_8

    invoke-static {p0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p0

    const-string v1, "dateReceived"

    filled-new-array {p0}, [Lv/u;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_8
    iget-object p0, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object p0

    const-string p1, "dateRead"

    filled-new-array {p0}, [Lv/u;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;

    invoke-virtual {p0, p1}, Lcom/google/android/appfunctions/schema/common/v1/email/$$__AppSearch__Email;->toGenericDocument(Lcom/google/android/appfunctions/schema/common/v1/email/Email;)Lv/u;

    move-result-object p0

    return-object p0
.end method
