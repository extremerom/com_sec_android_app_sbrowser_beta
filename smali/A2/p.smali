.class public final LA2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "webSourceParams"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topOriginUri"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA2/p;->a:Ljava/util/List;

    iput-object p2, p0, LA2/p;->b:Landroid/net/Uri;

    iput-object p3, p0, LA2/p;->c:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .locals 4

    invoke-static {}, LA2/a;->C()V

    iget-object v0, p0, LA2/p;->a:Ljava/util/List;

    const-string v1, "request"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA2/o;

    invoke-static {}, LA2/a;->q()V

    iget-object v3, v2, LA2/o;->a:Landroid/net/Uri;

    invoke-static {v3}, LA2/a;->i(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceParams$Builder;

    move-result-object v3

    iget-boolean v2, v2, LA2/o;->b:Z

    invoke-static {v3, v2}, LA2/a;->h(Landroid/adservices/measurement/WebSourceParams$Builder;Z)Landroid/adservices/measurement/WebSourceParams$Builder;

    move-result-object v2

    invoke-static {v2}, LA2/a;->j(Landroid/adservices/measurement/WebSourceParams$Builder;)Landroid/adservices/measurement/WebSourceParams;

    move-result-object v2

    const-string v3, "Builder(param.registrati\u2026                 .build()"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LA2/p;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, LA2/a;->m(Landroid/net/Uri;Ljava/util/ArrayList;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    invoke-static {v0}, LA2/a;->k(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    invoke-static {v0}, LA2/a;->B(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    iget-object p0, p0, LA2/p;->c:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, LA2/a;->l(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;Landroid/view/MotionEvent;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object p0

    invoke-static {p0}, LA2/a;->D(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object p0

    invoke-static {p0}, LA2/a;->n(Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object p0

    const-string v0, "Builder(\n               \u2026ion)\n            .build()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LA2/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LA2/p;

    iget-object v1, p1, LA2/p;->a:Ljava/util/List;

    iget-object v3, p0, LA2/p;->a:Ljava/util/List;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, LA2/p;->b:Landroid/net/Uri;

    iget-object v4, p1, LA2/p;->b:Landroid/net/Uri;

    invoke-static {v3, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, LA2/p;->c:Landroid/view/MotionEvent;

    iget-object p1, p1, LA2/p;->c:Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LA2/p;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LA2/p;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    iget-object p0, p0, LA2/p;->c:Landroid/view/MotionEvent;

    if-eqz p0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    if-eqz p0, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSourceParams=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LA2/p;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], TopOriginUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA2/p;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", InputEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LA2/p;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", AppDestination=null, WebDestination=null, VerifiedDestination=null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebSourceRegistrationRequest { "

    const-string v1, " }"

    invoke-static {v0, p0, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
