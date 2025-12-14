.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AntPatternComparator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;

    invoke-direct {v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isLeastSpecific()Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_2

    return v5

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator;->path:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    return v3

    :cond_3
    if-eqz p1, :cond_4

    return v5

    :cond_4
    if-eqz p0, :cond_5

    return v4

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getDoubleWildcards()I

    move-result p0

    if-nez p0, :cond_7

    return v4

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->isPrefixPattern()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getDoubleWildcards()I

    move-result p0

    if-nez p0, :cond_8

    return v5

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p1

    if-eq p0, p1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getTotalCount()I

    move-result p1

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    if-eq p0, p1, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getLength()I

    move-result p1

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p1

    if-ge p0, p1, :cond_b

    return v5

    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getSingleWildcards()I

    move-result p1

    if-ge p0, p1, :cond_c

    return v4

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p1

    if-ge p0, p1, :cond_d

    return v5

    :cond_d
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$AntPatternComparator$PatternInfo;->getUriVars()I

    move-result p1

    if-ge p0, p1, :cond_e

    return v4

    :cond_e
    return v3
.end method
