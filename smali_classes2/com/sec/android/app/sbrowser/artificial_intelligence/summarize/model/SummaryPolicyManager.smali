.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager$SummaryStyle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0015\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J%\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR*\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00078\u0006@BX\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u0012\u0004\u0008$\u0010\u0003\u001a\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "loadSummaryPolicy",
        "Ldb/m;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;",
        "loadSummaryPolicyFromGlobalConfig-d1pmJ48",
        "()Ljava/lang/Object;",
        "loadSummaryPolicyFromGlobalConfig",
        "loadSummaryPolicyFromAsset-d1pmJ48",
        "loadSummaryPolicyFromAsset",
        "",
        "jsonString",
        "toSummaryPolicyInfoFromStr",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;",
        "",
        "inputSize",
        "languageCode",
        "style",
        "getCountOfSentences",
        "(ILjava/lang/String;Ljava/lang/String;)I",
        "getMaxLength",
        "(Ljava/lang/String;)I",
        "jsonStr",
        "updateSummaryPolicy",
        "(Ljava/lang/String;)V",
        "",
        "isLoaded",
        "()Z",
        "value",
        "summaryPolicyInfo",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;",
        "getSummaryPolicyInfo",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;",
        "getSummaryPolicyInfo$annotations",
        "SummaryStyle",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static summaryPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getSummaryPolicyInfo$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final loadSummaryPolicy()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicyFromGlobalConfig-d1pmJ48()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "loadSummaryPolicy from GlobalConfig - Failed: "

    const-string v1, "SummaryPolicyManager"

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicyFromAsset-d1pmJ48()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadSummaryPolicy from Asset - Failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/DefaultPolicyInfo;ILtb/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadSummaryPolicy from Fallback (Abnormal Action): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    :goto_1
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    sput-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->summaryPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    return-void
.end method

