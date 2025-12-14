.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;,
        Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u000289B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ/\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J5\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ;\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u001c0\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\u001f\u0010!\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J1\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002\u00a2\u0006\u0004\u0008!\u0010%J9\u0010\'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160&0\u00062\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010*\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010,\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008,\u0010+J5\u0010/\u001a\u00020\r2\u0006\u0010.\u001a\u00020-2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008/\u00100J\u0013\u00101\u001a\u00020\u0004*\u00020-H\u0007\u00a2\u0006\u0004\u00081\u00102R\u0014\u00104\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u00106\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00105R\u0014\u00107\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00105\u00a8\u0006:"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
        "sequence",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
        "entityTypes",
        "Landroid/graphics/Rect;",
        "validRect",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;",
        "textClassificationHelper",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;",
        "extractEntityInternal",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;",
        "Landroid/view/textclassifier/TextClassification;",
        "classification",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;",
        "parseActionItems",
        "(Landroid/view/textclassifier/TextClassification;Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Landroid/graphics/Rect;)Ljava/util/List;",
        "seq",
        "",
        "start",
        "end",
        "entityType",
        "createRectList",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;IILcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Ljava/util/List;",
        "",
        "Landroid/graphics/Point;",
        "createPolyList",
        "r1",
        "r2",
        "sum",
        "(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;",
        "p1",
        "p2",
        "([Landroid/graphics/Point;[Landroid/graphics/Point;)[Landroid/graphics/Point;",
        "Ldb/j;",
        "getLineIndexList",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;",
        "index",
        "adjustEmptyCharacterStartIndex",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I",
        "adjustEmptyCharacterEndIndex",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "ocrResult",
        "extractEntity",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;",
        "toCharacterSequence",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;",
        "BLOCK_SEPARATOR",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;",
        "LINE_SEPARATOR",
        "WORD_SEPARATOR",
        "CharacterSequence",
        "Character",
        "deepsky-sdk-textextraction-8.5.6_release"
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
.field private static final BLOCK_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LINE_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WORD_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\n"

    const-string v3, "WHITESPACE_BLOCK"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Point;ILtb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->BLOCK_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "\n"

    const-string v9, "WHITESPACE_LINE"

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Point;ILtb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->LINE_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    const-string v2, " "

    const-string v3, "WHITESPACE_WORD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Point;ILtb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->WORD_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->toCharacterSequence$lambda$10(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private final adjustEmptyCharacterEndIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lfb/n;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WHITESPACE_WORD"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_2
    sub-int/2addr p2, p1

    return p2
.end method

.method private final adjustEmptyCharacterStartIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WHITESPACE_WORD"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    add-int/2addr p2, p1

    return p2
.end method

