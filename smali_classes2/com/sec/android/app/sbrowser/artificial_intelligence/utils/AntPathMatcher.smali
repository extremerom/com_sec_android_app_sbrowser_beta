.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/PathMatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator;
    }
.end annotation


# static fields
.field private static final VARIABLE_PATTERN:Ljava/util/regex/Pattern;

.field private static final WILDCARD_CHARS:[C


# instance fields
.field private volatile cachePatterns:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private caseSensitive:Z

.field private pathSeparator:Ljava/lang/String;

.field private pathSeparatorPatternCache:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;

.field final stringMatcherCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenizedPatternCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trimTokens:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{[^/]+?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->WILDCARD_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2as
        0x3fs
        0x7bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->caseSensitive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->trimTokens:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizedPatternCache:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->stringMatcherCache:Ljava/util/Map;

    const-string v0, "/"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparatorPatternCache:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->VARIABLE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private deactivatePatternCache()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->cachePatterns:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizedPatternCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->stringMatcherCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private isPotentialMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->trimTokens:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v5, p2, v3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->skipSeparator(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->skipSegment(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    if-gtz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->isWildcardChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private isWildcardChar(C)Z
    .locals 4

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->WILDCARD_CHARS:[C

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private matchStrings(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->getStringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;->matchStrings(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private skipSegment(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->isWildcardChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int v4, p2, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private skipSeparator(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    :goto_0
    add-int v0, p2, p0

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public doMatch(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z
    .locals 17
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eq v5, v6, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizePattern(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_1

    iget-boolean v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->caseSensitive:Z

    if-eqz v6, :cond_1

    invoke-direct {v0, v2, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->isPotentialMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    array-length v9, v6

    sub-int/2addr v9, v8

    move v10, v4

    move v11, v10

    :goto_0
    const-string v12, "**"

    if-gt v10, v7, :cond_4

    if-gt v11, v9, :cond_4

    aget-object v13, v5, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    aget-object v12, v6, v11

    invoke-direct {v0, v13, v12, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v12

    if-nez v12, :cond_3

    return v4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-le v11, v9, :cond_b

    if-le v10, v7, :cond_6

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_5

    move v4, v8

    :cond_5
    return v4

    :cond_6
    if-nez p3, :cond_7

    return v8

    :cond_7
    if-ne v10, v7, :cond_8

    aget-object v1, v5, v10

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v8

    :cond_8
    :goto_2
    if-gt v10, v7, :cond_a

    aget-object v0, v5, v10

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    return v8

    :cond_b
    if-le v10, v7, :cond_c

    return v4

    :cond_c
    if-nez p3, :cond_d

    aget-object v13, v5, v10

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    return v8

    :cond_d
    :goto_3
    if-gt v10, v7, :cond_11

    if-gt v11, v9, :cond_11

    aget-object v13, v5, v7

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_4

    :cond_e
    aget-object v14, v6, v9

    invoke-direct {v0, v13, v14, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v13

    if-nez v13, :cond_f

    return v4

    :cond_f
    array-length v13, v5

    sub-int/2addr v13, v8

    if-ne v7, v13, :cond_10

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eq v13, v14, :cond_10

    return v4

    :cond_10
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_11
    :goto_4
    if-le v11, v9, :cond_14

    :goto_5
    if-gt v10, v7, :cond_13

    aget-object v0, v5, v10

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_13
    return v8

    :cond_14
    :goto_6
    if-eq v10, v7, :cond_1c

    if-gt v11, v9, :cond_1c

    add-int/lit8 v1, v10, 0x1

    move v2, v1

    :goto_7
    if-gt v2, v7, :cond_16

    aget-object v14, v5, v2

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    goto :goto_8

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    const/4 v2, -0x1

    :goto_8
    if-ne v2, v1, :cond_17

    move v10, v1

    goto :goto_6

    :cond_17
    sub-int v1, v2, v10

    sub-int/2addr v1, v8

    sub-int v14, v9, v11

    add-int/2addr v14, v8

    move v15, v4

    :goto_9
    sub-int v4, v14, v1

    if-gt v15, v4, :cond_1a

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_19

    add-int v16, v10, v4

    add-int/lit8 v16, v16, 0x1

    aget-object v8, v5, v16

    add-int v16, v11, v15

    add-int v16, v16, v4

    aget-object v13, v6, v16

    invoke-direct {v0, v8, v13, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_18

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_9

    :cond_18
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto :goto_a

    :cond_19
    add-int/2addr v11, v15

    const/4 v4, -0x1

    goto :goto_b

    :cond_1a
    const/4 v4, -0x1

    const/4 v11, -0x1

    :goto_b
    if-ne v11, v4, :cond_1b

    const/4 v4, 0x0

    return v4

    :cond_1b
    const/4 v4, 0x0

    add-int/2addr v11, v1

    move v10, v2

    const/4 v8, 0x1

    goto :goto_6

    :cond_1c
    :goto_c
    if-gt v10, v7, :cond_1e

    aget-object v0, v5, v10

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v4

    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_1f
    :goto_d
    return v4
.end method

.method public getStringMatcher(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->cachePatterns:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->stringMatcherCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->caseSensitive:Z

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPathStringMatcher;-><init>(Ljava/lang/String;Z)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->stringMatcherCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->deactivatePatternCache()V

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->stringMatcherCache:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->doMatch(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public tokenizePath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->trimTokens:Z

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tokenizePattern(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->cachePatterns:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizedPatternCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizedPatternCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->deactivatePatternCache()V

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->tokenizedPatternCache:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method