.method private final loadSummaryPolicyFromAsset-d1pmJ48()Ljava/lang/Object;
    .locals 4

    const-string v0, "loadSummaryPolicy from Asset - Success: "

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "artificial_intelligence/ai_summary_policy.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "open(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LKc/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3}, LG5/r;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v3, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->toSummaryPolicyInfoFromStr(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SummaryPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid summary policy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {v3, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final loadSummaryPolicyFromGlobalConfig-d1pmJ48()Ljava/lang/Object;
    .locals 4

    const-string v0, "ai_summary_policy.json"

    const-string v1, "loadSummaryPolicy from GlobalConfig - Success: "

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->toSummaryPolicyInfoFromStr(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SummaryPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid summary policy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Summary policy is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Summary policy file is not existed"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final toSummaryPolicyInfoFromStr(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;
    .locals 20

    move-object/from16 v0, p1

    sget-object v1, Led/b;->d:Led/a;

    const-string v2, "from"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Led/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v1, Led/b;->a:Led/d;

    iget-boolean v4, v3, Led/d;->a:Z

    iput-boolean v4, v2, Led/c;->a:Z

    iget-boolean v4, v3, Led/d;->f:Z

    iput-boolean v4, v2, Led/c;->b:Z

    iget-boolean v4, v3, Led/d;->b:Z

    iput-boolean v4, v2, Led/c;->c:Z

    iget-boolean v4, v3, Led/d;->c:Z

    iput-boolean v4, v2, Led/c;->d:Z

    iget-boolean v4, v3, Led/d;->d:Z

    iput-boolean v4, v2, Led/c;->e:Z

    iget-boolean v4, v3, Led/d;->e:Z

    iput-boolean v4, v2, Led/c;->f:Z

    iget-object v5, v3, Led/d;->g:Ljava/lang/String;

    iput-object v5, v2, Led/c;->g:Ljava/lang/String;

    iget-boolean v6, v3, Led/d;->h:Z

    iput-boolean v6, v2, Led/c;->h:Z

    iget-boolean v6, v3, Led/d;->i:Z

    iput-boolean v6, v2, Led/c;->i:Z

    iget-object v7, v3, Led/d;->j:Ljava/lang/String;

    iput-object v7, v2, Led/c;->j:Ljava/lang/String;

    iget-boolean v8, v3, Led/d;->k:Z

    iput-boolean v8, v2, Led/c;->k:Z

    iget-boolean v8, v3, Led/d;->l:Z

    iput-boolean v8, v2, Led/c;->l:Z

    iget-boolean v3, v3, Led/d;->m:Z

    iput-boolean v3, v2, Led/c;->m:Z

    iget-object v1, v1, Led/b;->b:Lu5/d;

    iput-object v1, v2, Led/c;->n:Lu5/d;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->toSummaryPolicyInfoFromStr$lambda$10(Led/c;)Ldb/r;

    if-eqz v6, :cond_1

    const-string v1, "type"

    invoke-static {v7, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v3, 0xa

    const-string v6, "    "

    if-nez v4, :cond_3

    invoke-static {v5, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v5, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_5

    const/16 v7, 0x9

    if-eq v6, v7, :cond_5

    const/16 v7, 0xd

    if-eq v6, v7, :cond_5

    if-ne v6, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    new-instance v4, Led/d;

    iget-boolean v8, v2, Led/c;->c:Z

    iget-boolean v5, v2, Led/c;->m:Z

    iget-boolean v7, v2, Led/c;->a:Z

    iget-boolean v9, v2, Led/c;->d:Z

    iget-boolean v10, v2, Led/c;->e:Z

    iget-boolean v11, v2, Led/c;->f:Z

    iget-boolean v12, v2, Led/c;->b:Z

    iget-object v13, v2, Led/c;->g:Ljava/lang/String;

    iget-boolean v14, v2, Led/c;->h:Z

    iget-boolean v15, v2, Led/c;->i:Z

    iget-object v6, v2, Led/c;->j:Ljava/lang/String;

    iget-boolean v1, v2, Led/c;->k:Z

    iget-boolean v3, v2, Led/c;->l:Z

    move-object/from16 v16, v6

    move-object v6, v4

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v5

    invoke-direct/range {v6 .. v19}, Led/d;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZZ)V

    new-instance v1, Led/e;

    iget-object v2, v2, Led/c;->n:Lu5/d;

    const-string v3, "module"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v2}, Led/b;-><init>(Led/d;Lu5/d;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo$Companion;->serializer()Lad/b;

    move-result-object v2

    const-string v3, "deserializer"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "string"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LP9/a;

    invoke-direct {v3, v0}, LP9/a;-><init>(Ljava/lang/String;)V

    new-instance v4, LU9/c;

    sget-object v5, Lfd/h;->OBJ:Lfd/h;

    invoke-interface {v2}, Lad/b;->getDescriptor()Lbd/d;

    move-result-object v6

    invoke-direct {v4, v1, v5, v3, v6}, LU9/c;-><init>(Led/e;Lfd/h;LP9/a;Lbd/d;)V

    invoke-virtual {v4, v2}, LU9/c;->h(Lad/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, LP9/a;->f()B

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_7

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    return-object v1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected EOF after parsing, but had "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, LP9/a;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " instead"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2, v1}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method private static final toSummaryPolicyInfoFromStr$lambda$10(Led/c;)Ldb/r;
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Led/c;->c:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final getCountOfSentences(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "languageCode"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicy()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->getSummaryPolicyInfo()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->getPolicyInfoByLanguageCode(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;

    move-result-object p0

    const-string p2, "long_note"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getLongNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->getSentenceByLength(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getShortNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->getSentenceByLength(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getMaxLength(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicy()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->getSummaryPolicyInfo()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->getPolicyInfoByLanguageCode(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getMaxLength()I

    move-result p0

    return p0
.end method

.method public final getSummaryPolicyInfo()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->summaryPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "summaryPolicyInfo"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isLoaded()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->summaryPolicyInfo:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateSummaryPolicy(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->toSummaryPolicyInfoFromStr(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicyInfo;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ai_summary_policy.json"

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid summary policy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_1
    instance-of p1, p0, Ldb/l;

    const-string v0, "SummaryPolicyManager"

    if-nez p1, :cond_1

    move-object p1, p0

    check-cast p1, Ldb/r;

    const-string p1, "updateSummaryPolicy success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicy()V

    :cond_1
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "updateSummaryPolicy failed: "

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->loadSummaryPolicy()V

    :cond_2
    return-void
.end method
