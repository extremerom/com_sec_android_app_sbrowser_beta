.class public final LU7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/scloud/lib/setting/e;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

.field public final e:Landroid/content/Context;

.field public final f:LT7/b;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LT7/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LU7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LU7/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/e;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(IB)V

    iput-object v0, p0, LU7/e;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iput-object p1, p0, LU7/e;->e:Landroid/content/Context;

    iput-object p2, p0, LU7/e;->f:LT7/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    iput-boolean p1, p0, LU7/e;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LU7/e;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    iget-object v0, p0, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    if-nez v0, :cond_0

    iget-object v0, p0, LU7/e;->f:LT7/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    iget-object v1, p0, LU7/e;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->b()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LU7/e;->a()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "und"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, LU7/e;->d:Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdentifier;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    iget-object v0, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    const-string p1, "iw"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "he"

    :cond_5
    return-object p0
.end method
