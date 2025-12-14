.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\nR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "inputText",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;",
        "callback",
        "Ldb/r;",
        "detectLanguageByScs",
        "(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V",
        "detectLanguageByMLKit",
        "",
        "isSupportedScsTextDetectLanguage",
        "()Z",
        "identifyLanguage",
        "TAG",
        "Ljava/lang/String;",
        "",
        "TEXT_LENGTH_LIMIT",
        "I",
        "isScsTextDetectLanguageSupported",
        "Ljava/lang/Boolean;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByScs$lambda$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/String;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByMLKit$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LC9/b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByMLKit$lambda$4(Lsb/k;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(LH9/c;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByScs$lambda$2(Lsb/k;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private final detectLanguageByMLKit(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V
    .locals 10

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object p0

    const-class v0, LU7/a;

    invoke-virtual {p0, v0}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU7/a;

    iget-object v0, p0, LU7/a;->b:LU7/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;

    iget-object v2, p0, LU7/a;->c:LQ7/d;

    iget-object v2, v2, LQ7/d;->a:LC7/a;

    invoke-interface {v2}, LC7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v4, p0, LU7/a;->a:LG5/f4;

    invoke-direct {v1, v0, v4, v2}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;-><init>(LU7/e;LG5/f4;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lo3/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:LG5/M2;

    iput-object v0, p0, Lo3/i;->c:Ljava/lang/Object;

    new-instance v0, Lo3/t;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Lo3/t;-><init>(I)V

    invoke-static {}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d()LG5/K2;

    move-result-object v3

    iput-object v3, v0, Lo3/t;->c:Ljava/lang/Object;

    new-instance v3, LG5/m3;

    invoke-direct {v3, v0}, LG5/m3;-><init>(Lo3/t;)V

    iput-object v3, p0, Lo3/i;->d:Ljava/lang/Object;

    new-instance v5, LG5/g4;

    const/4 v0, 0x1

    invoke-direct {v5, p0, v0}, LG5/g4;-><init>(Lo3/i;I)V

    sget-object v6, LG5/O2;->zzx:LG5/O2;

    iget-object p0, v4, LG5/f4;->e:LR5/p;

    invoke-virtual {p0}, LR5/p;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LR5/p;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/internal/m;->c:Lcom/google/android/gms/common/internal/m;

    iget-object v3, v4, LG5/f4;->g:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :goto_1
    sget-object p0, LQ7/k;->zza:LQ7/k;

    new-instance v9, LG5/e4;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v9}, LQ7/k;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU7/e;

    iget-object v3, v3, LU7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v3, "Text can not be null"

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU7/e;

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    const-string v5, "LanguageIdentification has been closed"

    invoke-static {v5, v4}, Lcom/google/android/gms/common/internal/o;->h(Ljava/lang/String;Z)V

    iget-object v4, p0, LU7/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    new-instance v7, LU7/d;

    xor-int/2addr v4, v0

    invoke-direct {v7, v1, p0, p1, v4}, LU7/d;-><init>(Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;LU7/e;Ljava/lang/String;Z)V

    iget-object p1, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:LJ7/c;

    iget-object p1, p1, LJ7/c;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, LX4/i;

    iget-object p1, p0, LU7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_3

    :cond_2
    move v0, v3

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    iget-object p1, v5, LX4/i;->b:Ljava/lang/Object;

    check-cast p1, LR5/p;

    invoke-virtual {p1}, LR5/p;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, LR5/p;

    invoke-direct {p0}, LR5/p;-><init>()V

    invoke-virtual {p0}, LR5/p;->q()V

    goto :goto_4

    :cond_3
    new-instance v6, LJ7/c;

    const/4 p1, 0x6

    invoke-direct {v6, p1}, LJ7/c;-><init>(I)V

    new-instance p1, LR5/i;

    iget-object v0, v6, LJ7/c;->b:Ljava/lang/Object;

    check-cast v0, LX4/i;

    invoke-direct {p1, v0}, LR5/i;-><init>(LX4/i;)V

    new-instance v0, LJ2/k0;

    invoke-direct {v0, v2, v5, v6, p1}, LJ2/k0;-><init>(Ljava/util/concurrent/Executor;LX4/i;LJ7/c;LR5/i;)V

    new-instance v1, LQ7/n;

    move-object v3, v1

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, LQ7/n;-><init>(LU7/e;LX4/i;LJ7/c;LU7/d;LR5/i;)V

    iget-object p0, p0, LU7/e;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/scloud/lib/setting/e;->q(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, p1, LR5/i;->a:LR5/p;

    :goto_4
    new-instance p1, LC9/b;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LR5/j;->a:LH4/s;

    invoke-virtual {p0, p1, v0}, LR5/p;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, LR5/p;->c(LR5/d;)LR5/p;

    return-void
.end method

.method private static final detectLanguageByMLKit$lambda$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/String;)Ldb/r;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MLKit Detected Language : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LanguageDetectionUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;->onSuccess(Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final detectLanguageByMLKit$lambda$4(Lsb/k;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final detectLanguageByMLKit$lambda$5(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;->onFailure()V

    return-void
.end method

.method private final detectLanguageByScs(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguagePackCode(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    new-instance v0, LH9/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/firebase/messaging/z;

    const/16 p2, 0x9

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method private static final detectLanguageByScs$lambda$1(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    const-string v2, "LanguageDetectionUtils"

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p0, "SCS Detected Language : "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;->onSuccess(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    const-string v0, "failed : "

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByMLKit(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V

    return-object v1
.end method

.method private static final detectLanguageByScs$lambda$2(Lsb/k;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByMLKit$lambda$5(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method private final isSupportedScsTextDetectLanguage()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->access$isScsTextDetectLanguageSupported$cp()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "FEATURE_NATURAL_LANGUAGE_QUERY"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->access$setScsTextDetectLanguageSupported$cp(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->access$isScsTextDetectLanguageSupported$cp()Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isScsTextDetectLanguageSupported : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LanguageDetectionUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->access$isScsTextDetectLanguageSupported$cp()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final identifyLanguage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;->onFailure()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->isSupportedScsTextDetectLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByScs(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->detectLanguageByMLKit(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V

    return-void
.end method
