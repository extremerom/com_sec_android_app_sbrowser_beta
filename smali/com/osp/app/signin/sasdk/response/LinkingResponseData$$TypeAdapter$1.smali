.class Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LSa/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;


# direct methods
.method public constructor <init>(Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$1;->this$0:Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromXml(LQa/h;LQa/a;Lcom/osp/app/signin/sasdk/response/LinkingResponseData;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, LQa/h;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, LQa/h;->j()Ljava/lang/String;

    move-result-object p0

    iget-boolean v0, p2, LQa/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Unread attribute \'"

    const-string v0, "\' at path "

    invoke-static {p3, p0, v0}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, LQa/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    invoke-virtual {p1}, LQa/h;->G()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LQa/h;->q()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;->mResult:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic fromXml(LQa/h;LQa/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/osp/app/signin/sasdk/response/LinkingResponseData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/osp/app/signin/sasdk/response/LinkingResponseData$$TypeAdapter$1;->fromXml(LQa/h;LQa/a;Lcom/osp/app/signin/sasdk/response/LinkingResponseData;)V

    return-void
.end method
