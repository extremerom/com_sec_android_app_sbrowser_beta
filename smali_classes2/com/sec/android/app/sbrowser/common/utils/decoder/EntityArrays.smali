.class public Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

.field private static final JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\u0008"

    const-string v1, "\\b"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, "\\t"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u000c"

    const-string v4, "\\f"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, "\\r"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;->invert([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    return-void
.end method

.method public static invert([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    array-length v2, p0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    aget-object v6, p0, v4

    aget-object v6, v6, v3

    aput-object v6, v5, v1

    aget-object v5, v0, v4

    aget-object v6, p0, v4

    aget-object v6, v6, v1

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static javaCtrlCharsUnescape()[[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method
