.class Lcom/sec/android/app/sbrowser/dump/data/TabManagerDumpData;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static dump(Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;)V
    .locals 2

    const-string v0, "TabManager:"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->increaseIndent()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Low quality bitmap is used : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/TabManagerGlobalConfigUtils;->useLowQualityBitmap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Card view type is supported : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/TabManagerGlobalConfigUtils;->supportCardViewType()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/IndentingStringWriter;->decreaseIndent()V

    return-void
.end method
