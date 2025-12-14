.class public Lorg/chromium/services/data_decoder/JsonSanitizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;,
        Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static checkString(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, p0}, Ljava/io/StringWriter;-><init>(I)V

    new-instance p0, Landroid/util/JsonWriter;

    invoke-direct {p0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;-><init>(I)V

    :goto_0
    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/chromium/services/data_decoder/JsonSanitizer$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextNull()V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/services/data_decoder/JsonSanitizer;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/services/data_decoder/JsonSanitizer;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_6
    invoke-virtual {v2}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->decrease()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_7
    invoke-virtual {v2}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->increaseAndCheck()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_8
    invoke-virtual {v2}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->decrease()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    goto :goto_0

    :pswitch_9
    invoke-virtual {v2}, Lorg/chromium/services/data_decoder/JsonSanitizer$StackChecker;->increaseAndCheck()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p0}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sanitize(JLjava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lorg/chromium/services/data_decoder/JsonSanitizer;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/chromium/services/data_decoder/JsonSanitizerJni;->get()Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;->onSuccess(JLjava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    invoke-static {}, Lorg/chromium/services/data_decoder/JsonSanitizerJni;->get()Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;->onError(JLjava/lang/String;)V

    return-void
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/chromium/services/data_decoder/JsonSanitizer;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/MalformedJsonException;

    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
