.class public final Lcom/google/android/appfunctions/schema/common/v1/email/Email;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/appfunctions/schema/common/v1/email/Email;",
        "",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_schema_appfunctions_schema"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/Boolean;

.field public final j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

.field public final k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

.field public final l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientIds"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ccRecipientIds"

    invoke-static {p7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bccRecipientIds"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->h:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->i:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iput-object p11, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iput-object p12, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->f:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->f:Ljava/util/List;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->g:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->h:Ljava/util/List;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->i:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 11

    iget-object v9, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->k:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v10, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->l:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->h:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->i:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/google/android/appfunctions/schema/common/v1/email/Email;->j:Lcom/google/android/appfunctions/schema/common/v1/types/DateTime;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
