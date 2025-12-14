.class public Lcom/sec/android/app/sbrowser/common/utils/decoder/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/AggregateTranslator;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/decoder/OctalUnescaper;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/OctalUnescaper;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/common/utils/decoder/LookupTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/decoder/EntityArrays;->javaCtrlCharsUnescape()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/decoder/LookupTranslator;

    const-string v5, "\\\\"

    const-string v6, "\\"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "\\\""

    const-string v8, "\""

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\\'"

    const-string v9, "\'"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v7, v8, v6}, [[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/common/utils/decoder/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-direct {v0, v5}, Lcom/sec/android/app/sbrowser/common/utils/decoder/AggregateTranslator;-><init>([Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    return-void
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringEscapeUtils;->UNESCAPE_JAVA:Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
