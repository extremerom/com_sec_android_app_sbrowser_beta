.class public final Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableRowInfo;,
        Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0007)*+,-./B+\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R(\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0018\u001a\u0004\u0008\u0008\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0013R!\u0010$\u001a\u0008\u0012\u0004\u0012\u00020!0\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008#\u0010\u0013R!\u0010(\u001a\u0008\u0012\u0004\u0012\u00020%0\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001e\u001a\u0004\u0008\'\u0010\u0013\u00a8\u00060"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;",
        "",
        "",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
        "blockInfoList",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;",
        "tableInfoList",
        "",
        "isHandwrittenResult",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Z)V",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;",
        "toResultMeta",
        "()Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;",
        "Ljava/util/List;",
        "getBlockInfoList",
        "()Ljava/util/List;",
        "setBlockInfoList",
        "(Ljava/util/List;)V",
        "getTableInfoList",
        "setTableInfoList",
        "Z",
        "()Z",
        "setHandwrittenResult",
        "(Z)V",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;",
        "charInfoList$delegate",
        "Ldb/f;",
        "getCharInfoList",
        "charInfoList",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;",
        "wordInfoList$delegate",
        "getWordInfoList",
        "wordInfoList",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;",
        "lineInfoList$delegate",
        "getLineInfoList",
        "lineInfoList",
        "CharInfo",
        "WordInfo",
        "LineInfo",
        "BlockInfo",
        "TableCellInfo",
        "TableRowInfo",
        "TableInfo",
        "VexFrameworkSDK_forInternalRelease"
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


# instance fields
.field private blockInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final charInfoList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isHandwrittenResult:Z

.field private final lineInfoList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tableInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wordInfoList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "blockInfoList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableInfoList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->tableInfoList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->isHandwrittenResult:Z

    new-instance p1, Ly9/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ly9/b;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->charInfoList$delegate:Ldb/f;

    new-instance p1, Ly9/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ly9/b;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->wordInfoList$delegate:Ldb/f;

    new-instance p1, Ly9/b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Ly9/b;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->lineInfoList$delegate:Ldb/f;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->lineInfoList_delegate$lambda$5(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->wordInfoList_delegate$lambda$3(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->charInfoList_delegate$lambda$1(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final charInfoList_delegate$lambda$1(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->getWordInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;->getCharInfoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final lineInfoList_delegate$lambda$5(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->getLineInfoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final wordInfoList_delegate$lambda$3(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->getLineInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;->getWordInfoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    check-cast p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    iget-object v3, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;

    iget-object v5, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final getBlockInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getCharInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->charInfoList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getLineInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->lineInfoList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getTableInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->tableInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getWordInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->wordInfoList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final isHandwrittenResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->isHandwrittenResult:Z

    return p0
.end method

.method public final setBlockInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    return-void
.end method

.method public final setHandwrittenResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->isHandwrittenResult:Z

    return-void
.end method

.method public final setTableInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->tableInfoList:Ljava/util/List;

    return-void
.end method

.method public final toResultMeta()Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->blockInfoList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;

    invoke-virtual {v4}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->getLineInfoList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;

    invoke-virtual {v7}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;->getWordInfoList()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;

    invoke-virtual {v10}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;->getCharInfoList()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;

    new-instance v14, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$CharInfo;

    invoke-virtual {v13}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v13}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;->getAngle()F

    move-result v13

    invoke-direct {v14, v15, v3, v13}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$CharInfo;-><init>(Ljava/lang/String;[Landroid/graphics/Point;F)V

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_3

    :cond_0
    invoke-virtual {v10}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;->getAngle()F

    move-result v10

    new-instance v13, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$WordInfo;

    invoke-direct {v13, v12, v3, v11, v10}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$WordInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;[Landroid/graphics/Point;F)V

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v7}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;->isCurved()Z

    move-result v8

    invoke-virtual {v7}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;->getAngle()F

    move-result v7

    new-instance v10, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$LineInfo;

    invoke-direct {v10, v9, v3, v8, v7}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$LineInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;ZF)V

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v4}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->isTabular()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;->getAngle()F

    move-result v4

    new-instance v7, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$BlockInfo;

    invoke-direct {v7, v6, v3, v5, v4}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$BlockInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;IF)V

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->tableInfoList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;

    invoke-virtual {v5}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;->getTableRowInfoList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableRowInfo;

    invoke-virtual {v8}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableRowInfo;->getTableCellInfoList()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;

    new-instance v12, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableCellInfo;

    invoke-virtual {v11}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->getCellBoundary()[Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {v11}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->getCellText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->getAngle()F

    move-result v11

    invoke-direct {v12, v13, v14, v11}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableCellInfo;-><init>([Landroid/graphics/Point;Ljava/lang/String;F)V

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableRowInfo;->getAngle()F

    move-result v8

    new-instance v9, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableRowInfo;

    invoke-direct {v9, v10, v8}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableRowInfo;-><init>(Ljava/util/List;F)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;->getTableBoundary()[Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableInfo;->getAngle()F

    move-result v5

    new-instance v8, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableInfo;

    invoke-direct {v8, v7, v6, v5}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2$TableInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;F)V

    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-boolean v0, v0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;->isHandwrittenResult:Z

    new-instance v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-object v1
.end method
