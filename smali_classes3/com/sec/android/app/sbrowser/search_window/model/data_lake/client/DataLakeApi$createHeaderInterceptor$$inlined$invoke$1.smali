.class public final Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$createHeaderInterceptor$$inlined$invoke$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi;->createHeaderInterceptor(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)Lhd/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lhd/B;",
        "it",
        "Lhd/T;",
        "intercept",
        "(Lhd/B;)Lhd/T;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $profile$inlined:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$createHeaderInterceptor$$inlined$invoke$1;->$profile$inlined:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lhd/B;)Lhd/T;
    .locals 3
    .param p1    # Lhd/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmd/f;

    iget-object v0, p1, Lmd/f;->e:Lhd/M;

    invoke-virtual {v0}, Lhd/M;->a()Lhd/L;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lhd/L;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$createHeaderInterceptor$$inlined$invoke$1;->$profile$inlined:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeApi$Profile;->getApiKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "x-api-key"

    invoke-virtual {v0, v1, p0}, Lhd/L;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lhd/L;->b()Lhd/M;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object p0

    return-object p0
.end method