.method private final createPolyList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;IILcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
            "II",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
            ")",
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->isDateTimeEntity(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->getLineIndexList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldb/j;

    iget-object v0, p4, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->adjustEmptyCharacterStartIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I

    move-result v0

    iget-object p4, p4, Ldb/j;->b:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->adjustEmptyCharacterEndIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I

    move-result p4

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getPoly()[Landroid/graphics/Point;

    move-result-object v0

    invoke-static {p4}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getPoly()[Landroid/graphics/Point;

    move-result-object p4

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->sum([Landroid/graphics/Point;[Landroid/graphics/Point;)[Landroid/graphics/Point;

    move-result-object p4

    array-length v0, p4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method private final createRectList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;IILcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
            "II",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->isDateTimeEntity(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->getLineIndexList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldb/j;

    iget-object v0, p4, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->adjustEmptyCharacterStartIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I

    move-result v0

    iget-object p4, p4, Ldb/j;->b:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->adjustEmptyCharacterEndIndex(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;I)I

    move-result p4

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p4}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-direct {p0, v0, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->sum(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method private final extractEntityInternal(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->hashCode()I

    move-result p0

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, ","

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSS|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;

    sget-object v0, Lfb/v;->a:Lfb/v;

    const-string v1, ""

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, p4

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;->classifyText$default(Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Landroid/view/textclassifier/TextClassification;

    move-result-object p4

    if-eqz p4, :cond_1

    sget-object p2, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    invoke-direct {p2, p4, p1, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->parseActionItems(Landroid/view/textclassifier/TextClassification;Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "language-tags"

    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "extractEntity, actionItems.size: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", languageTag: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OcrEntityExtractor"

    invoke-static {p4, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object p2, p3

    :cond_1
    return-object p2
.end method

.method private final getLineIndexList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
            "II)",
            "Ljava/util/List<",
            "Ldb/j;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "\n"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p1, p3, p3}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ldb/j;

    add-int v2, p2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final parseActionItems(Landroid/view/textclassifier/TextClassification;Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityScoreGenerator;

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityScoreGenerator;-><init>()V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    const-string v1, "getActions(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->getEntityText(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->getEntityStartIndex(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)I

    move-result v4

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->getEntityEndIndex(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)I

    move-result v5

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v5, v7, :cond_2

    move v5, v7

    :cond_2
    sget-object v7, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType$Companion;

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/EntityUtils;->getEntityTypeID(Landroid/view/textclassifier/TextClassification;Landroid/app/RemoteAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType$Companion;->toEntityType(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parsing actionItem with entityType: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", startIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", endIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OcrEntityExtractor"

    invoke-static {v9, v8}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType$Companion;->listOfEntityType()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v7, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    :try_start_0
    invoke-direct {v7, p2, v4, v5, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->createRectList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;IILcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v7}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v7

    :goto_1
    instance-of v9, v7, Ldb/l;

    if-eqz v9, :cond_4

    move-object v7, v8

    :cond_4
    check-cast v7, Ljava/util/List;

    sget-object v9, Lfb/v;->a:Lfb/v;

    if-nez v7, :cond_5

    move-object v7, v9

    :cond_5
    sget-object v10, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    :try_start_1
    invoke-direct {v10, p2, v4, v5, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->createPolyList(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;IILcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {v4}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v4

    :goto_2
    instance-of v5, v4, Ldb/l;

    if-eqz v5, :cond_6

    move-object v4, v8

    :cond_6
    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v9, v4

    :goto_3
    :try_start_2
    invoke-static {v7}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v4

    invoke-static {v4}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v4

    :goto_4
    instance-of v5, v4, Ldb/l;

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move-object v8, v4

    :goto_5
    check-cast v8, Landroid/graphics/Rect;

    if-nez v8, :cond_9

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    :cond_9
    invoke-virtual {p0, v6, v3, v8, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityScoreGenerator;->measureEntityScore(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v10

    filled-new-array {v2}, [Landroid/app/RemoteAction;

    move-result-object v2

    invoke-static {v2}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v11, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;

    move-object v4, v11

    move-object v5, v3

    move-object v8, v9

    move v9, v10

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V

    move-object v8, v11

    :goto_6
    if-eqz v8, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v1
.end method

.method private final sum(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance p0, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private final sum([Landroid/graphics/Point;[Landroid/graphics/Point;)[Landroid/graphics/Point;
    .locals 3

    new-instance p0, Landroid/graphics/Point;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x2

    aget-object p2, p2, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    const/4 v2, 0x3

    aget-object p1, p1, v2

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    filled-new-array {p0, v0, v1, p2}, [Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static final toCharacterSequence$lambda$10(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final extractEntity(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ocrResult"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityTypes"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textClassificationHelper"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->toCharacterSequence(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->extractEntityInternal(Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;

    move-result-object p0

    return-object p0
.end method

.method public final toCharacterSequence(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;
    .locals 22
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_9

    check-cast v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_6

    check-cast v10, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getWordInfo()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-ltz v13, :cond_3

    check-cast v14, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getCharInfo()Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v14, v7}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;->getString()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_0

    const-string v16, ""

    :cond_0
    move-object/from16 v17, v16

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x2

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Point;ILtb/f;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v3}, Lgb/c;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getWordInfo()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->f(Ljava/util/List;)I

    move-result v1

    if-eq v13, v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->WORD_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0, v1}, Lgb/c;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v1, p1

    move v13, v15

    goto :goto_2

    :cond_3
    invoke-static {}, Lfb/o;->l()V

    const/4 v1, 0x0

    throw v1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lfb/o;->f(Ljava/util/List;)I

    move-result v3

    if-eq v9, v3, :cond_5

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->LINE_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0, v3}, Lgb/c;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p1

    move v9, v11

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    invoke-static {}, Lfb/o;->l()V

    throw v1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->f(Ljava/util/List;)I

    move-result v1

    if-eq v4, v1, :cond_8

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->BLOCK_SEPARATOR:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$Character;

    invoke-virtual {v0, v1}, Lgb/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lgb/c;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v1, p1

    move v4, v6

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    invoke-static {}, Lfb/o;->l()V

    throw v1

    :cond_a
    invoke-static {v0}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object v0

    new-instance v11, Lcom/sec/android/app/sbrowser/sites/provider/b;

    const/4 v1, 0x3

    invoke-direct {v11, v1}, Lcom/sec/android/app/sbrowser/sites/provider/b;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, ""

    const/16 v12, 0x1e

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor$CharacterSequence;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method
