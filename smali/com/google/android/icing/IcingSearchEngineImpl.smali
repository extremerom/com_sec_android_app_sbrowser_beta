.class public Lcom/google/android/icing/IcingSearchEngineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private nativePointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "icing"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCommitBlob(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeCreate([B)J
.end method

.method private static native nativeDelete(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native nativeDeleteByNamespace(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;)[B
.end method

.method private static native nativeDeleteByQuery(Lcom/google/android/icing/IcingSearchEngineImpl;[BZ)[B
.end method

.method private static native nativeDeleteBySchemaType(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;)[B
.end method

.method private static native nativeDestroy(Lcom/google/android/icing/IcingSearchEngineImpl;)V
.end method

.method private static native nativeGet(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private static native nativeGetAllNamespaces(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeGetDebugInfo(Lcom/google/android/icing/IcingSearchEngineImpl;I)[B
.end method

.method private static native nativeGetLoggingTag()Ljava/lang/String;
.end method

.method private static native nativeGetNextPage(Lcom/google/android/icing/IcingSearchEngineImpl;JJ)[B
.end method

.method private static native nativeGetOptimizeInfo(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeGetSchema(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeGetSchemaForDatabase(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;)[B
.end method

.method private static native nativeGetSchemaType(Lcom/google/android/icing/IcingSearchEngineImpl;Ljava/lang/String;)[B
.end method

.method private static native nativeGetStorageInfo(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeInitialize(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeInvalidateNextPageToken(Lcom/google/android/icing/IcingSearchEngineImpl;J)V
.end method

.method private static native nativeOpenReadBlob(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeOpenWriteBlob(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeOptimize(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativePersistToDisk(Lcom/google/android/icing/IcingSearchEngineImpl;I)[B
.end method

.method private static native nativePut(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeRemoveBlob(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeReportUsage(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeReset(Lcom/google/android/icing/IcingSearchEngineImpl;)[B
.end method

.method private static native nativeSearch(Lcom/google/android/icing/IcingSearchEngineImpl;[B[B[BJ)[B
.end method

.method private static native nativeSearchSuggestions(Lcom/google/android/icing/IcingSearchEngineImpl;[B)[B
.end method

.method private static native nativeSetLoggingLevel(SS)Z
.end method

.method private static native nativeSetSchema(Lcom/google/android/icing/IcingSearchEngineImpl;[BZ)[B
.end method

.method private static native nativeShouldLog(SS)Z
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
