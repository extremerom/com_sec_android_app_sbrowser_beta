.class Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathSeparatorPatternCache"
.end annotation


# instance fields
.field private final endsOnDoubleWildCard:Ljava/lang/String;

.field private final endsOnWildCard:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*"

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;->endsOnWildCard:Ljava/lang/String;

    const-string v0, "**"

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher$PathSeparatorPatternCache;->endsOnDoubleWildCard:Ljava/lang/String;

    return-void
.end method
