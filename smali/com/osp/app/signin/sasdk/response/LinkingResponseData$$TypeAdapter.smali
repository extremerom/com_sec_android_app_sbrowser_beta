.class public Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSa/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LSa/b;"
    }
.end annotation


# instance fields
.field private childElementBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LSa/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->childElementBinders:Ljava/util/Map;

    new-instance v1, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$1;

    invoke-direct {v1, p0}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$1;-><init>(Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;)V

    const-string v2, "boolean"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->childElementBinders:Ljava/util/Map;

    new-instance v1, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$2;

    invoke-direct {v1, p0}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$2;-><init>(Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;)V

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->childElementBinders:Ljava/util/Map;

    new-instance v1, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$3;

    invoke-direct {v1, p0}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$3;-><init>(Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;)V

    const-string p0, "message"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fromXml(LQa/h;LQa/a;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;
    .locals 5

    new-instance v0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    invoke-direct {v0}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;-><init>()V

    :goto_0
    invoke-virtual {p1}, LQa/h;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LQa/h;->j()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p2, LQa/a;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "xmlns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Could not map the xml attribute with the name \'"

    const-string v0, "\' at path "

    invoke-static {p2, v1, v0}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, LQa/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to java class. Have you annotated such a field in your java class to map this xml attribute? Otherwise you can turn this error message off with TikXml.Builder().exceptionOnUnreadXml(false).build()."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {p1}, LQa/h;->G()V

    goto :goto_0

    :cond_2
    :goto_2
    iget v1, p1, LQa/h;->a:I

    if-nez v1, :cond_3

    invoke-virtual {p1}, LQa/h;->b()I

    move-result v1

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, LQa/h;->a()V

    invoke-virtual {p1}, LQa/h;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->childElementBinders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LSa/a;

    if-eqz v4, :cond_4

    invoke-interface {v4, p1, p2, v0}, LSa/a;->fromXml(LQa/h;LQa/a;Ljava/lang/Object;)V

    invoke-virtual {p1}, LQa/h;->c()V

    goto :goto_2

    :cond_4
    iget-boolean v4, p2, LQa/a;->a:Z

    if-nez v4, :cond_8

    iget-object v1, p1, LQa/h;->d:[I

    iget v4, p1, LQa/h;->e:I

    sub-int/2addr v4, v2

    aget v1, v1, v4

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "This method can only be invoked after having consumed the opening element via beginElement()"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_6
    :goto_3
    sget-object v1, LQa/f;->a:[I

    invoke-virtual {p1}, LQa/h;->v()LQa/g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Oops, there is something not implemented correctly internally. Please fill an issue on https://github.com/Tickaroo/tikxml/issues . Please include stacktrace and the model class you try to parse"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const-string p0, "Unexpected end of file! At least one xml element is not closed!"

    invoke-virtual {p1, p0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    invoke-virtual {p1}, LQa/h;->H()V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p1}, LQa/h;->G()V

    goto :goto_4

    :pswitch_3
    invoke-virtual {p1}, LQa/h;->j()Ljava/lang/String;

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1}, LQa/h;->k()Ljava/lang/String;

    goto :goto_4

    :pswitch_5
    invoke-virtual {p1}, LQa/h;->c()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :pswitch_6
    invoke-virtual {p1}, LQa/h;->a()V

    add-int/lit8 v2, v2, 0x1

    :goto_4
    const/4 v1, 0x0

    iput v1, p1, LQa/h;->a:I

    if-nez v2, :cond_6

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Could not map the xml element with the tag name <"

    const-string v0, "> at path \'"

    invoke-static {p2, v1, v0}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, LQa/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to java class. Have you annotated such a field in your java class to map this xml attribute? Otherwise you can turn this error message off with TikXml.Builder().exceptionOnUnreadXml(false).build()."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget v1, p1, LQa/h;->a:I

    if-nez v1, :cond_a

    invoke-virtual {p1}, LQa/h;->b()I

    move-result v1

    :cond_a
    if-eq v1, v3, :cond_c

    const/16 v2, 0x9

    if-ne v1, v2, :cond_b

    goto :goto_5

    :cond_b
    return-object v0

    :cond_c
    :goto_5
    iget-boolean v1, p2, LQa/a;->a:Z

    if-nez v1, :cond_d

    invoke-virtual {p1}, LQa/h;->H()V

    goto/16 :goto_2

    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not map the xml element\'s text content at path \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LQa/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to java class. Have you annotated such a field in your java class to map the xml element\'s text content? Otherwise you can turn this error message off with TikXml.Builder().exceptionOnUnreadXml(false).build()."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic fromXml(LQa/h;LQa/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->fromXml(LQa/h;LQa/a;)Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    move-result-object p0

    return-object p0
.end method

.method public toXml(LQa/i;LQa/a;Lcom/osp/app/signin/sasdk/response/LinkingResponseData;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_7

    if-nez p4, :cond_0

    const-string p0, "linkingResponseData"

    invoke-virtual {p1, p0}, LQa/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4}, LQa/i;->a(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mResult:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p0, "boolean"

    invoke-virtual {p1, p0}, LQa/i;->a(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mResult:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, LQa/i;->h(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, LQa/i;->b()V

    :cond_2
    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorCode:Ljava/lang/String;

    if-eqz p0, :cond_4

    const-string p0, "code"

    invoke-virtual {p1, p0}, LQa/i;->a(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorCode:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, LQa/i;->h(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, LQa/i;->b()V

    :cond_4
    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string p0, "message"

    invoke-virtual {p1, p0}, LQa/i;->a(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, LQa/i;->h(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, LQa/i;->b()V

    :cond_6
    invoke-virtual {p1}, LQa/i;->b()V

    :cond_7
    return-void
.end method

.method public bridge synthetic toXml(LQa/i;LQa/a;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;->toXml(LQa/i;LQa/a;Lcom/osp/app/signin/sasdk/response/LinkingResponseData;Ljava/lang/String;)V

    return-void
.end method
