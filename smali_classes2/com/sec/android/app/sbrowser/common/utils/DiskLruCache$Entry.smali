.class final Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private mCurrentEditor:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

.field private final mKey:Ljava/lang/String;

.field private final mLengths:[J

.field private mReadable:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mLengths:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mCurrentEditor:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)[J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mLengths:[J

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mReadable:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V
    .locals 0

    iput-object p0, p1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mCurrentEditor:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mReadable:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getCleanFile(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDirtyFile(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLengths()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mLengths:[J

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 2

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected journal line: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->mLengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method
