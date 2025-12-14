.class public abstract LG5/o2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final b(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
    .locals 9

    const-string v0, "annotationClass"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methods"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LDb/E;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v6

    new-instance v0, LDb/J;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v1

    new-instance v8, LEb/d;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, LEb/d;-><init>(Ljava/lang/Class;Ljava/util/Map;Ldb/o;Ldb/o;Ljava/util/List;)V

    invoke-static {v0, v1, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt.createAnnotationInstance"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(LJb/b;LJb/b;)Z
    .locals 5

    const-string v0, "superDescriptor"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LUb/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p0, LJb/v;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, LUb/g;

    invoke-virtual {v0}, LMb/v;->H()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    check-cast p0, LJb/v;

    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual {v0}, LMb/M;->g1()LMb/M;

    move-result-object v0

    invoke-virtual {v0}, LMb/v;->H()Ljava/util/List;

    move-result-object v0

    const-string v2, "getValueParameters(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {p0}, LJb/v;->a()LJb/v;

    move-result-object v3

    invoke-interface {v3}, LJb/b;->H()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lfb/n;->n0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb/j;

    iget-object v3, v2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v3, LMb/T;

    iget-object v2, v2, Ldb/j;->b:Ljava/lang/Object;

    check-cast v2, LMb/T;

    move-object v4, p1

    check-cast v4, LJb/v;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v4, v3}, LG5/o2;->e(LJb/v;LMb/T;)Lac/l;

    move-result-object v3

    instance-of v3, v3, Lac/k;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0, v2}, LG5/o2;->e(LJb/v;LMb/T;)Lac/l;

    move-result-object v2

    instance-of v2, v2, Lac/k;

    if-eq v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static d(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const-string v0, "FirebaseMessaging"

    :try_start_0
    invoke-static {}, Lp7/f;->b()Lp7/f;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "google.c.a.c_id"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "_nmid"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "google.c.a.c_l"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "_nmn"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "google.c.a.m_l"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "label"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "google.c.a.m_c"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "message_channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "from"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v4, "/topics/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_6

    const-string v4, "_nt"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "google.c.a.ts"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_1
    const-string v4, "_nmt"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "Error while parsing timestamp in GCM event"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    const-string v2, "google.c.a.udt"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    if-eqz v3, :cond_9

    :try_start_2
    const-string v2, "_ndt"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "Error while parsing use_device_time in GCM event"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    invoke-static {p0}, LJ7/c;->u(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "display"

    goto :goto_3

    :cond_a
    const-string p0, "data"

    :goto_3
    const-string v2, "_nr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "_nf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string v2, "_nmc"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 p0, 0x3

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Logging to scion event="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " scionPayload="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Lp7/f;->b()Lp7/f;

    move-result-object p0

    invoke-virtual {p0}, Lp7/f;->a()V

    iget-object p0, p0, Lp7/f;->d:Lcom/google/firebase/components/h;

    const-class p1, Lq7/a;

    invoke-interface {p0, p1}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "Unable to log event: analytics library is missing"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :catch_2
    const-string p0, "Default FirebaseApp has not been initialized. Skip logging event to GA."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(LJb/v;LMb/T;)Lac/l;
    .locals 8

    const-string v0, "f"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, LMb/n;

    invoke-virtual {v0}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    sget-object v2, LHc/d;->a:LHc/d;

    const/4 v3, 0x0

    const-string v4, "getValueParameters(...)"

    const-string v5, "getType(...)"

    if-eqz v0, :cond_5

    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object v0

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v0, v0, LUb/c;

    if-nez v0, :cond_5

    invoke-static {p0}, LGb/i;->A(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p0}, LJb/v;->a()LJb/v;

    move-result-object v0

    invoke-interface {v0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb/T;

    check-cast v0, LMb/U;

    invoke-virtual {v0}, LMb/U;->getType()Lyc/w;

    move-result-object v0

    invoke-static {v0, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lac/t;->k:Lac/t;

    invoke-static {v0, v6, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/l;

    instance-of v7, v0, Lac/k;

    if-eqz v7, :cond_1

    check-cast v0, Lac/k;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lac/k;->i:Lpc/c;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    sget-object v7, Lpc/c;->INT:Lpc/c;

    if-eq v0, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0}, LSb/e;->a(LJb/v;)LJb/v;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, LJb/v;->a()LJb/v;

    move-result-object v7

    invoke-interface {v7}, LJb/b;->H()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LMb/T;

    check-cast v7, LMb/U;

    invoke-virtual {v7}, LMb/U;->getType()Lyc/w;

    move-result-object v7

    invoke-static {v7, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lac/l;

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v7, "getContainingDeclaration(...)"

    invoke-static {v0, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Loc/d;->h(LJb/l;)Lhc/d;

    move-result-object v0

    sget-object v7, LGb/p;->K:Lhc/c;

    iget-object v7, v7, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0, v7}, Lhc/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, v6, Lac/j;

    if-eqz v0, :cond_5

    check-cast v6, Lac/j;

    iget-object v0, v6, Lac/j;->i:Ljava/lang/String;

    const-string v6, "java/lang/Object"

    invoke-static {v0, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v6, v0, LJb/f;

    if-eqz v6, :cond_7

    check-cast v0, LJb/f;

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMb/T;

    check-cast p0, LMb/U;

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of v4, p0, LJb/f;

    if-eqz v4, :cond_9

    move-object v3, p0

    check-cast v3, LJb/f;

    :cond_9
    if-nez v3, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v0}, LGb/i;->u(LJb/f;)LGb/l;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {v0}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object p0

    invoke-static {v3}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :goto_4
    check-cast p1, LMb/U;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object p0

    sget-object p1, Lac/t;->k:Lac/t;

    invoke-static {p0, p1, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lac/l;

    goto :goto_6

    :cond_b
    :goto_5
    check-cast p1, LMb/U;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lac/t;->k:Lac/t;

    invoke-static {p0, p1, v2}, LG5/S3;->d(Lyc/w;Lac/t;Lsb/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lac/l;

    :goto_6
    return-object p0
.end method

.method public static f(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "google.c.a.e"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
