.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile$Companion;",
        "",
        "<init>",
        "()V",
        "fromValue",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;",
        "value",
        "",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "value"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->getEntries()Llb/a;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->PRD:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    :cond_2
    return-object v0
.end method
