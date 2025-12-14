.class public Lcom/sec/android/app/sbrowser/common/utils/decoder/AggregateTranslator;
.super Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;
.source "SourceFile"


# instance fields
.field private final mTranslator:[Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/decoder/AggregateTranslator;->mTranslator:[Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/decoder/AggregateTranslator;->mTranslator:[Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v3

    if-eqz v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
