.class public Lorg/chromium/components/signin/PatternMatcher$IllegalPatternException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/PatternMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalPatternException"
.end annotation


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unmatched escape symbol at the end"

    invoke-direct {p0, v0, p1}, Lorg/chromium/components/signin/PatternMatcher$IllegalPatternException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Illegal pattern \'"

    const-string v1, "\': "

    invoke-static {v0, p2, v1, p1}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
